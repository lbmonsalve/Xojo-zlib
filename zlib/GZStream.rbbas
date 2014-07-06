#tag Class
Protected Class GZStream
Implements Readable,Writeable
	#tag Method, Flags = &h0
		 Shared Function Append(GzipFile As FolderItem, AllowSeek As Boolean = False) As zlib.GZStream
		  ' Opens an existing gzip stream
		  If GzipFile = Nil Or GzipFile.Directory Then Raise New IOException
		  If AllowSeek Then
		    Return gzOpen(GzipFile, "ab+")
		  Else
		    Return gzOpen(GzipFile, "ab")
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Close()
		  Call zlib.gzclose(gzFile)
		  Call gzError()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(gzOpaque As Ptr)
		  gzFile = gzOpaque
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( deprecated )  Sub Constructor_(Buffer As MemoryBlock)
		  ' Doesn't work.
		  Dim bs As New BinaryStream(Buffer)
		  #If TargetWin32 Then
		    gzFile = zlib.gzdopen(bs.Handle(BinaryStream.HandleTypeWin32Handle), "rb+")
		  #else
		    gzFile = zlib.gzdopen(bs.Handle(BinaryStream.HandleTypeFileNumber), "rb+")
		  #endif
		  If gzFile = Nil Then Raise New RuntimeException
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Create(OutputFile As FolderItem, OverWrite As Boolean = False) As zlib.GZStream
		  ' Creates an empty gzip stream
		  If OutputFile = Nil Or OutputFile.Directory Then Raise New IOException
		  Dim mode As String
		  Select Case True
		  Case OutputFile.Exists And OverWrite, Not OutputFile.Exists
		    mode = "wb+"
		  Else
		    Raise New IOException
		  End Select
		  Return gzOpen(OutputFile, mode)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EOF() As Boolean
		  // Part of the Readable interface.
		  Return zlib.gzeof(gzFile)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Flush()
		  // Part of the Writeable interface.
		  ' Z_PARTIAL_FLUSH: All pending output is flushed to the output buffer, but the output is not aligned to a byte boundary.
		  ' This completes the current deflate block and follows it with an empty fixed codes block that is 10 bits long.
		  
		  If zlib.gzflush(gzFile, Z_PARTIAL_FLUSH) <> Z_OK Then
		    Call gzError()
		    Raise New RuntimeException
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function gzError() As Integer
		  mLastMsg = zlib.gzerror(gzFile, mLastError)
		  Return mLastError
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function gzOpen(GzipFile As FolderItem, Mode As String) As zlib.GZStream
		  Dim strm As Ptr = zlib.gzOpen(GzipFile.AbsolutePath, mode)
		  If strm <> Nil Then
		    Return New zlib.GZStream(strm)
		  Else
		    Raise New RuntimeException
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LastError() As Integer
		  Return mLastError
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LastErrorMessage() As String
		  If mLastMsg <> Nil Then
		    Dim mb As MemoryBlock = mLastMsg
		    Return mb.CString(0)
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Level() As Integer
		  Return mLevel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Level(Assigns NewLevel As Integer)
		  mLastError = zlib.gzsetparams(gzFile, NewLevel, Me.Strategy)
		  If mLastError = Z_OK Then
		    mLevel = NewLevel
		  Else
		    Dim err As New IOException
		    err.Message = zlib.FormatError(mLastError)
		    err.ErrorNumber = mLastError
		    Raise err
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Open(GzipFile As FolderItem, ReadWrite As Boolean) As zlib.GZStream
		  ' Opens an existing gzip stream
		  If GzipFile = Nil Or GzipFile.Directory Or Not GzipFile.Exists Then Raise New IOException
		  Dim mode As String
		  If ReadWrite Then
		    mode = "rb+"
		  Else
		    mode = "rb"
		  End If
		  Return gzOpen(GzipFile, mode)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read(Count As Integer, encoding As TextEncoding = Nil) As String
		  // Part of the Readable interface.
		  ' Reads the requested number of DEcompressed bytes from the compressed stream.
		  ' zlib will pad the data with NULLs if there is not enough bytes to read.
		  Dim mb As New MemoryBlock(Count)
		  Dim red As Integer = zlib.gzread(gzFile, mb, mb.Size)
		  Call gzError()
		  If red > 0 Then
		    Return DefineEncoding(mb.StringValue(0, mb.Size), encoding)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadError() As Boolean
		  // Part of the Readable interface.
		  Return gzError <> 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Strategy() As Integer
		  Return mStrategy
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Strategy(Assigns NewStrategy As Integer)
		  mLastError = zlib.gzsetparams(gzFile, Me.Level, NewStrategy)
		  If mLastError = Z_OK Then
		    mStrategy = NewStrategy
		  Else
		    Dim err As New IOException
		    err.Message = zlib.FormatError(mLastError)
		    err.ErrorNumber = mLastError
		    Raise err
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(text As String)
		  // Part of the Writeable interface.
		  ' Compresses the data and writes it to the stream
		  Dim mb As MemoryBlock = text
		  If zlib.gzwrite(gzFile, mb, text.LenB) <> text.LenB Then
		    Call gzError()
		    Raise New IOException
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WriteError() As Boolean
		  // Part of the Writeable interface.
		  Return gzError() <> 0
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected gzFile As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLastError As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLastMsg As Ptr
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mLevel As Integer = Z_DEFAULT_COMPRESSION
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mStrategy As Integer = Z_DEFAULT_STRATEGY
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return zlib.gzseek(gzFile, 0, SEEK_CUR)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If zlib.gzseek(gzFile, value, SEEK_SET) <> value Then
			    Raise New IOException
			  End If
			End Set
		#tag EndSetter
		Position As Integer
	#tag EndComputedProperty


	#tag Constant, Name = SEEK_CUR, Type = Double, Dynamic = False, Default = \"1", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = SEEK_SET, Type = Double, Dynamic = False, Default = \"0", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Position"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass