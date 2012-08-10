inherited frmPesquisar: TfrmPesquisar
  Left = 298
  Top = 193
  Caption = 'Pesquisar'
  ClientHeight = 315
  ClientWidth = 635
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 5
    Top = 2
    Width = 626
    Height = 312
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Filtrar'
      object DBGridUrb1: TDBGridUrb
        Left = 4
        Top = 5
        Width = 610
        Height = 275
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
    object TabSheet2: TTabSheet
      Caption = 'Impress'#227'o'
      ImageIndex = 1
      DesignSize = (
        618
        284)
      object btnVisualizar: TSpeedButton
        Left = 306
        Top = 236
        Width = 121
        Height = 35
        Anchors = [akRight, akBottom]
        Caption = 'Visualizar'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
          69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
          00FFFF00FFFF00FF646365314B62AC7D7EF6DAB6F3D5ADF2D1A5F0CE9EEFCB97
          EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080EBC080EDC180EABF
          7F9F6F60FF00FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AF2D5B1F0
          D1AAEFCFA3EECB9DEDC796EDC58FEBC188EABF82E9BD7FE9BD7FE9BD7FE9BD7F
          E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF32A0FE37A1FF106F
          E2325F8BB67D79F2D4B1F0D1AAEFCFA4EECB9DEDC796EDC58FEBC189EABF82E9
          BD7FE9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
          FF00FF37A4FE379FFF0E6DDE355F89BB7F79F2D4B0F0D1AAEFCEA3EECB9CEDC7
          95EDC58FEBC189E9BD81E9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF
          00FFFF00FFFF00FFFF00FF93656037A4FE359EFF0F6FDE35608BA67B7FF2D5B1
          F0D1AAEFCEA3EECB9CEDC796EDC590EBC189E9BF82E9BD7FE9BD7FEABF7FE7BC
          7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660F2E2D338A5FE329DFF15
          6DCE444F5BDAB8A0925D5A986660935E5B9A6663B88A74D7AB82EBC189E9BD81
          E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963F2E6
          DAFAEEDE3BABFFA1CAE78F6D6B96665FC2A38CE9DCB7FBF8CBE7DCB6BF9A899D
          6B66CB9E7BEBC189E9BD81EABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
          FF00FF9E6E64F4EAE1FBF2E6F8EADCB49291A06D66EDD4A4FFFCCAFFFFCFFFFF
          CFFFFFD5FFFFEAE3D3CC96635FD5AB82EBC188EABF82E7BB7E9F6F60FF00FFFF
          00FFFF00FFFF00FFFF00FFA37266F6EEE9FCF6EDF8EFE3A16C67C79F81F6D095
          FCF4C2FFFFCFFFFFD8FFFFEEFFFFFAFFFFFFB79387B88A73EBC48EEBC288E7BC
          809F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3F0FEFBF6FBF3EB9D
          6A64E7C28EEEB87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6DCCEAD996560
          EDC795EDC58FE9BF879F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FAF6
          F4FFFFFEFEF8F3935F5BF7D495EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFFE3FF
          FFD7F6F2C9935E5BEECB9CEEC996EAC18EA07063FF00FFFF00FFFF00FFFF00FF
          FF00FFB17E6BFAF6F4FFFFFFFFFEFB9E6B65E9C793EAA96AEFBD80FAE9B4FFFF
          D0FFFFD3FFFFD1FFFFD1E1D1B0996660EFCEA1EECB9CEBC592A07264FF00FFFF
          00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFFA4706BCBA989F8E2B5
          F0C690F0C286F7DCA5FEF3C1FEF8C6FFFFCFBB9984BB8F7EF0D1A9F0CFA3EDC9
          999D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6F4FFFFFFFFFFFFE5
          D5D5A07068EDE3E2FFF4E2EFBD80EBAB6FF0C086FBDEA3EBD9A9986760DAB89F
          F0D4AFEFD0A7CEB491896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFBF7
          F4FFFFFFFFFFFFFFFFFFD7C0BF9E6F6BC6A999EAD19EFADA9CE9C793C59D829D
          6A64D0AC9CF3DCBDE5CEAFC4B096A1927F806762FF00FFFF00FFFF00FFFF00FF
          FF00FFC58C70FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFE5D5D5A4766A9A6862935F
          5B9E6A64BD988FE0C4B5FAE9D0E0D0BAB8AB9AA79C8BA49786846964FF00FFFF
          00FFFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFBFCF7F0FBF2E9FBF2E5E9D3C49E675B98665B95655B96655B9665
          5B986859FF00FFFF00FFFF00FFFF00FFFF00FFCF9674FBF7F6FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFCF7F0FFFAEFDAC0B69F675BDAA16B
          DD984FE2903AEA8923A5686BFF00FFFF00FFFF00FFFF00FFFF00FFD49875FCF8
          F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFFFEF7DD
          C4BC9F675BEAB474EFA952F6A036A5686BFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFD49875FCF8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFDDC7C29F675BEAB273EFA751A5686BFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFD49875FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D0CE9F675BEDB572A5686BFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68CF8E68CF8E68CF8E68CF
          8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E689F675BA5686B
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object gbxRelatorios: TGroupBox
        Left = 12
        Top = 8
        Width = 594
        Height = 82
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
        Top = 103
        Width = 594
        Height = 82
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
  object dtsFiltro: TDataSource
    DataSet = cdsFiltro
    Left = 593
    Top = 36
  end
end
