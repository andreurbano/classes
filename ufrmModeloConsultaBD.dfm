inherited frmModeloConsultaBD: TfrmModeloConsultaBD
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  Caption = 'frmModeloConsultaBD'
  ClientHeight = 354
  ClientWidth = 746
  OnCreate = FormCreate
  ExplicitWidth = 754
  ExplicitHeight = 381
  DesignSize = (
    746
    354)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConsultaBD: TPanel
    Left = 6
    Top = 64
    Width = 734
    Height = 264
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      734
      264)
    object dbgConsultaBD: TDBGridUrb
      Left = 17
      Top = 16
      Width = 701
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
    Width = 746
    Height = 19
    Panels = <
      item
        Width = 130
      end
      item
        Width = 50
      end>
    ExplicitTop = 245
    ExplicitWidth = 440
  end
  object gbxLocaliza: TGroupBox
    Left = 6
    Top = 3
    Width = 734
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
      734
      50)
    object txtLocaliza: TEdit
      Left = 16
      Top = 17
      Width = 701
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
  object dspConsultaBD: TDataSetProviderUrb
    DataSet = frmPrincipal.sqlDataSet
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
end
