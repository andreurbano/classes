inherited frmPesqWizard: TfrmPesqWizard
  Left = 285
  Top = 213
  Width = 644
  Height = 326
  Caption = 'Pesquisar'
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnProximo: TSpeedButton
    Left = 458
    Top = 265
  end
  inherited btnFinalizar: TSpeedButton
    Left = 544
    Top = 265
  end
  inherited btnAnterior: TSpeedButton
    Left = 372
    Top = 265
  end
  inherited pgcMain: TPageControl
    Width = 619
    Height = 249
    ActivePage = tshFiltrar
    object tshFiltrar: TTabSheet
      Caption = 'Filtrar'
      object DBGridUrb1: TDBGridUrb
        Left = 0
        Top = 0
        Width = 611
        Height = 218
        Align = alClient
        DataSource = dtsFiltro
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        ClientDataSet = cdsFiltro
        Columns = <
          item
            Expanded = False
            FieldName = 'CampoDesc'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CondicaoDesc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'E_OU_Desc'
            Visible = True
          end>
      end
    end
    object tshListagem: TTabSheet
      Caption = 'Listagem'
      ImageIndex = 1
      object DBGridUrb2: TDBGridUrb
        Left = 0
        Top = 0
        Width = 611
        Height = 218
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tshImpressao: TTabSheet
      Caption = 'Impress'#227'o'
      ImageIndex = 2
      DesignSize = (
        611
        218)
      object gbxRelatorios: TGroupBox
        Left = 12
        Top = 14
        Width = 594
        Height = 82
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Selecione um Relat'#243'rio'
        TabOrder = 0
        DesignSize = (
          594
          82)
        object ltbRelatorios: TListBox
          Left = 9
          Top = 18
          Width = 577
          Height = 55
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          Items.Strings = (
            'Diplomas'
            'Etiquetas'
            'Listagem')
          TabOrder = 0
        end
      end
      object gbxTitulo: TGroupBox
        Left = 12
        Top = 111
        Width = 594
        Height = 82
        Anchors = [akLeft, akTop, akRight]
        Caption = 'T'#237'tulo e Sub-T'#237'tulo'
        TabOrder = 1
        object Label1: TLabel
          Left = 11
          Top = 32
          Width = 28
          Height = 13
          Caption = 'T'#237'tulo'
        end
        object Label2: TLabel
          Left = 11
          Top = 56
          Width = 50
          Height = 13
          Caption = 'Sub-T'#237'tulo'
        end
        object Edit1: TEdit
          Left = 68
          Top = 24
          Width = 518
          Height = 21
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 68
          Top = 48
          Width = 518
          Height = 21
          TabOrder = 1
        end
      end
    end
  end
  object cdsFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 564
    Top = 36
    object cdsFiltroCampoNome: TStringField
      DisplayWidth = 13
      FieldName = 'CampoNome'
      Visible = False
      Size = 40
    end
    object cdsFiltroCampoDesc: TStringField
      DisplayLabel = 'Campo'
      FieldKind = fkLookup
      FieldName = 'CampoDesc'
      LookupDataSet = cdsCampos
      LookupKeyFields = 'Nome'
      LookupResultField = 'Descricao'
      KeyFields = 'CampoNome'
      Size = 40
      Lookup = True
    end
    object cdsFiltroCondicao: TStringField
      FieldName = 'Condicao'
      Visible = False
    end
    object cdsFiltroCondicaoDesc: TStringField
      DisplayLabel = 'Condi'#231#227'o'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'CondicaoDesc'
      LookupDataSet = cdsCondicoes
      LookupKeyFields = 'Valor'
      LookupResultField = 'Descricao'
      KeyFields = 'Condicao'
      Size = 30
      Lookup = True
    end
    object cdsFiltroValor: TStringField
      FieldName = 'Valor'
      Size = 50
    end
    object cdsFiltroE_OU: TStringField
      FieldName = 'E_OU'
      Size = 3
    end
    object cdsFiltroE_OU_Desc: TStringField
      DisplayLabel = 'E / OU'
      FieldKind = fkLookup
      FieldName = 'E_OU_Desc'
      LookupDataSet = cdsE_OU
      LookupKeyFields = 'E_OU'
      LookupResultField = 'E_OU_Desc'
      KeyFields = 'E_OU'
      Size = 3
      Lookup = True
    end
  end
  object dtsFiltro: TDataSource
    DataSet = cdsFiltro
    Left = 593
    Top = 36
  end
  object cdsCampos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 564
    Top = 64
    object cdsCamposNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object cdsCamposDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
  end
  object cdsCondicoes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 564
    Top = 92
    object cdsCondicoesDescricao: TStringField
      DisplayWidth = 30
      FieldName = 'Descricao'
      Size = 30
    end
    object cdsCondicoesValor: TStringField
      FieldName = 'Valor'
    end
  end
  object cdsE_OU: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 564
    Top = 120
    object cdsE_OUE_OU: TStringField
      FieldName = 'E_OU'
      Size = 3
    end
    object cdsE_OUE_OU_Desc: TStringField
      FieldName = 'E_OU_Desc'
      Size = 3
    end
  end
end
