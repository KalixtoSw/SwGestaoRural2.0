object FrmMensagemSistema: TFrmMensagemSistema
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 240
  BorderStyle = bsNone
  Caption = 'FrmMensagemSistema'
  ClientHeight = 250
  ClientWidth = 600
  Color = 14067595
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTitulo: TJvPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 14067595
    ParentBackground = False
    TabOrder = 0
    object GrdntPnlTitulo: TJvGradient
      Left = 0
      Top = 39
      Width = 600
      Height = 2
      Align = alBottom
      StartColor = 8279822
      EndColor = 4671041
      ExplicitTop = 16
    end
    object LblTituloJanela: TLabel
      Left = 0
      Top = 0
      Width = 600
      Height = 39
      Align = alClient
      AutoSize = False
      Caption = 'TITULO DA JANELA'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4671041
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitTop = 22
      ExplicitWidth = 40
      ExplicitHeight = 17
    end
  end
  object PnlBtsNav: TJvPanel
    Left = 0
    Top = 202
    Width = 600
    Height = 48
    Align = alBottom
    BevelOuter = bvNone
    Color = 10780674
    ParentBackground = False
    TabOrder = 1
    object GrdntPnlBtsNav: TJvGradient
      Left = 0
      Top = 0
      Width = 600
      Height = 2
      Align = alTop
      StartColor = 4671041
      EndColor = 8279822
    end
    object PnlCorpoBts: TJvPanel
      Left = 360
      Top = 2
      Width = 240
      Height = 46
      Transparent = True
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object pnlBtNao: TJvPanel
        Left = 0
        Top = 0
        Width = 120
        Height = 46
        Cursor = crHandPoint
        FlatBorderColor = clSilver
        Align = alLeft
        BevelOuter = bvNone
        Color = 9868950
        ParentBackground = False
        TabOrder = 0
        object shpBtnNao: TShape
          Left = 0
          Top = 0
          Width = 120
          Height = 46
          Align = alClient
          ExplicitLeft = 15
          ExplicitTop = 20
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object BtNao: TJvSpeedButton
          Left = 0
          Top = 0
          Width = 120
          Height = 46
          Cursor = crHandPoint
          Align = alClient
          Caption = 'N'#195'O  ( ESC )'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15132390
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Segoe UI'
          HotTrackFont.Style = []
          ParentFont = False
          OnClick = BtNaoClick
          ExplicitTop = 4
        end
      end
      object pnlBtSim: TJvPanel
        Left = 120
        Top = 0
        Width = 120
        Height = 46
        Cursor = crHandPoint
        Align = alLeft
        BevelOuter = bvNone
        Color = 15000804
        ParentBackground = False
        TabOrder = 1
        object shpBtnSim: TShape
          Left = 0
          Top = 0
          Width = 120
          Height = 46
          Align = alClient
          ExplicitLeft = 15
          ExplicitTop = 20
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object BtSim: TJvSpeedButton
          Left = 0
          Top = 0
          Width = 120
          Height = 46
          Cursor = crHandPoint
          Align = alClient
          Caption = 'SIM  ( ENTER )'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9323579
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Segoe UI'
          HotTrackFont.Style = []
          ParentFont = False
          OnClick = BtSimClick
          ExplicitLeft = -55
          ExplicitTop = 5
          ExplicitWidth = 200
          ExplicitHeight = 41
        end
      end
    end
  end
  object PnlMensagem: TJvPanel
    Left = 0
    Top = 41
    Width = 600
    Height = 161
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 600
      Height = 161
      Align = alClient
      ExplicitTop = -4
      ExplicitHeight = 211
    end
    object ImgMensagem: TImage
      Left = 30
      Top = 40
      Width = 64
      Height = 64
    end
    object LbTituloMensagem: TLabel
      Left = 100
      Top = 40
      Width = 190
      Height = 19
      Caption = 'TITULO DA MENSAGEM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4671041
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MmCorpoMensagem: TMemo
      Left = 100
      Top = 65
      Width = 481
      Height = 89
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 4671041
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 0
    end
  end
end
