#tag Window
Begin Window DemoWindow
   BackColor       =   16777215
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   1.33e+2
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   False
   Title           =   "zlib Demo"
   Visible         =   True
   Width           =   2.21e+2
   Begin Timer CompletionTimer
      Height          =   32
      Index           =   -2147483648
      Left            =   -48
      LockedInPosition=   False
      Mode            =   0
      Period          =   1
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   -14
      Width           =   32
   End
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   ""
      Enabled         =   True
      Height          =   133
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   ""
      TabDefinition   =   "Deflate\rGZip\rZip\rTAR"
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   -1
      Underline       =   ""
      Value           =   2
      Visible         =   True
      Width           =   221
      Begin PushButton InflateFileBtn
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "INFLATE a file"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   62
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   32
         Underline       =   ""
         Visible         =   True
         Width           =   97
      End
      Begin CheckBox UseRawChkBx
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Raw DEFLATE"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   62
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   76
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin PushButton DeflateFileBtn
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "DEFLATE a file"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   62
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   55
         Underline       =   ""
         Visible         =   True
         Width           =   97
      End
      Begin PushButton GUnZipFileBtn
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "GUnZip a file"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   62
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   32
         Underline       =   ""
         Visible         =   True
         Width           =   97
      End
      Begin PushButton GZipFileBtn
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "GZip a file"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   62
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   55
         Underline       =   ""
         Visible         =   True
         Width           =   97
      End
      Begin PushButton ZipRepairBtn
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Repair zip"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   62
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   78
         Underline       =   ""
         Visible         =   True
         Width           =   97
      End
      Begin PushButton UnzipFileBtn
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Unzip a file"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   62
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   32
         Underline       =   ""
         Visible         =   True
         Width           =   97
      End
      Begin PushButton ZipDirBtn
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Zip a folder"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   62
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   55
         Underline       =   ""
         Visible         =   True
         Width           =   97
      End
      Begin CheckBox UseGZipChkBx
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Use GZip"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   60
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   81
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin PushButton TARDirBtn
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "TAR a folder"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   60
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   57
         Underline       =   ""
         Visible         =   True
         Width           =   97
      End
      Begin PushButton UnTarFileBtn
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "UnTAR a file"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   60
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   34
         Underline       =   ""
         Visible         =   True
         Width           =   97
      End
      Begin PushButton ZipTestBtn
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Test zip"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   62
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   101
         Underline       =   ""
         Visible         =   True
         Width           =   97
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  #pragma Unused appQuitting
		  If mWorker <> Nil And mWorker.State <> Thread.NotRunning Then
		    If MsgBox("Would you like to cancel the current operation?", 4 + 32, "Operation incomplete") <> 6 Then Return True
		    mWorker.Kill
		    mWorker = Nil
		  End If
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub RunDeflate(Sender As Thread)
		  #pragma Unused Sender
		  Dim encoding As Integer
		  If mOption Then
		    encoding = zlib.RAW_ENCODING
		  Else
		    encoding = zlib.DEFLATE_ENCODING
		  End If
		  mResult = zlib.Deflate(mSource, mDestination, zlib.Z_DEFAULT_COMPRESSION, False, encoding)
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As zlib.zlibException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunGUnZip(Sender As Thread)
		  #pragma Unused Sender
		  mResult = zlib.GUnZip(mSource, mDestination)
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As zlib.zlibException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunGZip(Sender As Thread)
		  #pragma Unused Sender
		  mResult = zlib.GZip(mSource, mDestination)
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As zlib.zlibException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunInflate(Sender As Thread)
		  #pragma Unused Sender
		  Dim encoding As UInt32
		  If mOption Then
		    encoding = zlib.RAW_ENCODING
		  Else
		    encoding = zlib.DEFLATE_ENCODING
		  End If
		  mResult = zlib.Inflate(mSource, mDestination, False, Nil, encoding)
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As zlib.zlibException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunTAR(Sender As Thread)
		  #pragma Unused Sender
		  Dim compressionlevel As Integer
		  If mOption Then compressionlevel = 6
		  mResult = USTAR.WriteTar(mSource, mDestination, False, compressionlevel)
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As zlib.zlibException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As USTAR.TARException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunUnTAR(Sender As Thread)
		  #pragma Unused Sender
		  mUnzipped = USTAR.ReadTar(mSource, mDestination)
		  mResult = UBound(mUnzipped) > -1
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As zlib.zlibException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As USTAR.TARException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunUnZip(Sender As Thread)
		  #pragma Unused Sender
		  mUnzipped = PKZip.ReadZip(mSource, mDestination)
		  mResult = UBound(mUnzipped) > -1 Or mSource.Length = 22
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As zlib.zlibException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As PKZip.ZipException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunZip(Sender As Thread)
		  #pragma Unused Sender
		  mResult = PKZip.WriteZip(mSource, mDestination)
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As zlib.zlibException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As PKZip.ZipException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunZipRepair(Sender As Thread)
		  #pragma Unused Sender
		  mResult = PKZip.RepairZip(mSource, mDestination, SpecialFolder.Desktop.Child(mSource.Name + "_repair_log.txt"))
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As zlib.zlibException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		Exception err As PKZip.ZipException
		  mResult = False
		  mErrorCode = err.ErrorNumber
		  mErrorMsg = err.Message
		  CompletionTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunZipTest(Sender As Thread)
		  #pragma Unused Sender
		  'mResult = PKZip.TestZip(mSource)
		  
		  Try
		    Dim zip As New PKZip.ZipReader(BinaryStream.Open(mSource))
		    Do Until zip.LastError <> 0
		      Dim tmp As New MemoryBlock(0)
		      Dim nullstream As New BinaryStream(tmp)
		      nullstream.Close
		      Call zip.MoveNext(nullstream)
		    Loop
		    zip.Close
		    mResult = (zip.LastError = PKZip.ERR_END_ARCHIVE)
		    If Not mResult Then
		      mErrorCode = zip.LastError
		      mErrorMsg = PKZip.FormatError(mErrorCode)
		    End If
		  Catch Err
		    mResult = False
		    mErrorCode = Err.ErrorNumber
		    mErrorMsg = Err.Message
		  End Try
		  
		  CompletionTimer.Mode = Timer.ModeSingle
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ToggleLockUI()
		  DeflateFileBtn.Enabled = Not DeflateFileBtn.Enabled
		  GUnZipFileBtn.Enabled = Not GUnZipFileBtn.Enabled
		  GZipFileBtn.Enabled = Not GZipFileBtn.Enabled
		  InflateFileBtn.Enabled = Not InflateFileBtn.Enabled
		  UnzipFileBtn.Enabled = Not UnzipFileBtn.Enabled
		  ZipDirBtn.Enabled = Not ZipDirBtn.Enabled
		  ZipRepairBtn.Enabled = Not ZipRepairBtn.Enabled
		  UseRawChkBx.Enabled = Not UseRawChkBx.Enabled
		  UseGZipChkBx.Enabled = Not UseGZipChkBx.Enabled
		  TARDirBtn.Enabled = Not TARDirBtn.Enabled
		  UnTarFileBtn.Enabled = Not UnTarFileBtn.Enabled
		  ZipTestBtn.Enabled = Not ZipTestBtn.Enabled
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mDestination As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mErrorCode As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mErrorMsg As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLockUI As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mOption As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mResult As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSource As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUnzipped() As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mWorker As Thread
	#tag EndProperty


#tag EndWindowCode

#tag Events CompletionTimer
	#tag Event
		Sub Action()
		  If UBound(mUnzipped) = -1 Then
		    If Not mResult Then Call MsgBox("Error number " + Str(mErrorCode) + ": " + mErrorMsg, 16, "Error") Else MsgBox("Success!")
		    
		  Else
		    MsgBox("Extracted " + Format(UBound(mUnzipped) + 1, "###,##0") + " items to " + mDestination.AbsolutePath)
		  End If
		  mWorker = Nil
		  ReDim mUnzipped(-1)
		  Self.Title = "zlib Demo"
		  mErrorCode = 0
		  mErrorMsg = ""
		  ToggleLockUI()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InflateFileBtn
	#tag Event
		Sub Action()
		  If mWorker <> Nil Then Return
		  mSource = GetOpenFolderItem("")
		  If mSource = Nil Then Return
		  Dim name As String = mSource.Name
		  If Right(name, 2) = ".z" Then name = Left(name, name.Len - 2)
		  mDestination = GetSaveFolderItem("", name)
		  If mDestination = Nil Then Return
		  ToggleLockUI()
		  mOption = UseRawChkBx.Value
		  Self.Title = "Inflating..."
		  mWorker = New Thread
		  AddHandler mWorker.Run, WeakAddressOf RunInflate
		  mWorker.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeflateFileBtn
	#tag Event
		Sub Action()
		  If mWorker <> Nil Then Return
		  mSource = GetOpenFolderItem("")
		  If mSource = Nil Then Return
		  mDestination = GetSaveFolderItem(FileTypes1.ApplicationXCompress, mSource.Name + ".z")
		  If mDestination = Nil Then Return
		  ToggleLockUI()
		  mOption = UseRawChkBx.Value
		  Self.Title = "Deflating..."
		  mWorker = New Thread
		  AddHandler mWorker.Run, WeakAddressOf RunDeflate
		  mWorker.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GUnZipFileBtn
	#tag Event
		Sub Action()
		  If mWorker <> Nil Then Return
		  mSource = GetOpenFolderItem(FileTypes1.ApplicationXGzip)
		  If mSource = Nil Then Return
		  Dim name As String = mSource.Name
		  If Right(name, 3) = ".gz" Then name = Left(name, name.Len - 3)
		  mDestination = GetSaveFolderItem("", name)
		  If mDestination = Nil Then Return
		  Self.Title = "GUnZipping..."
		  ToggleLockUI()
		  mWorker = New Thread
		  AddHandler mWorker.Run, WeakAddressOf RunGUnZip
		  mWorker.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GZipFileBtn
	#tag Event
		Sub Action()
		  If mWorker <> Nil Then Return
		  mSource = GetOpenFolderItem("")
		  If mSource = Nil Then Return
		  mDestination = GetSaveFolderItem(FileTypes1.ApplicationXGzip, mSource.Name + ".gz")
		  If mDestination = Nil Then Return
		  Self.Title = "GZipping..."
		  ToggleLockUI()
		  Self.Title = "zlib Demo - GZipping..."
		  mWorker = New Thread
		  AddHandler mWorker.Run, WeakAddressOf RunGZip
		  mWorker.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ZipRepairBtn
	#tag Event
		Sub Action()
		  If mWorker <> Nil Then Return
		  mSource = GetOpenFolderItem(FileTypes1.ApplicationZip)
		  If mSource = Nil Then Return
		  mDestination = GetSaveFolderItem(FileTypes1.ApplicationZip, mSource.Name + "_repared.zip")
		  If mDestination = Nil Then Return
		  Self.Title = "Repairing..."
		  ToggleLockUI()
		  mWorker = New Thread
		  AddHandler mWorker.Run, WeakAddressOf RunZipRepair
		  mWorker.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UnzipFileBtn
	#tag Event
		Sub Action()
		  If mWorker <> Nil Then Return
		  mSource = GetOpenFolderItem(FileTypes1.ApplicationZip)
		  If mSource = Nil Then Return
		  mDestination = SelectFolder()
		  If mDestination = Nil Then Return
		  If mDestination.Count <> 0 And MsgBox("The target directory is not empty. Proceed with extraction?", 4 + 48, "Destination is not empty") <> 6 Then Return
		  Self.Title = "Unzipping..."
		  ToggleLockUI()
		  Self.Title = "zlib Demo - Unzipping..."
		  mWorker = New Thread
		  AddHandler mWorker.Run, WeakAddressOf RunUnzip
		  mWorker.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ZipDirBtn
	#tag Event
		Sub Action()
		  If mWorker <> Nil Then Return
		  mSource = SelectFolder()
		  If mSource = Nil Then Return
		  mDestination = GetSaveFolderItem(FileTypes1.ApplicationZip, mSource.Name + ".zip")
		  If mDestination = Nil Then Return
		  ToggleLockUI()
		  Self.Title = "zlib Demo - Zipping..."
		  mWorker = New Thread
		  AddHandler mWorker.Run, WeakAddressOf RunZip
		  mWorker.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UseGZipChkBx
	#tag Event
		Sub Open()
		  Me.Enabled = zlib.IsAvailable
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TARDirBtn
	#tag Event
		Sub Action()
		  If mWorker <> Nil Then Return
		  mSource = SelectFolder()
		  If mSource = Nil Then Return
		  If UseGZipChkBx.Value Then
		    mDestination = GetSaveFolderItem(FileTypes1.ApplicationTarGzip, mSource.Name + ".tgz")
		    mOption = True
		  Else
		    mDestination = GetSaveFolderItem(FileTypes1.ApplicationXTar, mSource.Name + ".tar")
		    mOption = False
		  End If
		  If mDestination = Nil Then Return
		  ToggleLockUI()
		  Self.Title = "Tarring (no feathers)..."
		  mWorker = New Thread
		  AddHandler mWorker.Run, WeakAddressOf RunTAR
		  mWorker.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UnTarFileBtn
	#tag Event
		Sub Action()
		  If mWorker <> Nil Then Return
		  Dim types As String = FileTypes1.ApplicationXTar
		  If zlib.IsAvailable Then types = types + ";" + FileTypes1.ApplicationTarGzip
		  mSource = GetOpenFolderItem(types)
		  If mSource = Nil Then Return
		  mDestination = SelectFolder()
		  If mDestination = Nil Then Return
		  If mDestination.Count <> 0 And MsgBox("The target directory is not empty. Proceed with extraction?", 4 + 48, "Destination is not empty") <> 6 Then Return
		  ToggleLockUI()
		  Self.Title = "Untarring..."
		  mWorker = New Thread
		  AddHandler mWorker.Run, WeakAddressOf RunUnTAR
		  mWorker.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ZipTestBtn
	#tag Event
		Sub Action()
		  If mWorker <> Nil Then Return
		  mSource = GetOpenFolderItem(FileTypes1.ApplicationZip)
		  If mSource = Nil Then Return
		  Self.Title = "Testing..."
		  ToggleLockUI()
		  mWorker = New Thread
		  AddHandler mWorker.Run, WeakAddressOf RunZipTest
		  mWorker.Run
		End Sub
	#tag EndEvent
#tag EndEvents
