object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 587
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object panelRailFence: TPanel
    Left = 0
    Top = 196
    Width = 832
    Height = 195
    Align = alClient
    TabOrder = 0
    object LabelRail: TLabel
      Left = 320
      Top = 0
      Width = 195
      Height = 16
      Caption = #1046#1077#1083#1077#1079#1085#1086#1076#1086#1088#1086#1078#1085#1072#1103' '#1080#1079#1075#1086#1088#1086#1076#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnDownloadRail: TBitBtn
      Left = 16
      Top = 75
      Width = 177
      Height = 33
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1089#1093#1086#1076#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnDownloadRailClick
    end
    object btnCipherRail: TBitBtn
      Left = 16
      Top = 114
      Width = 177
      Height = 33
      Caption = #1047#1072#1096#1080#1092#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCipherRailClick
    end
    object btnDecipherRail: TBitBtn
      Left = 16
      Top = 157
      Width = 177
      Height = 33
      Caption = #1044#1077#1096#1080#1092#1088#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnDecipherRailClick
    end
    object editKeyRail: TEdit
      Left = 136
      Top = 26
      Width = 169
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object btnKeyRail: TBitBtn
      Left = 16
      Top = 26
      Width = 91
      Height = 25
      Caption = #1042#1074#1077#1089#1090#1080' '#1082#1083#1102#1095
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnKeyRailClick
    end
    object memDownloadRail: TMemo
      Left = 224
      Top = 75
      Width = 585
      Height = 33
      TabOrder = 5
    end
    object memCipherRail: TMemo
      Left = 224
      Top = 114
      Width = 585
      Height = 33
      TabOrder = 6
    end
    object memDecipherRail: TMemo
      Left = 224
      Top = 156
      Width = 585
      Height = 33
      TabOrder = 7
    end
  end
  object panelVigener: TPanel
    Left = 0
    Top = 391
    Width = 832
    Height = 196
    Align = alBottom
    TabOrder = 1
    object Label3: TLabel
      Left = 352
      Top = 0
      Width = 137
      Height = 16
      Caption = #1040#1083#1075#1086#1088#1080#1090#1084' '#1042#1080#1078#1077#1085#1077#1088#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object editKeyVig: TEdit
      Left = 136
      Top = 24
      Width = 177
      Height = 21
      TabOrder = 0
    end
    object btnDecipherVIG: TBitBtn
      Left = 16
      Top = 159
      Width = 177
      Height = 33
      Caption = #1044#1077#1096#1080#1092#1088#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnDecipherVIGClick
    end
    object dtnCipherVIG: TBitBtn
      Left = 16
      Top = 112
      Width = 177
      Height = 33
      Caption = #1047#1072#1096#1080#1092#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = dtnCipherVIGClick
    end
    object btnDownloadVIG: TBitBtn
      Left = 16
      Top = 64
      Width = 177
      Height = 33
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1089#1093#1086#1076#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnDownloadVIGClick
    end
    object btnKeyVIG: TBitBtn
      Left = 16
      Top = 24
      Width = 91
      Height = 25
      Caption = #1042#1074#1077#1089#1090#1080' '#1082#1083#1102#1095
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnKeyVIGClick
    end
    object memDownloadVIG: TMemo
      Left = 224
      Top = 64
      Width = 585
      Height = 33
      TabOrder = 5
    end
    object memDecipherVIG: TMemo
      Left = 224
      Top = 160
      Width = 585
      Height = 33
      TabOrder = 6
    end
    object memCipherVIG: TMemo
      Left = 224
      Top = 112
      Width = 585
      Height = 33
      TabOrder = 7
    end
  end
  object panelStolbMethod: TPanel
    Left = 0
    Top = 0
    Width = 832
    Height = 196
    Align = alTop
    TabOrder = 2
    object LabeStolb: TLabel
      Left = 352
      Top = 0
      Width = 129
      Height = 16
      Caption = #1057#1090#1086#1083#1073#1094#1086#1074#1099#1081' '#1084#1077#1090#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object editKeyStolb: TEdit
      Left = 136
      Top = 24
      Width = 177
      Height = 21
      TabOrder = 0
    end
    object btnDecipherStolb: TBitBtn
      Left = 16
      Top = 156
      Width = 177
      Height = 33
      Caption = #1044#1077#1096#1080#1092#1088#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnDecipherStolbClick
    end
    object btnCipherStolb: TBitBtn
      Left = 16
      Top = 111
      Width = 177
      Height = 33
      Caption = #1047#1072#1096#1080#1092#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnCipherStolbClick
    end
    object btnDownloadStolb: TBitBtn
      Left = 16
      Top = 72
      Width = 177
      Height = 33
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1089#1093#1086#1076#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnDownloadStolbClick
    end
    object btnKeyStolb: TBitBtn
      Left = 16
      Top = 24
      Width = 91
      Height = 25
      Caption = #1042#1074#1077#1089#1090#1080' '#1082#1083#1102#1095
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnKeyStolbClick
    end
    object memDownloadStolb: TMemo
      Left = 224
      Top = 72
      Width = 585
      Height = 33
      TabOrder = 5
    end
    object memDecipherStolb: TMemo
      Left = 224
      Top = 155
      Width = 585
      Height = 34
      TabOrder = 6
    end
    object memCipherStolb: TMemo
      Left = 224
      Top = 111
      Width = 585
      Height = 33
      TabOrder = 7
    end
  end
end
