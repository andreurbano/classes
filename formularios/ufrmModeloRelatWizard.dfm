inherited frmModeloRelatWizard: TfrmModeloRelatWizard
  Left = 292
  Top = 82
  Caption = 'Fechamento Mensal de Retirada de Res'#237'duo'
  ClientHeight = 457
  ClientWidth = 458
  ExplicitWidth = 474
  ExplicitHeight = 495
  DesignSize = (
    458
    457)
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnProximo: TSpeedButton
    Left = 278
    Top = 418
    ExplicitLeft = 282
    ExplicitTop = 422
  end
  inherited btnFinalizar: TSpeedButton
    Left = 367
    Top = 417
    OnClick = btnFinalizarClick
    ExplicitLeft = 367
    ExplicitTop = 417
  end
  inherited btnAnterior: TSpeedButton
    Left = 192
    Top = 418
    ExplicitLeft = 196
    ExplicitTop = 422
  end
  inherited pgcMain: TPageControl
    Left = 9
    Top = 7
    Width = 439
    Height = 404
    ActivePage = tbsOpcoes
    MultiLine = True
    Style = tsTabs
    ExplicitLeft = 9
    ExplicitTop = 7
    ExplicitWidth = 439
    ExplicitHeight = 404
    object tbsOpcoes: TTabSheet
      Caption = 'Op'#231#245'es'
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        431
        394)
      object gbxPeriodo: TGroupBox
        Left = 10
        Top = 155
        Width = 410
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Per'#237'odo Manifesto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object lblDataInicial: TLabel
          Left = 13
          Top = 25
          Width = 66
          Height = 13
          Caption = 'Data Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblDataFinal: TLabel
          Left = 270
          Top = 25
          Width = 59
          Height = 13
          Caption = 'Data Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txtDataInicial: TMaskEdit
          Left = 85
          Top = 17
          Width = 65
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
        end
        object txtDataFinal: TMaskEdit
          Left = 334
          Top = 17
          Width = 65
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object rdgTipoManifesto: TRadioGroup
        Left = 10
        Top = 265
        Width = 410
        Height = 49
        HelpType = htKeyword
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Tipo Manifesto'
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 2
        Items.Strings = (
          'Sem CDF'
          'Com CDF'
          'Todos')
        ParentFont = False
        TabOrder = 4
      end
      object gbxRelatorios: TGroupBox
        Left = 10
        Top = 2
        Width = 307
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Selecione um Relat'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          307
          49)
        object cbxRelatorios: TComboBox
          Left = 13
          Top = 17
          Width = 282
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 3
          ParentFont = False
          TabOrder = 0
          Text = 'Fechamento Mensal de Retirada de Res'#237'duo'
          Items.Strings = (
            'Listagem de Manifestos de Res'#237'duos'
            'Pagamentos de Sucata'
            'Pagamento de Recicl'#225'veis'
            'Fechamento Mensal de Retirada de Res'#237'duo')
        end
      end
      object gbxAlteraResp: TGroupBox
        Left = 10
        Top = 325
        Width = 410
        Height = 53
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        DesignSize = (
          410
          53)
        object chkAlteraResp: TCheckBox
          Left = 8
          Top = 0
          Width = 136
          Height = 17
          Caption = 'Altera Respons'#225'vel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = chkAlteraRespClick
        end
        object dblResponsavel: TDBLookupComboBox
          Left = 13
          Top = 20
          Width = 385
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = cl3DLight
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_Responsavel'
          ListField = 'Nome'
          ListSource = dtsResponsavel
          ParentFont = False
          TabOrder = 1
        end
      end
      object chkMostraProcedencia: TCheckBox
        Left = 10
        Top = 382
        Width = 146
        Height = 13
        Alignment = taLeftJustify
        Caption = 'Mostra Proced'#234'ncia'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 6
      end
      object gbxDataRelat: TGroupBox
        Left = 323
        Top = 2
        Width = 97
        Height = 49
        Anchors = [akTop, akRight]
        Caption = 'Dt. Rela'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object txtDatatRelat: TMaskEdit
          Left = 16
          Top = 17
          Width = 65
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
        end
      end
      object GroupBox2: TGroupBox
        Left = 10
        Top = 209
        Width = 410
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Per'#237'odo Protocolo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label1: TLabel
          Left = 13
          Top = 25
          Width = 66
          Height = 13
          Caption = 'Data Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 270
          Top = 25
          Width = 59
          Height = 13
          Caption = 'Data Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txtDataInicialProtoc: TMaskEdit
          Left = 85
          Top = 17
          Width = 65
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
        end
        object txtDataFinalProtoc: TMaskEdit
          Left = 334
          Top = 17
          Width = 65
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
      end
    end
    object tbsEmpGeradora: TTabSheet
      Caption = 'Empresa Geradora'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbxEmpresaGeradora: TGroupBox
        Left = 0
        Top = 0
        Width = 431
        Height = 394
        Align = alClient
        Caption = 'Empresa Geradora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          431
          394)
        object btnGeradoraIncluir: TSpeedButton
          Left = 205
          Top = 165
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnGeradoraIncluirClick
          ExplicitLeft = 207
        end
        object btnGeradoraIncluirTodos: TSpeedButton
          Left = 205
          Top = 182
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnGeradoraIncluirTodosClick
          ExplicitLeft = 207
        end
        object btnGeradoraExcluir: TSpeedButton
          Left = 205
          Top = 199
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '<'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnGeradoraExcluirClick
          ExplicitLeft = 207
        end
        object btnGeradoraExcluirTodos: TSpeedButton
          Left = 205
          Top = 216
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '<<'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnGeradoraExcluirTodosClick
          ExplicitLeft = 207
        end
        object lstEmpresaGeradoraOrigem: TDBLookupListBox
          Left = 8
          Top = 15
          Width = 194
          Height = 342
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_Fantasia'
          ListField = 'Descricao'
          ListSource = dtsEmpresaGeradoraOrigem
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object lstEmpresaGeradoraDestino: TDBLookupListBox
          Left = 228
          Top = 15
          Width = 194
          Height = 342
          Anchors = [akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_Fantasia'
          ListField = 'Descricao'
          ListSource = dtsEmpresaGeradoraDestino
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
      end
    end
    object tbsEmpReceptora: TTabSheet
      Caption = 'Empresa Receptora'
      ImageIndex = 2
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbxEmpresaReceptora: TGroupBox
        Left = 0
        Top = 0
        Width = 431
        Height = 394
        Align = alClient
        Caption = 'Empresa Receptora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          431
          394)
        object btnReceptoraIncluir: TSpeedButton
          Left = 205
          Top = 165
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnReceptoraIncluirClick
          ExplicitLeft = 207
        end
        object btnReceptoraIncluirTodos: TSpeedButton
          Left = 205
          Top = 182
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnReceptoraIncluirTodosClick
          ExplicitLeft = 207
        end
        object btnReceptoraExcluir: TSpeedButton
          Left = 205
          Top = 199
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '<'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnReceptoraExcluirClick
          ExplicitLeft = 207
        end
        object btnReceptoraExcluirTodos: TSpeedButton
          Left = 205
          Top = 216
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '<<'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnReceptoraExcluirTodosClick
          ExplicitLeft = 207
        end
        object lstEmpresaReceptoraDestino: TDBLookupListBox
          Left = 227
          Top = 15
          Width = 194
          Height = 342
          Anchors = [akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_Empresa'
          ListField = 'RazaoSocial'
          ListSource = dtsEmpresaReceptoraDestino
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object lstEmpresaReceptoraOrigem: TDBLookupListBox
          Left = 10
          Top = 15
          Width = 194
          Height = 342
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_Empresa'
          ListField = 'RazaoSocial'
          ListSource = dtsEmpresaReceptoraOrigem
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
    end
    object tbsSituacao: TTabSheet
      Caption = 'Situa'#231#227'o do Manifesto'
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbxSituacaoManifesto: TGroupBox
        Left = 0
        Top = 0
        Width = 431
        Height = 394
        Align = alClient
        Caption = 'Situa'#231#227'o do Manifesto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          431
          394)
        object btnSituacaoIncluir: TSpeedButton
          Left = 205
          Top = 165
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnSituacaoIncluirClick
          ExplicitLeft = 207
        end
        object btnSituacaoIncluirTodos: TSpeedButton
          Left = 205
          Top = 182
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnSituacaoIncluirTodosClick
          ExplicitLeft = 207
        end
        object btnSituacaoExcluir: TSpeedButton
          Left = 205
          Top = 199
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '<'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnSituacaoExcluirClick
          ExplicitLeft = 207
        end
        object btnSituacaoExcluirTodos: TSpeedButton
          Left = 205
          Top = 216
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '<<'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnSituacaoExcluirTodosClick
          ExplicitLeft = 207
        end
        object lstSituacaoOrigem: TDBLookupListBox
          Left = 10
          Top = 15
          Width = 194
          Height = 342
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_Situacao'
          ListField = 'Descricao'
          ListSource = dtsSituacaoOrigem
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object lstSituacaoDestino: TDBLookupListBox
          Left = 227
          Top = 15
          Width = 194
          Height = 342
          Anchors = [akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_Situacao'
          ListField = 'Descricao'
          ListSource = dtsSituacaoDestino
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
      end
    end
    object tbsResiduo: TTabSheet
      Caption = 'Res'#237'duo'
      ImageIndex = 4
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbxResiduo: TGroupBox
        Left = 0
        Top = 0
        Width = 431
        Height = 394
        Align = alClient
        Caption = 'Res'#237'duo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          431
          394)
        object btnResiduoIncluir: TSpeedButton
          Left = 205
          Top = 165
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnResiduoIncluirClick
          ExplicitLeft = 207
        end
        object btnResiduoIncluirTodos: TSpeedButton
          Left = 205
          Top = 182
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnResiduoIncluirTodosClick
          ExplicitLeft = 207
        end
        object btnResiduoExcluir: TSpeedButton
          Left = 205
          Top = 199
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '<'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnResiduoExcluirClick
          ExplicitLeft = 207
        end
        object btnResiduoExcluirTodos: TSpeedButton
          Left = 205
          Top = 216
          Width = 21
          Height = 17
          Anchors = [akTop]
          Caption = '<<'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnResiduoExcluirTodosClick
          ExplicitLeft = 207
        end
        object DBLookupListBox4: TDBLookupListBox
          Left = 228
          Top = 15
          Width = 194
          Height = 342
          Anchors = [akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_Residuo'
          ListField = 'Descricao'
          ListSource = dtsResiduoDestino
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object DBLookupListBox5: TDBLookupListBox
          Left = 8
          Top = 15
          Width = 194
          Height = 342
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_Residuo'
          ListField = 'Descricao'
          ListSource = dtsResiduoOrigem
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
    end
  end
  object dspManifestos: TDataSetProvider
    DataSet = sqlManifestos
    Left = 100
    Top = 18
  end
  object cdsManifestos: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspManifestos'
    Left = 128
    Top = 18
    object cdsManifestosNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Required = True
      Size = 30
    end
    object cdsManifestosGerDtEntrega: TSQLTimeStampField
      FieldName = 'GerDtEntrega'
      Required = True
    end
    object cdsManifestosRazaoSocialRecep: TStringField
      FieldName = 'RazaoSocialRecep'
      Required = True
      Size = 50
    end
    object cdsManifestosGerID_Empresa: TIntegerField
      FieldName = 'GerID_Empresa'
      Required = True
    end
    object cdsManifestosRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsManifestosNumero: TStringField
      FieldName = 'Numero'
      Required = True
    end
    object cdsManifestosQuantidade: TFMTBCDField
      FieldName = 'Quantidade'
      DisplayFormat = '###,##0.000 Ton'
      Precision = 17
      Size = 6
    end
    object cdsManifestosCDF: TStringField
      FieldName = 'CDF'
      Size = 45
    end
    object cdsManifestosRecepID_Empresa: TIntegerField
      FieldName = 'RecepID_Empresa'
      Required = True
    end
    object cdsManifestosID_Residuo: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
    end
    object cdsManifestosResiduo: TStringField
      FieldName = 'Residuo'
      Required = True
      Size = 50
    end
    object cdsManifestosID_Situacao: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object cdsManifestosSituacao: TStringField
      FieldName = 'Situacao'
      Required = True
      Size = 30
    end
    object cdsManifestosID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      Required = True
    end
    object cdsManifestosEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsManifestosMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsManifestosUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsManifestosResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
    object cdsManifestosID_Procedencia: TIntegerField
      FieldName = 'ID_Procedencia'
      Required = True
    end
    object cdsManifestosProcedencia: TStringField
      FieldName = 'Procedencia'
      Required = True
      Size = 30
    end
    object cdsManifestosObs: TBlobField
      FieldName = 'Obs'
      Size = 1
    end
    object cdsManifestosID_Status: TIntegerField
      FieldName = 'ID_Status'
      Required = True
    end
    object cdsManifestosStatus: TStringField
      FieldName = 'Status'
      Required = True
      Size = 30
    end
    object cdsManifestosMostraProcedencia: TStringField
      FieldName = 'MostraProcedencia'
      Required = True
      Size = 30
    end
    object cdsManifestosValorMercado: TFMTBCDField
      FieldName = 'ValorMercado'
      Precision = 14
      Size = 2
    end
    object cdsManifestosValorReceber: TFMTBCDField
      FieldName = 'ValorReceber'
      DisplayFormat = '###,##0.00'
      Precision = 32
    end
  end
  object dtsManifestos: TDataSourceUrb
    DataSet = cdsManifestos
    Left = 156
    Top = 18
  end
  object rdtsManifestos: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsManifestos
    Left = 184
    Top = 18
  end
  object dspEmpresaGeradoraOrigem: TDataSetProvider
    DataSet = sqlEmpresaGeradoraOrigem
    Left = 100
    Top = 46
  end
  object cdsEmpresaGeradoraOrigem: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresaGeradoraOrigem'
    Left = 128
    Top = 46
    object cdsEmpresaGeradoraOrigemID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEmpresaGeradoraOrigemDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsEmpresaGeradoraOrigem: TDataSourceUrb
    DataSet = cdsEmpresaGeradoraOrigem
    Left = 156
    Top = 46
  end
  object cdsEmpresaGeradoraDestino: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    Left = 383
    Top = 13
    object IntegerField1: TIntegerField
      FieldName = 'ID_Fantasia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsEmpresaGeradoraDestino: TDataSourceUrb
    DataSet = cdsEmpresaGeradoraDestino
    Left = 410
    Top = 13
  end
  object dspEmpresaReceptoraOrigem: TDataSetProvider
    DataSet = sqlEmpresaReceptoraOrigem
    Left = 100
    Top = 74
  end
  object cdsEmpresaReceptoraOrigem: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresaReceptoraOrigem'
    Left = 128
    Top = 74
    object cdsEmpresaReceptoraOrigemID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEmpresaReceptoraOrigemRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
  end
  object dtsEmpresaReceptoraOrigem: TDataSourceUrb
    DataSet = cdsEmpresaReceptoraOrigem
    Left = 156
    Top = 74
  end
  object cdsEmpresaReceptoraDestino: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    Left = 383
    Top = 41
    object IntegerField5: TIntegerField
      FieldName = 'ID_Empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
  end
  object dtsEmpresaReceptoraDestino: TDataSourceUrb
    DataSet = cdsEmpresaReceptoraDestino
    Left = 410
    Top = 41
  end
  object dspSituacaoOrigem: TDataSetProvider
    DataSet = sqlSituacaoOrigem
    Left = 100
    Top = 102
  end
  object cdsSituacaoOrigem: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSituacaoOrigem'
    Left = 128
    Top = 102
    object cdsSituacaoOrigemID_Situacao: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object cdsSituacaoOrigemDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsSituacaoOrigem: TDataSourceUrb
    DataSet = cdsSituacaoOrigem
    Left = 156
    Top = 102
  end
  object cdsSituacaoDestino: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    Left = 383
    Top = 69
    object IntegerField2: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsSituacaoDestino: TDataSourceUrb
    DataSet = cdsSituacaoDestino
    Left = 410
    Top = 69
  end
  object dspResiduoOrigem: TDataSetProvider
    DataSet = sqlResiduoOrigem
    Left = 100
    Top = 130
  end
  object cdsResiduoOrigem: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResiduoOrigem'
    Left = 128
    Top = 130
    object cdsResiduoOrigemID_Residuo: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
    end
    object cdsResiduoOrigemDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
  end
  object dtsResiduoOrigem: TDataSourceUrb
    DataSet = cdsResiduoOrigem
    Left = 156
    Top = 130
  end
  object cdsResiduoDestino: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    Left = 383
    Top = 97
    object IntegerField3: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
  end
  object dtsResiduoDestino: TDataSourceUrb
    DataSet = cdsResiduoDestino
    Left = 410
    Top = 97
  end
  object cdsResponsavel: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResponsavel'
    Left = 332
    Top = 294
    object cdsResponsavelID_Responsavel: TIntegerField
      FieldName = 'ID_Responsavel'
      Required = True
    end
    object cdsResponsavelNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsResponsavelID_Cargo: TIntegerField
      FieldName = 'ID_Cargo'
    end
    object cdsResponsavelID_Tratamento: TIntegerField
      FieldName = 'ID_Tratamento'
      Required = True
    end
  end
  object dtsResponsavel: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsResponsavel
    Left = 360
    Top = 294
  end
  object dspResponsavel: TDataSetProviderUrb
    DataSet = sqlResponsavel
    Options = [poAllowCommandText]
    Left = 304
    Top = 294
  end
  object cdsProtocEmpresa: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProtocEmpresa'
    Left = 79
    Top = 329
    object cdsProtocEmpresaId_Protoc_Empresa: TIntegerField
      FieldName = 'Id_Protoc_Empresa'
      Required = True
    end
    object cdsProtocEmpresaProcedenciaResiduo: TStringField
      FieldName = 'ProcedenciaResiduo'
      Required = True
      Size = 30
    end
    object cdsProtocEmpresaMesAno: TStringField
      FieldName = 'MesAno'
      Required = True
    end
    object cdsProtocEmpresaNumManifesto: TStringField
      FieldName = 'NumManifesto'
      Required = True
    end
  end
  object dtsProtocEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsProtocEmpresa
    Left = 107
    Top = 329
  end
  object rdtsProtocEmpresa: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsProtocEmpresa
    Left = 135
    Top = 329
  end
  object cdsProtocManif: TClientDataSetUrb
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ProcedenciaDesc'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ANO_MES'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Numero'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_Fantasia'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'GerDtEntrega'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'MES'
        DataType = ftInteger
      end
      item
        Name = 'ANO'
        DataType = ftInteger
      end
      item
        Name = 'RazaoSocial'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Endereco'
        Attributes = [faRequired]
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Municipio'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Responsavel'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ID_Situacao'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_Procedencia'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'GerID_Empresa'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_Fantasia_1'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'iID_Fantasia'
        ParamType = ptUnknown
        Value = 17
      end
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptUnknown
        Value = #39'20090101'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptUnknown
        Value = #39'20090801'#39
      end>
    ProviderName = 'dspProtocManif'
    StoreDefs = True
    Left = 332
    Top = 322
    object cdsProtocManifNumero: TStringField
      FieldName = 'Numero'
      Required = True
    end
    object cdsProtocManifProcedenciaDesc: TStringField
      FieldName = 'ProcedenciaDesc'
      Required = True
      Size = 30
    end
    object cdsProtocManifID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      Required = True
    end
    object cdsProtocManifDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
    object cdsProtocManifGerDtEntrega: TSQLTimeStampField
      FieldName = 'GerDtEntrega'
      Required = True
    end
    object cdsProtocManifRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsProtocManifEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsProtocManifMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsProtocManifUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsProtocManifResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
    object cdsProtocManifID_Situacao: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object cdsProtocManifID_Procedencia: TIntegerField
      FieldName = 'ID_Procedencia'
      Required = True
    end
    object cdsProtocManifGerID_Empresa: TIntegerField
      FieldName = 'GerID_Empresa'
      Required = True
    end
    object cdsProtocManifID_Fantasia_1: TIntegerField
      FieldName = 'ID_Fantasia_1'
      Required = True
    end
    object cdsProtocManifANO_MES: TStringField
      FieldName = 'ANO_MES'
      Size = 6
    end
    object cdsProtocManifMES: TIntegerField
      FieldName = 'MES'
    end
    object cdsProtocManifANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dtsProtocManif: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsProtocManif
    Left = 361
    Top = 322
  end
  object rdtsProtocManif: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsProtocManif
    Left = 388
    Top = 322
  end
  object sqlManifestos: TSQLDataSet
    SchemaName = 'andre'
    GetMetadata = False
    CommandText = 
      'Select f.Descricao As NomeFantasia, m.GerDtEntrega, er.RazaoSoci' +
      'al As RazaoSocialRecep, p.Descricao As Procedencia, r.Descricao ' +
      'As Residuo, m.GerID_Empresa, e.RazaoSocial, m.Numero, m.Quantida' +
      'de, m.CDF, m.RecepID_Empresa, m.ID_Residuo, IF(m.GerID_Empresa =' +
      ' 27, 200, r.ValorMercado) As ValorMercado, m.Quantidade * (IF(m.' +
      'GerID_Empresa = 27, 200.00, r.ValorMercado)) * 1000 As ValorRece' +
      'ber, m.ID_Situacao, s.Descricao As Situacao, e.ID_Fantasia, e.En' +
      'dereco, e.Municipio, e.UF, IF(0 = 0, e.Responsavel, '#39#39') As Respo' +
      'nsavel, m.ID_Procedencia, e.Obs, m.ID_Status, IF(m.ID_Status = 1' +
      ', CONCAT('#39'( '#39', me.Descricao, '#39' )'#39'), '#39#39') As Status, IF(1 = 1, p.D' +
      'escricao, '#39#39') As MostraProcedencia From manifesto m, residuo r, ' +
      'empresa e, empresa er, fantasia f, situacao s, procedencia p, ma' +
      'nifestoestado me Where (m.GerDtEntrega >= 20111101) And (m.GerDt' +
      'Entrega <= 20111130) And (m.GerID_Empresa = e.ID_Empresa) And (m' +
      '.RecepID_Empresa In (509, 490, 227, 128, 581, 127, 482, 169, 590' +
      ', 525, 33, 278, 106, 31, 524, 122, 354, 359, 32, 103, 130, 63, 5' +
      '22, 335, 466, 441, 386, 510, 485, 387, 152, 465, 464, 151, 150, ' +
      '149, 154, 463, 442, 419, 446, 537, 153, 148, 147, 146, 498, 528,' +
      ' 145, 527, 90, 132, 62, 589, 588, 576, 587, 580, 369, 579, 586, ' +
      '585, 47, 113, 558, 120, 454, 373, 486, 495, 374, 294, 471, 54, 2' +
      '07, 60, 584, 479, 210, 209, 353, 435, 497, 202, 203, 204, 561, 7' +
      '2, 283, 276, 166, 165, 28, 46, 126, 70, 409, 418, 417, 410, 416,' +
      ' 408, 271, 448, 447, 244, 216, 279, 284, 384, 383, 554, 583, 532' +
      ', 211, 212, 27, 25, 26, 235, 24, 112, 403, 65, 59, 548, 291, 108' +
      ', 414, 68, 492, 460, 551, 529, 162, 534, 531, 535, 160, 488, 161' +
      ', 455, 93, 22, 407, 406, 378, 514, 543, 397, 508, 372, 422, 163,' +
      ' 174, 164, 474, 274, 556, 451, 547, 21, 433, 368, 399, 469, 549,' +
      ' 2, 444, 247, 280, 77, 55, 445, 20, 19, 69, 114, 119, 67, 536, 2' +
      '46, 123, 322, 321, 404, 401, 420, 421, 331, 324, 333, 308, 344, ' +
      '325, 307, 425, 323, 330, 306, 426, 305, 310, 367, 360, 313, 304,' +
      ' 334, 347, 349, 309, 345, 311, 312, 303, 366, 299, 45, 494, 541,' +
      ' 540, 539, 484, 542, 109, 413, 483, 438, 281, 380, 317, 144, 569' +
      ', 143, 142, 141, 449, 513, 18, 272, 472, 567, 566, 390, 111, 437' +
      ', 319, 352, 316, 550, 501, 493, 17, 76, 237, 232, 361, 236, 233,' +
      ' 346, 238, 239, 16, 476, 15, 521, 557, 73, 50, 226, 424, 14, 350' +
      ', 481, 131, 563, 318, 101, 468, 342, 341, 461, 340, 339, 423, 33' +
      '6, 365, 519, 58, 295, 13, 512, 523, 565, 351, 355, 343, 243, 12,' +
      ' 450, 439, 440, 503, 502, 391, 388, 11, 61, 116, 436, 517, 57, 3' +
      '70, 477, 553, 538, 473, 389, 382, 518, 48, 429, 507, 570, 577, 5' +
      '68, 575, 574, 573, 572, 582, 571, 371, 552, 559, 452, 430, 428, ' +
      '332, 564, 392, 458, 102, 44, 457, 52, 453, 456, 43, 129, 42, 427' +
      ', 467, 434, 41, 66, 40, 405, 562, 545, 470, 53, 133, 248, 118, 4' +
      '89, 555, 544, 10, 8, 241, 39, 74, 7, 290, 110, 254, 121, 516, 47' +
      '8, 431, 379, 393, 326, 412, 140, 139, 364, 377, 411, 138, 506, 5' +
      '04, 443, 515, 487, 137, 105, 225, 285, 171, 533, 156, 159, 499, ' +
      '157, 158, 320, 208, 475, 520, 526, 275, 376, 381, 104, 231, 234,' +
      ' 170, 173, 172, 230, 155, 197, 229, 5, 578, 4, 363, 496, 37, 293' +
      ', 302, 224, 228, 242, 415, 400, 289, 223, 358, 222, 362, 107, 31' +
      '5, 240, 221, 255, 288, 287, 220, 219, 394, 117, 38, 124, 218, 30' +
      '1, 314, 395, 75, 64, 3, 348, 51, 49, 300, 398, 1, 36, 459, 35, 4' +
      '32, 297, 270, 337, 250, 546, 167, 168, 402, 396, 338, 385, 194, ' +
      '530, 327, 329, 296, 134, 292, 286, 273, 298, 125)) And (m.RecepI' +
      'D_Empresa = er.ID_Empresa) And (m.ID_Residuo In (175, 170, 168, ' +
      '139, 228, 216, 28, 210, 182, 114, 124, 184, 225, 65, 24, 35, 25,' +
      ' 59, 36, 3, 192, 214, 212, 215, 223, 206, 96, 121, 127, 204, 93,' +
      ' 197, 211, 194, 193, 44, 82, 85, 199, 231, 172, 92, 129, 157, 11' +
      '1, 207, 107, 104, 90, 89, 221, 84, 39, 51, 30, 49, 2, 198, 83, 8' +
      '7, 201, 232, 102, 1, 27, 196, 226, 224, 234, 174, 122, 185, 183,' +
      ' 187, 176, 177, 112, 80, 118, 20, 17, 18, 86, 37, 156, 143, 142,' +
      ' 145, 144, 155, 141, 150, 140, 146, 149, 147, 148, 152, 173, 134' +
      ', 136, 191, 113, 16, 70, 120, 151, 6, 52, 132, 222, 188, 189, 15' +
      '4, 203, 181, 5, 219, 160, 235, 163, 33, 26, 53, 56, 50, 55, 42, ' +
      '32, 58, 31, 205, 125, 190, 164, 40, 97, 41, 108, 10, 76, 11, 74,' +
      ' 227, 158, 135, 95, 75, 117, 119, 100, 21, 180, 200, 126, 115, 2' +
      '18, 169, 165, 178, 208, 71, 68, 69, 72, 88, 109, 230, 153, 101, ' +
      '159, 137, 103, 202, 99, 98, 110, 77, 73, 106, 217, 171, 130, 213' +
      ', 186, 133, 179, 236, 7, 167, 162, 195, 91, 29, 123, 116, 63, 22' +
      '9, 128, 23, 15, 13, 12, 14, 38, 67, 166, 131, 57, 8, 43, 233, 9,' +
      ' 209, 161, 60, 79, 105, 220, 94)) And (m.ID_Residuo = r.ID_Resid' +
      'uo) And (m.ID_Situacao In (6, 5, 4, 2, 3)) And (m.ID_Situacao = ' +
      's.ID_Situacao) And (e.ID_Fantasia In (12)) And (e.ID_Fantasia = ' +
      'f.ID_Fantasia) And (m.ID_Procedencia = p.ID_Procedencia) And (m.' +
      'ID_Status = me.ID_ManifestoEstado) Order By 1, 4, 5'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 72
    Top = 18
  end
  object sqlEmpresaGeradoraOrigem: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 72
    Top = 46
  end
  object sqlEmpresaReceptoraOrigem: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 72
    Top = 74
  end
  object sqlSituacaoOrigem: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 72
    Top = 102
  end
  object sqlResiduoOrigem: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 72
    Top = 130
  end
  object sqlResponsavel: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_Responsavel, Nome, ID_Cargo, ID_Tratamento from respon' +
      'savel order by Nome'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 276
    Top = 294
  end
  object sqlProtocEmpresa: TSQLDataSet
    SchemaName = 'andre'
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'      pe.Id_Protoc_Empresa,'#13#10'      pe.ProcedenciaResiduo' +
      ','#13#10'      pe.MesAno,'#13#10'      pe.NumManifesto'#13#10'FROM'#13#10'      protoc_e' +
      'mpresa pe'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 23
    Top = 329
  end
  object dspProtocEmpresa: TDataSetProvider
    DataSet = sqlProtocEmpresa
    Left = 51
    Top = 329
  end
  object sqlProtocManif: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'       P.Descricao AS ProcedenciaDesc,'#13#10'       DATE_FORM' +
      'AT(M.GerDtEntrega, '#39'%Y%m'#39') AS ANO_MES,'#13#10'       M.Numero,'#13#10'      ' +
      ' E.ID_Fantasia,'#13#10'       F.Descricao,'#13#10'       M.GerDtEntrega,'#13#10'  ' +
      '     MONTH(M.GerDtEntrega) AS MES,'#13#10'       YEAR(M.GerDtEntrega) ' +
      'AS ANO,'#13#10'       E.RazaoSocial,'#13#10'       E.Endereco,'#13#10'       E.Mun' +
      'icipio,'#13#10'       E.UF,'#13#10'       E.Responsavel,'#13#10'       M.ID_Situac' +
      'ao,'#13#10'       M.ID_Procedencia,'#13#10'       M.GerID_Empresa,'#13#10'       F' +
      '.ID_Fantasia'#13#10'FROM   manifesto M,'#13#10'       empresa E,'#13#10'       fan' +
      'tasia F,'#13#10'       procedencia P'#13#10'WHERE  (E.ID_Fantasia    =  F.ID' +
      '_Fantasia)'#13#10'  AND  (M.GerID_Empresa  =  E.ID_Empresa)'#13#10'  AND  (E' +
      '.ID_Fantasia    =  :iID_Fantasia)'#13#10'  AND  ( M.GerDtEntrega      ' +
      '>= :sDataIni        )'#13#10'  AND  ( M.GerDtEntrega      <= :sDataFim' +
      '        )'#13#10'  AND  (M.ID_Situacao    =  2)'#13#10'  AND  (M.ID_Status  ' +
      '    <> 1)'#13#10'  AND  (M.ID_Procedencia =  P.ID_Procedencia)'#13#10'ORDER ' +
      'BY 1, 2, 3'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'iID_Fantasia'
        ParamType = ptInput
        Value = 17
      end
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptInput
        Value = #39'20090101'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptInput
        Value = #39'20090801'#39
      end>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 276
    Top = 322
  end
  object dspProtocManif: TDataSetProviderUrb
    DataSet = sqlProtocManif
    Options = [poAllowCommandText]
    Left = 304
    Top = 322
  end
  object rdtsTotalizaResiduo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsTotalizaResiduo
    Left = 138
    Top = 414
  end
  object dtsTotalizaResiduo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTotalizaResiduo
    Left = 107
    Top = 413
  end
  object cdsTotalizaResiduo: TClientDataSetUrb
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ProcedenciaDesc'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ANO_MES'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Numero'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_Fantasia'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'GerDtEntrega'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'MES'
        DataType = ftInteger
      end
      item
        Name = 'ANO'
        DataType = ftInteger
      end
      item
        Name = 'RazaoSocial'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Endereco'
        Attributes = [faRequired]
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Municipio'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Responsavel'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ID_Situacao'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_Procedencia'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'GerID_Empresa'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_Fantasia_1'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'iID_Fantasia'
        ParamType = ptUnknown
        Value = 17
      end
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptUnknown
        Value = #39'20090101'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptUnknown
        Value = #39'20090801'#39
      end>
    ProviderName = 'dspTotalizaResiduo'
    StoreDefs = True
    Left = 79
    Top = 413
    object StringField4: TStringField
      FieldName = 'Numero'
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'ProcedenciaDesc'
      Required = True
      Size = 30
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_Fantasia'
      Required = True
    end
    object StringField7: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'GerDtEntrega'
      Required = True
    end
    object StringField8: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object StringField9: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object StringField10: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object StringField11: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField12: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'ID_Procedencia'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'GerID_Empresa'
      Required = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'ID_Fantasia_1'
      Required = True
    end
    object StringField13: TStringField
      FieldName = 'ANO_MES'
      Size = 6
    end
    object IntegerField10: TIntegerField
      FieldName = 'MES'
    end
    object IntegerField11: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dspTotalizaResiduo: TDataSetProviderUrb
    DataSet = sqlTotalizaResiduo
    Options = [poAllowCommandText]
    Left = 50
    Top = 413
  end
  object sqlTotalizaResiduo: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'       P.Descricao AS ProcedenciaDesc,'#13#10'       DATE_FORM' +
      'AT(M.GerDtEntrega, '#39'%Y%m'#39') AS ANO_MES,'#13#10'       M.Numero,'#13#10'      ' +
      ' E.ID_Fantasia,'#13#10'       F.Descricao,'#13#10'       M.GerDtEntrega,'#13#10'  ' +
      '     MONTH(M.GerDtEntrega) AS MES,'#13#10'       YEAR(M.GerDtEntrega) ' +
      'AS ANO,'#13#10'       E.RazaoSocial,'#13#10'       E.Endereco,'#13#10'       E.Mun' +
      'icipio,'#13#10'       E.UF,'#13#10'       E.Responsavel,'#13#10'       M.ID_Situac' +
      'ao,'#13#10'       M.ID_Procedencia,'#13#10'       M.GerID_Empresa,'#13#10'       F' +
      '.ID_Fantasia'#13#10'FROM   manifesto M,'#13#10'       empresa E,'#13#10'       fan' +
      'tasia F,'#13#10'       procedencia P'#13#10'WHERE  (E.ID_Fantasia    =  F.ID' +
      '_Fantasia)'#13#10'  AND  (M.GerID_Empresa  =  E.ID_Empresa)'#13#10'  AND  (E' +
      '.ID_Fantasia    =  :iID_Fantasia)'#13#10'  AND  ( M.GerDtEntrega      ' +
      '>= :sDataIni        )'#13#10'  AND  ( M.GerDtEntrega      <= :sDataFim' +
      '        )'#13#10'  AND  (M.ID_Situacao    =  2)'#13#10'  AND  (M.ID_Status  ' +
      '    <> 1)'#13#10'  AND  (M.ID_Procedencia =  P.ID_Procedencia)'#13#10'ORDER ' +
      'BY 1, 2, 3'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'iID_Fantasia'
        ParamType = ptInput
        Value = 17
      end
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptInput
        Value = #39'20090101'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptInput
        Value = #39'20090801'#39
      end>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 22
    Top = 413
  end
end
