object DeputyProcMgr: TDeputyProcMgr
  Left = 0
  Top = 0
  Caption = 'DeputyProcMgr'
  ClientHeight = 634
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object sbMain: TStatusBar
    Left = 0
    Top = 615
    Width = 815
    Height = 19
    Panels = <
      item
        Text = 'Idle'
        Width = 50
      end>
  end
  object pcWorkarea: TPageControl
    Left = 0
    Top = 41
    Width = 815
    Height = 574
    ActivePage = tsStatus
    Align = alClient
    TabOrder = 1
    object tsParameters: TTabSheet
      Caption = 'Parameters'
      object lbMgrParams: TListBox
        Left = 0
        Top = 0
        Width = 807
        Height = 544
        Align = alClient
        ItemHeight = 15
        TabOrder = 0
      end
    end
    object tsStatus: TTabSheet
      Caption = 'Status'
      ImageIndex = 1
      object memoLeak: TMemo
        Left = 0
        Top = 0
        Width = 807
        Height = 447
        Align = alClient
        Lines.Strings = (
          'memoLeak')
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object lbMgrStatus: TListBox
        Left = 0
        Top = 447
        Width = 807
        Height = 97
        Align = alBottom
        ItemHeight = 15
        TabOrder = 1
      end
    end
  end
  object FlowPanel1: TFlowPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 41
    Align = alTop
    Caption = 'FlowPanel1'
    TabOrder = 2
    object btnForceTerminate: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 25
      Caption = 'Force Terminate'
      TabOrder = 0
      OnClick = btnForceTerminateClick
    end
  end
  object gpCleanStatus: TGridPanel
    Left = 328
    Top = 240
    Width = 185
    Height = 41
    Caption = 'gpCleanStatus'
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = lblLCHdr
        Row = 0
      end
      item
        Column = 1
        Control = lblLoopCount
        Row = 0
      end
      item
        Column = 1
        Control = btnAbortCleanup
        Row = 1
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ShowCaption = False
    TabOrder = 3
    object lblLCHdr: TLabel
      Left = 1
      Top = 1
      Width = 92
      Height = 20
      Align = alClient
      Alignment = taRightJustify
      Caption = 'Loop Count ='
      ExplicitLeft = 14
      ExplicitTop = 3
      ExplicitWidth = 74
      ExplicitHeight = 15
    end
    object lblLoopCount: TLabel
      Left = 93
      Top = 1
      Width = 91
      Height = 20
      Align = alClient
      Caption = 'lblLoopCount'
      ExplicitLeft = 121
      ExplicitTop = 3
      ExplicitWidth = 73
      ExplicitHeight = 15
    end
    object btnAbortCleanup: TButton
      Left = 93
      Top = 21
      Width = 91
      Height = 19
      Align = alClient
      Caption = 'Abort Cleanup'
      TabOrder = 0
      OnClick = btnAbortCleanupClick
      ExplicitLeft = 9
      ExplicitTop = 16
      ExplicitWidth = 75
      ExplicitHeight = 25
    end
  end
  object tmrCleanupStatus: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrCleanupStatusTimer
    Left = 400
    Top = 328
  end
end
