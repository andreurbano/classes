inherited frmModeloConsultaBD: TfrmModeloConsultaBD
  Left = 323
  Top = 298
  Width = 740
  Height = 381
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  Caption = 'frmModeloConsultaBD'
  OnCreate = FormCreate
  DesignSize = (
    732
    354)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConsultaBD: TPanel
    Left = 7
    Top = 64
    Width = 640
    Height = 264
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      640
      264)
    object dbgConsultaBD: TDBGridUrb
      Left = 17
      Top = 16
      Width = 607
      Height = 232
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtsConsultaBD
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      ClientDataSet = cdsConsultaBD
    end
  end
  object stbConsultaBD: TStatusBar
    Left = 0
    Top = 335
    Width = 732
    Height = 19
    Panels = <
      item
        Width = 130
      end
      item
        Width = 50
      end>
  end
  object gbxLocaliza: TGroupBox
    Left = 7
    Top = 3
    Width = 640
    Height = 50
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Digite o texto para localiza'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      640
      50)
    object txtLocaliza: TEdit
      Left = 16
      Top = 17
      Width = 607
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = txtLocalizaChange
    end
  end
  object pnlBotoes: TPanel
    Left = 653
    Top = 8
    Width = 74
    Height = 320
    Anchors = [akTop, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object btnRelatorio: TSpeedButton
      Left = 6
      Top = 8
      Width = 62
      Height = 22
      Caption = '&Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnAtualizar: TSpeedButton
      Left = 6
      Top = 34
      Width = 62
      Height = 22
      Caption = 'A&tualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAtualizarClick
    end
  end
  object dspConsultaBD: TDataSetProviderUrb
    DataSet = sqlConsultaBD
    Options = [poAllowCommandText]
    Left = 222
    Top = 2
  end
  object cdsConsultaBD: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultaBD'
    Left = 250
    Top = 2
  end
  object dtsConsultaBD: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsConsultaBD
    Left = 278
    Top = 2
  end
  object sqlConsultaBD: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 194
    Top = 2
  end
end
