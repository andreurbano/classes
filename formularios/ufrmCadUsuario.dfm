inherited frmCadUsuario: TfrmCadUsuario
  Left = 8
  Top = 78
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 465
  ClientWidth = 784
  ExplicitWidth = 800
  ExplicitHeight = 503
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 696
    Height = 431
    ExplicitWidth = 696
    ExplicitHeight = 431
    inherited pgcManutencaoBD: TPageControl
      Width = 676
      Height = 413
      ExplicitWidth = 676
      ExplicitHeight = 413
      inherited tbsListagem: TTabSheet
        ExplicitWidth = 668
        ExplicitHeight = 403
        inherited pnlListagem: TPanel
          Width = 668
          Height = 403
          ExplicitWidth = 668
          ExplicitHeight = 403
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 666
            Height = 401
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 668
        ExplicitHeight = 403
        inherited pnlCadastro: TPanel
          Width = 668
          Height = 403
          ExplicitWidth = 668
          ExplicitHeight = 403
          object gbxLograInstala: TGroupBox
            Left = 15
            Top = 175
            Width = 642
            Height = 105
            Caption = 'Endere'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label10: TLabel
              Left = 15
              Top = 16
              Width = 21
              Height = 13
              Caption = 'Tipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblLogradouro: TLabel
              Left = 109
              Top = 16
              Width = 54
              Height = 13
              Caption = 'Logradouro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblNumero: TLabel
              Left = 275
              Top = 16
              Width = 12
              Height = 13
              Caption = 'N'#186
              FocusControl = txtNumeroLogra
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblComplemento: TLabel
              Left = 343
              Top = 16
              Width = 64
              Height = 13
              Caption = 'Complemento'
              FocusControl = txtComplementoLogra
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblBairro: TLabel
              Left = 15
              Top = 58
              Width = 27
              Height = 13
              Caption = 'Bairro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblCEP: TLabel
              Left = 209
              Top = 58
              Width = 21
              Height = 13
              Caption = 'CEP'
              FocusControl = txtLograCEP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblCidade: TLabel
              Left = 274
              Top = 58
              Width = 33
              Height = 13
              Caption = 'Cidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblUF: TLabel
              Left = 584
              Top = 58
              Width = 14
              Height = 13
              Caption = 'UF'
              FocusControl = txtLograUF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object txtNumeroLogra: TDBEdit
              Left = 275
              Top = 32
              Width = 65
              Height = 21
              Color = clWhite
              DataField = 'Logra_Numero'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object txtComplementoLogra: TDBEdit
              Left = 343
              Top = 32
              Width = 284
              Height = 21
              DataField = 'Logra_Complemento'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object txtLograCEP: TDBEdit
              Left = 209
              Top = 74
              Width = 62
              Height = 21
              Color = clWhite
              DataField = 'Logra_CEP'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object txtLograUF: TDBEdit
              Left = 584
              Top = 74
              Width = 43
              Height = 21
              Color = clWhite
              DataField = 'LograUF'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object dblLograTipo: TDBLookupComboBox
              Left = 15
              Top = 32
              Width = 66
              Height = 21
              Color = clWhite
              DataField = 'DescLograTipo'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object dblLogradouro: TDBLookupComboBox
              Left = 109
              Top = 32
              Width = 139
              Height = 21
              Color = clWhite
              DataField = 'DescLogradouro'
              DataSource = dtsManuBD
              DropDownRows = 15
              DropDownWidth = 200
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object dblLograBairro: TDBLookupComboBox
              Left = 15
              Top = 75
              Width = 167
              Height = 21
              DataField = 'DescLograBairro'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object txtLograCidade: TDBEdit
              Left = 275
              Top = 74
              Width = 305
              Height = 21
              Color = clWhite
              DataField = 'LograCidade'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object btnLogradouro: TButton
              Left = 246
              Top = 32
              Width = 23
              Height = 19
              Hint = 'Cadastro de Tipos de Logradouros'
              Caption = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              TabStop = False
              OnClick = btnLogradouroClick
              OnExit = btnLogradouroExit
            end
            object btnCadLograInstalaTipo: TButton
              Left = 79
              Top = 32
              Width = 23
              Height = 19
              Hint = 'Cadastro de Tipos de Logradouros'
              Caption = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TabStop = False
              OnClick = btnCadLograInstalaTipoClick
              OnExit = btnCadLograInstalaTipoExit
            end
            object btnLograInstalaBairro: TButton
              Left = 180
              Top = 75
              Width = 23
              Height = 19
              Hint = 'Cadastro de Bairros'
              Caption = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              TabStop = False
              OnClick = btnLograInstalaBairroClick
              OnExit = btnLograInstalaBairroExit
            end
          end
          object gbxObs: TGroupBox
            Left = 15
            Top = 293
            Width = 642
            Height = 95
            Caption = 'Obs'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object memObs: TDBMemo
              Left = 15
              Top = 16
              Width = 614
              Height = 67
              DataField = 'Obs'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object gbxDadosPessoais: TGroupBox
            Left = 15
            Top = 8
            Width = 642
            Height = 152
            Caption = 'Dados Pessoais'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label1: TLabel
              Left = 199
              Top = 104
              Width = 26
              Height = 13
              Caption = 'Login'
              FocusControl = txtLogin
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 339
              Top = 104
              Width = 31
              Height = 13
              Caption = 'Senha'
              FocusControl = txtSenha
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblSetor: TLabel
              Left = 339
              Top = 61
              Width = 25
              Height = 13
              Caption = 'Setor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 477
              Top = 104
              Width = 84
              Height = 13
              Caption = 'Confirme a Senha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 292
              Top = 61
              Width = 30
              Height = 13
              Caption = 'Ramal'
              FocusControl = txtRamal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 15
              Top = 104
              Width = 25
              Height = 13
              Caption = 'Email'
              FocusControl = txtEmail
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblNome: TLabel
              Left = 107
              Top = 16
              Width = 28
              Height = 13
              Caption = 'Nome'
              FocusControl = txtNome
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblSobreNome: TLabel
              Left = 199
              Top = 16
              Width = 54
              Height = 13
              Caption = 'Sobrenome'
              FocusControl = txtSobreNome
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblCpf_Cnpj: TLabel
              Left = 412
              Top = 16
              Width = 20
              Height = 13
              Caption = 'CPF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblIdent_InscEstado: TLabel
              Left = 454
              Top = 61
              Width = 50
              Height = 13
              Caption = 'Identidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblTelefone1: TLabel
              Left = 15
              Top = 61
              Width = 76
              Height = 13
              Caption = 'Tel. Resid'#234'ncial'
              FocusControl = txtTelResidencia
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 107
              Top = 61
              Width = 53
              Height = 13
              Caption = 'Tel. Celular'
              FocusControl = txtTelCelPessoal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 199
              Top = 61
              Width = 62
              Height = 13
              Caption = 'Tel. Empresa'
              FocusControl = txtTelCelEmpresa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblContatoSexo: TLabel
              Left = 530
              Top = 16
              Width = 24
              Height = 13
              Caption = 'Sexo'
              FocusControl = dblSexo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblContatoTratamento: TLabel
              Left = 15
              Top = 16
              Width = 54
              Height = 13
              Caption = 'Tratamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblOrgaoEmissor: TLabel
              Left = 530
              Top = 61
              Width = 68
              Height = 13
              Caption = 'Org'#227'o Emissor'
              FocusControl = dblOrgaoEmissor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object txtLogin: TDBEdit
              Left = 199
              Top = 120
              Width = 135
              Height = 21
              Color = 13630204
              DataField = 'Login'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
            end
            object txtSenha: TDBEdit
              Left = 339
              Top = 120
              Width = 133
              Height = 21
              Color = 13630204
              DataField = 'Senha'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              PasswordChar = '*'
              TabOrder = 17
            end
            object dblSetor: TDBLookupComboBox
              Left = 339
              Top = 77
              Width = 87
              Height = 21
              Color = 13630204
              DataField = 'DescSetor'
              DataSource = dtsManuBD
              DropDownWidth = 150
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object txtRamal: TDBEdit
              Left = 292
              Top = 77
              Width = 42
              Height = 21
              DataField = 'Ramal'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object txtEmail: TDBEdit
              Left = 15
              Top = 120
              Width = 180
              Height = 21
              DataField = 'Email'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
            end
            object txtNome: TDBEdit
              Left = 107
              Top = 32
              Width = 88
              Height = 21
              Color = 13630204
              DataField = 'Nome'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object txtSobreNome: TDBEdit
              Left = 199
              Top = 32
              Width = 209
              Height = 21
              Color = clWhite
              DataField = 'SobreNome'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object txtCpf: TDBEdit
              Left = 412
              Top = 32
              Width = 114
              Height = 21
              Color = clWhite
              DataField = 'CPF'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object txtIdentidade: TDBEdit
              Left = 454
              Top = 77
              Width = 72
              Height = 21
              DataField = 'Identidade'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
            end
            object txtTelResidencia: TDBEdit
              Left = 15
              Top = 77
              Width = 88
              Height = 21
              Color = clWhite
              DataField = 'TelResidencia'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object txtTelCelPessoal: TDBEdit
              Left = 107
              Top = 77
              Width = 88
              Height = 21
              Color = clWhite
              DataField = 'TelCelPessoal'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object txtTelCelEmpresa: TDBEdit
              Left = 199
              Top = 77
              Width = 88
              Height = 21
              Color = clWhite
              DataField = 'TelCelEmpresa'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object dblSexo: TDBLookupComboBox
              Left = 530
              Top = 32
              Width = 74
              Height = 21
              Color = clWhite
              DataField = 'DescSexo'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object dblTratamento: TDBLookupComboBox
              Left = 15
              Top = 32
              Width = 66
              Height = 21
              Color = clWhite
              DataField = 'DescTratamento'
              DataSource = dtsManuBD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object btnCadTratamento: TButton
              Left = 79
              Top = 32
              Width = 23
              Height = 19
              Hint = 'Cadastro de Tratamentos'
              BiDiMode = bdLeftToRight
              Caption = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TabStop = False
              OnClick = btnCadTratamentoClick
              OnExit = btnCadTratamentoExit
            end
            object txtSenhaConfirma: TMaskEdit
              Left = 477
              Top = 120
              Width = 133
              Height = 21
              Color = 13630204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 19
            end
            object dblOrgaoEmissor: TDBLookupComboBox
              Left = 530
              Top = 77
              Width = 74
              Height = 21
              DataField = 'DescOrgaoEmissor'
              DataSource = dtsManuBD
              DropDownWidth = 120
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
            end
            object btnCadSexo: TButton
              Left = 602
              Top = 32
              Width = 23
              Height = 19
              Hint = 'Cadastro de Sexo'
              Caption = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 18
              TabStop = False
              OnClick = btnCadSexoClick
              OnExit = btnCadSexoExit
            end
            object btnCadOrgaoEmissor: TButton
              Left = 602
              Top = 77
              Width = 23
              Height = 19
              Hint = 'Cadastro de Org'#227'o Emissor'
              Caption = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 14
              TabStop = False
              OnClick = btnCadOrgaoEmissorClick
              OnExit = btnCadOrgaoEmissorExit
            end
            object btnCadSetor: TButton
              Left = 424
              Top = 77
              Width = 23
              Height = 19
              Hint = 'Cadastro de Org'#227'o Emissor'
              Caption = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              TabStop = False
              OnClick = btnCadSetorClick
              OnExit = btnCadSetorExit
            end
          end
        end
      end
    end
  end
  inherited stbManutencaoBD: TStatusBar
    Top = 446
    Width = 784
    ExplicitTop = 446
    ExplicitWidth = 784
  end
  inherited pnlBotoes: TPanel
    Left = 707
    Height = 431
    ExplicitLeft = 707
    ExplicitHeight = 431
  end
  inherited imgManutencaoBD: TImageList
    Bitmap = {
      494C01010A000C0018001A001A00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000680000004E0000000100200000000000C07E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      0000000000000000000094635A00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00EFD6B500F7DEB500F7D6AD00F7D6A500F7CE9C00EFCE9400EFC6
      9400EFC68C00EFC68400EFC68400EFC68400EFC68400EFC68400EFC68400EFC6
      8400EFC68400EFBD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094635A00EFD6B500F7DEB500F7D6AD00F7D6A500F7CE
      9C00EFCE9400EFC69400EFC68C00EFC68400EFC68400EFC68400EFC68400EFC6
      8400EFC68400EFC68400EFC68400EFBD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00EFD6BD00F7DEBD00F7D6B500F7D6AD00EFCEA500EFCE9C00EFC6
      9400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094635A00EFD6BD00F7DEBD00F7D6B500F7D6AD00A5BD
      7300E7C69400DEC68C00EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00EFBD7B00EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00EFD6C600F7E7C600F7DEBD00F7D6B500F7D6AD00EFCEA500EFCE
      9C00EFC69400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094635A00EFD6C600F7E7C600F7DEBD00F7D6B500C6C6
      8C0000840000E7C6940052A531002194100021941000529C2900B5B56300DEBD
      7300EFBD7B00EFBD7B00EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCE
      A500EFCE9C00EFC69400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094635A00EFDEC600F7E7C600F7DEBD00F7DEB500E7D6
      A500008400000084000000840000008400000084000000840000008400007BA5
      4200DEBD7300EFBD7B00EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094636300F7DECE00FFE7CE00F7E7C600F7DEBD00F7DEB500F7D6B500F7D6
      AD00EFCEA500EFCE9C00EFC69400EFC69400EFC68C00EFBD8400EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094636300F7DECE00FFE7CE00F7E7C600F7DEBD00E7D6
      AD00008400000084000000840000008400000084000000840000008400000084
      0000ADB55A00EFBD7B00EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094636300F7E7D600FFEFD600F7E7CE00F7DEC600848CD6003952E700F7D6
      B500F7D6AD00EFCEA500EFCE9C00314ADE008484B500EFC68C00EFBD8400EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094636300F7E7D600FFEFD600F7E7CE00F7DEC600E7DE
      B50000840000008400000084000021941800B5BD7300B5BD7300529C31000084
      000021941000EFBD7B00EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C6B6300F7E7DE00FFEFDE00F7E7D600F7E7CE001031F7000018FF003952
      E700F7D6B500F7D6AD00314ADE000018FF001031EF00EFC68C00EFC68C00EFBD
      8400EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      000000000000000000009C6B6300F7E7DE00FFEFDE00F7E7D600F7E7CE00E7DE
      BD0000840000008400000084000018941000E7CE9C00E7C69400DEC68C0094AD
      520000840000EFBD8400EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C6B6300F7EFE700FFF7E700FFEFDE00F7E7D600BDB5D6000021F7000018
      FF003952E7003952E7000018FF000021F700B5A5AD00EFC69400EFC68C00EFC6
      8C00EFBD8400E7BD7B009C6B6300000000000000000000000000000000000000
      000000000000000000009C6B6300F7EFE700FFF7E700FFEFDE00F7E7D600E7DE
      C6000084000000840000008400000084000000840000E7CE9C00EFCE9C00EFC6
      9400EFC68C005AC66300EFBD8400E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5736300F7EFEF00FFF7EF00FFEFE700F7EFDE00F7E7D600BDB5D6000021
      F7000018FF000018FF000021F700B5ADBD00EFCEA500EFCE9C00EFC69400EFC6
      8C00EFC68C00E7BD84009C6B6300000000000000000000000000000000000000
      00000000000000000000A5736300F7EFEF00FFF7EF00FFEFE700F7EFDE00E7E7
      C600E7DEC600E7DEBD00E7DEB500E7D6AD00E7D6A500E7CE9C00EFCEA500EFCE
      9C00EFC694005AC66300EFC68C00E7BD84009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5736B00FFF7F700FFFFF700FFF7EF00FFEFE700FFEFDE00F7E7D600294A
      EF000018FF000018FF002942E700F7D6B500F7D6AD00EFCEA500EFCE9C00EFC6
      9400EFC68C00EFBD84009C6B6300000000000000000000000000000000000000
      00000000000000000000A5736B00FFF7F700FFFFF700FFF7EF005AC66300FFEF
      DE00F7E7D600F7E7CE00E7DEBD00E7DEB500E7D6AD00E7D6A500E7CE9C00E7CE
      9C00DEC69400EFC69400EFC68C00EFBD84009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD7B6B00FFF7F700FFFFFF00FFFFF700FFF7EF00FFEFE7003952EF000018
      FF000021FF000021F7000018FF003952E700F7D6B500F7D6AD00EFCEA500EFCE
      9C00EFCE9400EFC68C00A5736300000000000000000000000000000000000000
      00000000000000000000AD7B6B00FFF7F700FFFFFF00FFFFF7005AC66300FFEF
      E700FFEFDE00F7E7D600E7DEC600008400000084000000840000008400000084
      0000E7CE9C00EFCE9C00EFCE9400EFC68C00A573630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B57B6B00FFF7F700FFFFFF00FFFFFF00FFF7F700294AF7000018FF000021
      FF00BDBDDE00BDB5D6000021F7000018FF002142EF00F7D6B500F7D6AD00EFCE
      A500EFCE9C00EFC69400A5736300000000000000000000000000000000000000
      00000000000000000000B57B6B00FFF7F700FFFFFF00FFFFFF00FFF7F700008C
      00009CCE8C00EFE7CE00E7E7C600E7DEBD001894100000840000008400000084
      0000E7CE9C00EFCEA500EFCE9C00EFC69400A573630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5846B00FFF7F700FFFFFF00FFFFFF00FFFFFF001031FF000029FF00BDBD
      E700FFEFDE00F7E7D600BDB5D6000021F7001031F700F7DEB500F7D6AD00F7D6
      AD00F7CEA500EFCE9C009C736300000000000000000000000000000000000000
      00000000000000000000B5846B00FFF7F700FFFFFF00FFFFFF00FFFFFF00299C
      21000084000052B54A00BDD6A500BDD69C00219C210000840000008400000084
      0000E7D6A500F7D6AD00F7CEA500EFCE9C009C73630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD846B00FFF7F700FFFFFF00FFFFFF00FFFFFF00BDC6FF00BDC6F700FFF7
      EF00FFEFE700FFEFDE00F7E7D600BDB5D600B5ADCE00F7DEBD00F7DEB500F7D6
      AD00EFD6A500CEB594008C6B6300000000000000000000000000000000000000
      00000000000000000000BD846B00FFF7F700FFFFFF00FFFFFF00FFFFFF00BDE7
      BD00008400000084000000840000008400000084000000840000008400000084
      0000E7D6AD00F7D6AD00EFD6A500CEB594008C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C68C6B00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00FFEFE700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD00E7CE
      AD00C6B59400A5947B0084636300000000000000000000000000000000000000
      00000000000000000000C68C6B00FFF7F700FFFFFF00FFFFFF00FFFFFF00EFFF
      EF0084CE84000084000000840000008400000084000000840000008400000084
      0000E7DEB500E7CEAD00C6B59400A5947B008463630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C68C7300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7EF00FFEFE700FFEFDE00FFE7D600FFEFD600E7D6BD00BDAD
      9C00A59C8C00A5948400846B6300000000000000000000000000000000000000
      00000000000000000000C68C7300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFFFEF00C6E7C60052B55200299C2100219C210052AD4A00EFE7C6000084
      0000B5C69400BDAD9C00A59C8C00A5948400846B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7EF00FFF7E700EFD6C6009C635A009C635A009463
      5A0094635A0094635A009C6B5A00000000000000000000000000000000000000
      00000000000000000000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00FFF7E700DECEB500946B
      52006B6B420094635A0094635A0094635A009C6B5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFFFEF00DEC6B5009C635A00DEA56B00DE9C
      4A00E7943900EF8C2100A56B6B00000000000000000000000000000000000000
      00000000000000000000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFFFEF00DEC6B5009C63
      5A00DEA56B00DE9C4A00E7943900EF8C2100A56B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD009C635A00EFB57300EFAD
      5200F7A53100A56B6B0000000000000000000000000000000000000000000000
      00000000000000000000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD009C63
      5A00EFB57300EFAD5200F7A53100A56B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C6009C635A00EFB57300EFA5
      5200A56B6B000000000000000000000000000000000000000000000000000000
      00000000000000000000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C6009C63
      5A00EFB57300EFA55200A56B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D69C7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE009C635A00EFB57300A56B
      6B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D69C7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE009C63
      5A00EFB57300A56B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C
      6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B009C635A00A56B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C
      6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B009C63
      5A00A56B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000000000009C5A52008C3939008431
      310084313100842929008C5A5A00A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5008C52520084292900843131008431
      3100843131008431310000000000000000000000000000000000000000000000
      000094635A00EFD6B500F7DEB500F7D6AD00F7D6A500F7CE9C00EFCE9400EFC6
      9400EFC68C00EFC68400EFC68400EFC68400EFC68400EFC68400EFC68400EFC6
      8400EFC68400EFBD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B5000000B500000000000000
      00000000000018A5D60063C6E70052C6E70039B5DE0029ADDE0018A5D60018A5
      D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00BD4A4A00A5393900844A4A009C9C9C00BDBDBD00DEDEDE00EFEFE700F7F7
      EF00F7F7EF00EFE7E700DEDED600D6D6D600A55A5A007B181800841818008421
      2100B5424200AD42420084313100000000000000000000000000000000000000
      000094635A00EFD6BD00F7DEBD00F7D6B500F7D6AD00EFCEA500EFCE9C00EFC6
      9400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000B5000000B5000000B500000000000000
      00000000000010A5D600A5DEEF00C6FFFF0094FFFF008CF7FF007BE7F7006BD6
      EF0052CEEF0042BDE70029ADDE0018A5D60010A5D60010A5D600FF00FF00FF00
      FF0000730800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A5393900845252008C737300A5636300C69C9400D6BDBD00F7F7
      EF00FFFFF700FFF7F700EFE7E700E7E7E700A55A5A007B101000841818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      000094635A00EFD6C600F7E7C600F7DEBD00F7D6B500F7D6AD00EFCEA500EFCE
      9C00EFC69400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000B5000000B5000000B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B5000000B5000000B50000000000000000000000
      00000000000010A5D60063BDE700DEFFFF0094FFFF0094FFFF0094FFFF009CFF
      FF009CFFFF0094F7FF008CEFFF007BE7F7005ACEEF0042BDE70031B5DE0021AD
      D6000884180008841800428C3900FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A5393900845252008C63630084212100A5525200BD8C8400E7E7
      DE00FFF7F700FFFFF700F7F7EF00EFEFEF00AD5A5A007B101000841818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      000094635A00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCE
      A500EFCE9C00EFC69400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000B5000000B5000000B5000000B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000B5000000B5000000B5000000B5000000000000000000000000000000
      00000000000018A5D60029ADDE00CEEFFF00A5FFFF0094FFFF0094FFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEFFF0084E7
      FF000884180008A5180008841800217B210018A5D600FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A53939008C5A5A00946B6B007B1818008C292900A55A5A00D6CE
      CE00EFEFE700FFF7F700FFFFF700FFFFF700AD6363007B101000841818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      000094636300F7DECE00FFE7CE00F7E7C600F7DEBD00F7DEB500F7D6B500F7D6
      AD00EFCEA500EFCE9C00EFC69400EFC69400EFC68C00EFBD8400EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000B5000000B5000000B5000000B5000000B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B5000000B5000000B5000000B500000000000000000000000000000000000000
      00000000000021ADD60031B5DE008CD6EF00BDFFFF008CFFFF0094FFFF0094F7
      FF0094F7FF00298C420008841800088418000884180008841800088418000884
      18000884180010B5310008A5180008A5180000730800FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A53939008C5A5A009C6B6B00841818007B1818008C292900BDB5
      B500DEDEDE00EFEFE700FFF7F700FFFFFF00B56363007B101000841818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      000094636300F7E7D600FFEFD600F7E7CE00F7DEC600F7DEBD00F7DEBD00F7D6
      B500F7D6AD00EFCEA500EFCE9C00EFC69400EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      000000000000000000000000B5000000B5000000B5000000B5000000B5000000
      00000000000000000000000000000000000000000000000000000000B5000000
      B5000000B5000000B50000000000000000000000000000000000000000000000
      00000000000021A5D60063CEEF0052BDE700CEFFFF0094FFFF0094FFFF0094F7
      FF0094F7FF00298C42005AE7840042CE730042CE730042CE730031C66B0031C6
      6B0021BD4A0010B5310010B5310008A5180008A5180000730800FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A5393900945A5A00A57373007B1818007B1818007B1818009C94
      9400C6C6C600DEDED600F7EFEF00FFFFFF00B56B63007B101000841818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      00009C6B6300F7E7DE00FFEFDE00F7E7D600F7E7CE00F7E7C600F7DEBD00F7DE
      B500F7D6B500F7D6AD00EFCEA500EFCE9C00EFC69400EFC68C00EFC68C00EFBD
      8400EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      00000000000000000000000000000000F7000000B5000000B5000000B5000000
      B50000000000000000000000000000000000000000000000B5000000B5000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      00000000000018A5D60084E7F70052CEE700B5E7F700A5FFFF0094FFFF0094F7
      FF0094F7FF00298C42005AE784005AE784005AE7840042CE730031C66B0042CE
      730021BD4A0021BD4A0010B5310010B5310008A5180008A5180000730800FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A53939009C636300B5949400944A4A008C424200844A4A00848C
      8C00A5A5A500C6CEC600E7EFE700FFFFFF00B56B6300731010007B1818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      00009C6B6300F7EFE700FFF7E700FFEFDE00F7E7D600F7E7CE00F7E7C600F7DE
      BD00F7DEB500F7D6B500F7D6AD00EFCEA500EFCE9C00EFC69400EFC68C00EFC6
      8C00EFBD8400E7BD7B009C6B6300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B5000000B5000000
      B5000000B50000000000000000000000B5000000B5000000B5000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000018A5D6008CE7F7006BE7F7008CCEEF00BDFFFF008CFFFF0094F7
      FF0094F7FF00298C42005AE784005AE784005AE7840042CE730042CE730031C6
      6B0042CE730021BD4A0021BD4A0010B5310010B5310008A5180000730800FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00AD424200A5525200C6948C00BD8C8C00AD848400A57B7B009C73
      73009C737300B58C8400CE9C9C00DEB5AD00B55A5A0094292900942929009C31
      3100B5424200B542420084313100000000000000000000000000000000000000
      0000A5736300F7EFEF00FFF7EF00FFEFE700F7EFDE00F7E7D600F7E7CE00F7DE
      C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCEA500EFCE9C00EFC69400EFC6
      8C00EFC68C00E7BD84009C6B6300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000B5000000
      B5000000B5000000B5000000B5000000B5000000B5000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018A5D60084E7F7008CFFFF005AC6E700D6FFFF0094FFFF0094F7
      FF0094F7FF00298C42004AAD4A0021A5390021A5390021A5390021A53900189C
      290021BD4A0031C66B0031C66B0021BD4A0010B531000073080018A5D600FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00BD4A4A00BD4A4A00BD4A4A00BD424200BD424200BD424200BD424200BD42
      4200BD424200BD424200BD424200BD424200BD424200BD4A4A00BD4A4A00BD4A
      4A00C64A4A00AD42420084313100000000000000000000000000000000000000
      0000A5736B00FFF7F700FFFFF700FFF7EF00FFEFE700FFEFDE00F7E7D600F7E7
      CE00F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCEA500EFCE9C00EFC6
      9400EFC68C00EFBD84009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B5000000B5000000F7000000B5000000F7000000B5000000B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5D60084E7F7009CFFFF004AC6E700BDE7F700BDFFFF008CFF
      FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7
      FF0021A5390031C66B0031C66B00189C2900298C42008CF7FF0029ADDE00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200B5424200B542
      4200B54A4200BD525200BD525200BD5A5A00BD5A5A00BD5A5A00BD5A5A00BD5A
      5A00BD5A5A00BD5A5A00BD5A5A00BD5A5A00BD5A5A00BD5A5A00BD5A5A00BD52
      5200BD4A4A00AD42420084313100000000000000000000000000000000000000
      0000AD7B6B00FFF7F700FFFFFF00FFFFF700FFF7EF00FFEFE700FFEFDE00F7E7
      D600F7E7CE00F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCEA500EFCE
      9C00EFCE9400EFC68C00A5736300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000B5000000B5000000B5000000F7000000B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5D60084E7F7009CFFFF00C6ADA50039B5DE00BDE7F700C6F7
      FF00C6FFFF00BDFFFF00BDFFFF00ADFFFF008CF7FF008CF7FF008CF7FF008CF7
      FF0021A5390042CE7300189C2900298C420084EFFF009CFFFF004AC6E70010A5
      D600FF00FF00000000000000000000000000A56B5A00B55252009C3131008C31
      2900A5524A00B5737300C6949400CEADAD00CEADAD00CEADAD00CEADAD00CEAD
      AD00CEADAD00CEADAD00CEADAD00CEADAD00CEADAD00CEADAD00CEB5B500C673
      7300BD424200AD42420084313100000000000000000000000000000000000000
      0000B57B6B00FFF7F700FFFFFF00FFFFFF00FFF7F700FFF7EF00FFEFE700FFEF
      DE00F7E7D600F7E7CE00F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCE
      A500EFCE9C00EFC69400A5736300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B5000000B5000000F7000000B5000000B5000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5D6008CE7F7009CFFFF00CEADA500FFF7EF0042BDE7004ABD
      DE005ABDE7006BC6E70073C6E7009CDEEF00DEFFFF009CF7FF0084F7FF008CF7
      FF0021A5390008841800428C39006BD6FF0084EFFF009CFFFF0084EFFF0021AD
      D600FF00FF00000000000000000000000000A56B5A00B552520094292900C684
      8400FFF7EF00F7E7E700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00FFEFEF00EFDEDE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000B5846B00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00FFEF
      E700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD00F7DEB500F7D6AD00F7D6
      AD00F7CEA500EFCE9C009C736300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000B5000000
      B5000000F7000000B5000000F7000000F7000000F7000000B5000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5D6008CE7F7009CFFFF00CEB5AD00FFFFF700FFEFE700FFEF
      DE00F7E7D600F7E7CE00F7DEC60039BDE70063C6E700D6F7FF00B5FFFF0084F7
      FF000073080084EFFF0084EFFF0063D6FF0084EFFF0094F7FF0094F7FF0042BD
      E700FF00FF00000000000000000000000000A56B5A00B552520094292900C694
      8C00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7DE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000BD846B00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
      EF00FFEFE700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD00F7DEB500F7D6
      AD00EFD6A500CEB594008C6B6300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000F7000000F7000000
      F7000000B5000000F70000000000000000000000F7000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000021A5D6008CE7F7009CFFFF00D6BDB500FFFFFF00FFF7EF00FFEF
      E700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD0042B5DE00A5DEEF00CEFF
      FF00B5FFFF00ADF7FF00A5F7FF007BDEFF0094EFFF009CFFFF00A5FFFF006BDE
      F70018A5D600000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00FFF7F700EFDEDE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000C68C6B00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00FFEFE700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD00E7CE
      AD00C6B59400A5947B0084636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000F7000000F7000000B5000000
      F7000000F700000000000000000000000000000000000000F7000000F7000000
      F7000000F7000000000000000000000000000000000000000000000000000000
      00000000000021A5D6008CE7F7009CFFFF00D6BDB500FFFFFF00FFFFF700FFF7
      EF00FFEFE700FFEFDE00FFE7D600F7E7CE00F7DEC600F7DEBD0039BDE7005ABD
      E700A5DEEF00ADDEF700B5E7F700BDE7F700CEEFF700CEEFFF00D6F7FF00C6EF
      FF0029ADDE00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00E7DEDE00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00DEDEDE00EFE7E700BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000C68C7300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7EF00FFEFE700FFEFDE00FFE7D600FFEFD600E7D6BD00BDAD
      9C00A59C8C00A5948400846B6300000000000000000000000000000000000000
      00000000000000000000000000000000F7000000F7000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      F7000000F7000000F70000000000000000000000000000000000000000000000
      00000000000021A5D6008CEFF70094FFFF00DEBDB500FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFEFE700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD00FFDE
      B5005AD6EF005AD6EF005ACEEF0031B5DE0021A5D60021ADD60029ADD60029AD
      D60018A5D600000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00F7EFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7DE00F7EFEF00EFE7DE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7EF00FFF7E700EFD6C6009C635A009C635A009463
      5A0094635A0094635A009C6B5A00000000000000000000000000000000000000
      000000000000000000000000F7000000F7000000F7000000F7000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000F7000000F7000000F700000000000000000000000000000000000000
      00000000000021ADD60094EFF70094FFFF00DEC6B500FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7EF00FFEFE700FFEFDE00FFE7D600F7E7CE00F7E7C600F7DE
      B500B58484008CF7FF008CF7FF0039BDE700FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00E7E7DE00C6C6C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6
      C600CEC6C600CEC6C600CEC6C600CEC6C600C6C6C600E7DEDE00EFE7E700BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFFFEF00DEC6B5009C635A00DEA56B00DE9C
      4A00E7943900EF8C2100A56B6B00000000000000000000000000000000000000
      0000000000000000F7000000F7000000F7000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000F700000000000000000000000000000000000000
      00000000000018A5D6009CE7F700A5FFFF00E7C6B500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7EF00FFEFE700FFEFDE00FFEFDE00E7DEC600C6BD
      AD00B58484009CF7FF009CEFFF0039B5DE00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00EFE7E700DED6D600DEDED600DEDED600DEDED600DEDED600DEDE
      D600DEDED600DEDED600DEDED600DEDED600DED6D600EFE7E700EFE7DE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD009C635A00EFB57300EFAD
      5200F7A53100A56B6B0000000000000000000000000000000000000000000000
      00000000F7000000F7000000F7000000F7000000F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF0052BDDE00C6FFFF00E7CEBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7EF00F7E7D600B5848400B5848400B584
      8400B584840039B5DE0039B5DE0021ADD600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00EFE7E700DED6D600DEDED600DEDED600DEDED600DEDED600DEDE
      D600DEDED600DEDED600DEDED600DEDED600DED6D600EFE7E700EFE7DE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C6009C635A00EFB57300EFA5
      5200A56B6B000000000000000000000000000000000000000000000000000000
      00000000F7000000F7000000F7000000F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF0010A5D6006BC6E700EFCEBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CECE00B5848400EFB57300EFA5
      4A00CE737B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00E7DEDE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600E7DEDE00EFE7E700BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000D69C7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE009C635A00EFB57300A56B
      6B00000000000000000000000000000000000000000000000000000000000000
      00000000F7000000F7000000F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF0010A5D600EFCEBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5848400FFC67300D67B
      8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7DE00BD73
      7300B5393900B542420084313100000000000000000000000000000000000000
      0000D6947300E7C6AD00E7C6B500E7C6B500E7C6B500E7C6B500E7C6AD00DEBD
      AD00DEBDAD00DEBDAD00D6B5AD00D6B5AD00C69C94009C635A00A56B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00EFCEB500FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700E7D6CE00B5848400D68C9400FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00AD52520094292900BD84
      8400EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700E7D6D600BD73
      7300A5393900A542420084313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00DEAD8400DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400C6738C00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000000000009C5A52008C292900A56B
      6B00B5BDBD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500C6BDBD00A56B
      6B007B2929008431310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003900000039
      0000003100000042000000390000003900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      0000003100000031000000420000004200000031000000310000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000310000003100000042000000420000003100000031
      0000003100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000039000000390000003100000042
      0000003900000039000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031000000420000005A00000073
      0000007B080000840800007B080000730000005A000000420000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000290000003100000042
      0000006B0000007B080000840800008408000084080000730000004A00000031
      0000003100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000029
      00000031000000420000006B0000007B08000084080000840800008408000073
      0000004A00000031000000310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031000000420000005A000000730000007B08000084
      0800007B080000730000005A0000004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000310000004A0000007B080000A5080000A5080000A5
      080000A5080000A5080000A5080000A5080000A50800009C0800007308000042
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004200000042000000730000009C
      080000A5080000A5080000A5080000A5080000A5080000A50800009C0800007B
      0800004A00000031000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004200000042
      000000730000009C080000A5080000A5080000A5080000A5080000A5080000A5
      0800009C0800007B0800004A0000003100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000310000004A0000007B080000A5080000A5080000A5080000A5080000A5
      080000A5080000A5080000A50800009C08000073080000420000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000310000006B000000A5080000A50800009C0800009C0800009C
      0800009C0800009C0800009C080000A5100000A5100000A5100008B5180008A5
      1800005A08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000004A000000520000009C080000A5080000A5
      0800009C0800009C0800009C0800009C0800009C0800009C0800009C080000A5
      080000A508000063000000310000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A000000520000009C
      080000A5080000A50800009C0800009C0800009C0800009C0800009C0800009C
      0800009C080000A5080000A50800006300000031000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      0000006B000000A5080000A50800009C0800009C0800009C0800009C0800009C
      0800009C080000A5100000A5100000A5100008B5180008A51800005A08000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000310000006B000000A5080000A50800009C0800009C0800009C080010A5
      1800D6F7DE00FFFFFF00ADE7B50008AD290008A5210008A5180008A5180008AD
      210008B529000063100000000000000000000000000000000000000000000000
      0000000000000000000000520800005A080000AD180000A51000009C0800009C
      0800009C0800009C0800009C0000009C0800009C0800009C0800009C0800009C
      080000A5080000A50800006B0000003100000000000000000000000000000000
      00000000000000000000000000000000000000520800005A080000AD180000A5
      1000009C0800009C0800009C0800009C0800009C0000009C0800009C0800009C
      0800009C0800009C080000A5080000A50800006B000000310000000000000000
      000000000000000000000000000000000000000000000000000000310000006B
      000000A5080000A50800009C0800009C0800009C0800009C080073D67B00EFFF
      EF004AC6520008A5290008A5210008A5180008A5180008AD210008B529000063
      1000000000000000000000000000000000000000000000000000000000000031
      00000063000000A50800009C0800009C0800009C0800009C0800009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD290008AD290008A5210008A5210008AD
      290010AD310010B53900006B1000000000000000000000000000000000000000
      00000000000000390000005A080008AD210008A5180000A5100000A51000009C
      0800009C0800009C0800009C0800009C0800009C0800009C0800009C0800009C
      0800009C0800009C080000A50800006B00000031000000000000000000000000
      000000000000000000000000000000390000005A080008AD210008A5180000A5
      100000A51000009C0800009C0800009C0800009C0800009C0800009C0800009C
      0800009C0800009C0800009C0800009C080000A50800006B0000003100000000
      00000000000000000000000000000000000000000000003100000063000000A5
      0800009C0800009C0800009C0800009C0800009C080084D68C00FFFFFF00FFFF
      FF00F7FFF70042C6630008AD290008A5210008A5210008AD290010AD310010B5
      3900006B1000000000000000000000000000000000000000000000310000004A
      000000A5080000A50800009C0800009C0800009C0800009C0800009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD290008AD290008A5210008AD290010AD
      310010AD390021B54A0018AD4A00005A08000000000000000000000000000000
      0000000000000042000008A5290008B5290008A5210008A5180000A51000009C
      080008A5100094DE9C00EFFFEF00EFFFEF0063CE6B00009C0800009C0800009C
      0800009C0800009C080000A5080000A50800004A000000000000000000000000
      00000000000000000000000000000042000008A5290008B5290008A5210008A5
      180000A51000009C0800009C0800009C080063CE6B00EFFFEF00EFFFEF0094DE
      9C0000A51000009C0800009C0800009C080000A5080000A50800004A00000000
      00000000000000000000000000000000000000310000004A000000A5080000A5
      0800009C0800009C0800009C080000A508008CDE9400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFFFF70042C65A0008A5210008AD290010AD310010AD390021B5
      4A0018AD4A00005A08000000000000000000000000000000000000310000007B
      080000A50800009C0800009C0800009C0800009C0800009C0800009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD310008AD290008AD290010AD290010AD
      310018B5420029BD5A0039C66B00109431000000000000000000000000000000
      0000004A00000873180010BD390010AD310008AD290008A51800009C100008A5
      10009CDEA500FFFFFF00FFFFFF00FFFFFF006BCE7300009C0800009C0800009C
      0800009C0800009C0800009C080000A50800007B080000310000000000000000
      00000000000000000000004A00000873180010BD390010AD310008AD290008A5
      1800009C1000009C0800009C0800009C08006BCE7300FFFFFF00FFFFFF00FFFF
      FF009CDEA50000A51000009C0800009C0800009C080000A50800007B08000031
      00000000000000000000000000000000000000310000007B080000A50800009C
      0800009C0800009C080000A5100094DE9C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7F7EF0031BD520010AD290010AD310018B5420029BD
      5A0039C66B001094310000000000000000000000000000310000004A0000009C
      0800009C0800009C0800009C0800009C0800009C0800009C0800009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD310008AD310008AD310010AD310010AD
      390018B5420031BD63005ACE840031BD63000073080000000000000000000000
      0000004A000010A5390018B5420010AD310008A5290000A5100000A5100094DE
      9C00FFFFFF00FFFFFF00FFFFFF0094DE9C0008A51000009C0800009C0800009C
      0800009C0800009C0800009C0800009C080000A5080000420000000000000000
      00000000000000000000004A000010A5390018B5420010AD310008A5290000A5
      1000009C0800009C0800009C0800009C080008A5100094DE9C00FFFFFF00FFFF
      FF00FFFFFF0094DE9C0000A50800009C0800009C0800009C080000A508000042
      000000000000000000000000000000310000004A0000009C0800009C0800009C
      0800009C080000A510009CDEA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7F7E70031BD520010AD390018B5420031BD
      63005ACE840031BD6300007308000000000000000000003100000073000000A5
      0800009C0800009C0800009C0800009C0800009C0800009C0800009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD310008AD310010AD310010AD390010AD
      390018B54A0031BD630073D69C005ACE84001094290000000000000000000052
      00000063100018BD520010B5420010AD390008A5290008A510008CDE9400FFFF
      FF00FFFFFF00FFFFFF007BD68400009C0800009C0800009C0800009C0800009C
      0800009C0800009C0800009C0800009C080000A50800005A0000003900000000
      000000000000005200000063100018BD520010B5420010AD390008A5290000A5
      1000009C0800009C0800009C0800009C0800009C0800009C08007BD68400FFFF
      FF00FFFFFF00FFFFFF008CDE9400009C0800009C0800009C080000A50800005A
      0000003900000000000000000000003100000073000000A50800009C0800009C
      0800009C080094DE9C00FFFFFF00FFFFFF00FFFFFF00A5E7AD00EFFFEF00FFFF
      FF00DEF7E700C6EFCE00FFFFFF00FFFFFF00D6F7E70029BD520018B54A0031BD
      630073D69C005ACE8400109429000000000000000000003100000084080000A5
      0800009C0800009C0800009C080063CE6B006BCE730008A51000009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD310010AD310052C67B00A5E7BD004AC6
      730018B54A0031BD630084DEA50073DE9C0021A5420000000000000000000052
      00000884210021BD520018B54A0010AD420018B542008CDE9C00FFFFFF00FFFF
      FF00FFFFFF00A5E7AD0021B5310021B5310018AD290018AD290018AD290018AD
      290018AD290018AD290010A51800009C080000A5080000730000003900000000
      000000000000005200000884210021BD520018B54A0010AD420029BD520029B5
      420021AD290021B5310029B5390021B5310021B5310021B5310018AD2900A5E7
      AD00FFFFFF00FFFFFF00FFFFFF0084D68C00009C0800009C080000A508000073
      0000003900000000000000000000003100000084080000A50800009C0800009C
      0800009C0800EFFFEF00FFFFFF00FFFFFF007BD6840018AD2900F7FFF700FFFF
      FF00CEF7D60029BD4A00D6F7DE00FFFFFF00FFFFFF00BDEFCE0018B54A0031BD
      630084DEA50073DE9C0021A542000000000000000000004200000084080000A5
      0800009C0800009C0800009C0800EFFFEF00FFFFFF0094DE9C00009C080021B5
      3100FFFFFF00FFFFFF00DEF7E70010AD390042C66B00EFFFF700FFFFFF00E7F7
      EF0021B5520031BD63008CDEAD008CDEAD0029AD42000000000000000000005A
      00001094290029BD630018B5520021B552008CDEAD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7FFF700F7FFF700FFFFFF00F7FFF700F7FFF700F7FFF700F7FF
      F700F7FFF700F7FFF700D6F7DE00009C080000A50800007B0800003100000000
      000000000000005A00001094290029BD630018B5520021B55200DEF7E700FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00FFFFFF00F7FFF700EFFF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0073D67B00009C080000A50800007B
      0800003100000000000000000000004200000084080000A50800009C0800009C
      0800009C0800EFFFEF00FFFFFF0094DE9C00009C080021B53100FFFFFF00FFFF
      FF00DEF7E70010AD390042C66B00EFFFF700FFFFFF00E7F7EF0021B5520031BD
      63008CDEAD008CDEAD0029AD42000000000000000000004200000084080000A5
      0800009C0800009C0000009C0800EFFFEF00FFFFFF00FFFFFF007BD6840021B5
      3100F7FFF700FFFFFF00D6F7E70039BD6300D6F7E700FFFFFF00FFFFFF00BDEF
      CE0029BD5A0039BD6B009CE7B50094E7B50021AD420000000000000000000063
      0000189C390042C6730021B5520021B55200F7FFF700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00009C080000A5080000840800004200000000
      00000000000000630000189C390042C6730021B5520021B55200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFFFEF00009C080000A508000084
      0800004200000000000000000000004200000084080000A50800009C0800009C
      0000009C080063CE6B006BCE730008A51000009C080021B53100F7FFFF00FFFF
      FF00DEF7E70021B54A0018B552005ACE8400A5E7BD004AC67B0029BD5A0039BD
      6B009CE7B50094E7B50021AD4200000000000000000000310000007B080000A5
      0800009C0800009C0800009C080094DE9C00FFFFFF00FFFFFF00FFFFFF00A5E7
      AD00F7FFF700FFFFFF00E7F7EF00CEEFD600FFFFFF00FFFFFF00DEF7E70039C6
      6B0018B54A0052C67B00B5EFCE0094E7B50021AD42000000000000000000006B
      0800189C39005AD68C0039BD6B0021B5520063CE8C00F7FFFF00FFFFFF00FFFF
      FF00FFFFFF00E7F7EF00D6F7E700DEF7E700D6F7DE00D6F7DE00D6F7DE00D6F7
      DE00D6F7DE00D6F7DE00ADE7B500009C080000A50800007B0800003900000000
      000000000000006B0800189C39005AD68C0039BD6B0021B55200BDEFCE00DEF7
      E700DEF7E700DEF7E700DEF7E700DEF7E700DEF7E700DEF7E700CEF7D600DEF7
      E700FFFFFF00FFFFFF00FFFFFF00F7FFF7004AC65200009C080000A50800007B
      080000390000000000000000000000310000007B080000A50800009C0800009C
      0800009C0800009C0800009C0800009C0800009C080021B53100F7FFFF00FFFF
      FF00DEF7E70029B55A0021B5520021B5520021B5520021B5520018B54A0052C6
      7B00B5EFCE0094E7B50021AD4200000000000000000000310000006B000000A5
      0800009C0800009C0800009C080008A510009CDEA500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7F7EF0042C66B0018B5
      520018B552006BD69400C6EFD60084DEA50018A5290000000000000000000073
      0800189431006BD694005ACE840021B5520021B552005ACE8400F7FFF700FFFF
      FF00FFFFFF00CEEFD60039BD630010AD390010AD310010AD310010AD310010AD
      310010AD290010AD290008AD290000A5100000A5080000730000003900000000
      00000000000000730800189431006BD694005ACE840021B5520021B5520029B5
      5A0029B55A0029B55A0029B55A0029B55A0021B54A0010AD390029BD4A00C6EF
      CE00FFFFFF00FFFFFF00EFFFF70042C6630008A5290000A5100000A508000073
      000000390000000000000000000000310000006B000000A50800009C0800009C
      0800009C0800009C0800009C0800009C0800009C080029B53900F7FFFF00FFFF
      FF00DEF7E70029B55A0021B5520021B5520021B5520018B5520018B552006BD6
      9400C6EFD60084DEA50018A5290000000000000000000031000000420000009C
      080000A50800009C0800009C0800009C080008A5100094DE9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFFFEF004AC6730018B5520010AD
      4A0039C66B00A5E7BD00BDEFD60052C67B00189C290000000000000000000000
      0000088C18006BD694008CDEA50039C66B0010AD4A0021B5520052C67B00EFFF
      EF00FFFFFF00FFFFFF00D6F7E70042C66B0010AD310008AD310008AD310008AD
      290008AD290008AD290008A5210000A5100000A50800005A0000000000000000
      00000000000000000000088C18006BD694008CDEA50039C66B0010AD4A0021B5
      520021B5520021B5520021B5520021B5520018B5520042C66B00D6F7DE00FFFF
      FF00FFFFFF00E7F7EF0042C65A0008AD290008A5210000A5100000A50800005A
      00000000000000000000000000000031000000420000009C080000A50800009C
      0800009C0800009C0800009C0800009C0800009C080021B53100F7FFFF00FFFF
      FF00DEF7E70029B55A0021B5520021B5520018B5520010AD4A0039C66B00A5E7
      BD00BDEFD60052C67B00189C2900000000000000000000000000003100000073
      000000A50800009C080000A5100000A51000009C100000A510008CDE9400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7FFF70052C67B0018B5520010AD420029BD
      5A0073D69C00D6F7DE009CE7BD0018A531000000000000000000000000000000
      0000089418004AC66B00A5E7C60073D69C0029BD5A0010B54A0018B552004AC6
      7300E7F7EF00FFFFFF00FFFFFF00EFFFF70052C67B0010AD310008AD310008AD
      290008A5210008A5210008A5180000A51000009C080000420000000000000000
      00000000000000000000089418004AC66B00A5E7C60073D69C0029BD5A0010B5
      4A0018B5520021B5520021B5520021B552005ACE8400EFFFF700FFFFFF00FFFF
      FF00E7F7E70031BD520008A5210008A5210008A5180000A51000009C08000042
      000000000000000000000000000000000000003100000073000000A50800009C
      080000A5100000A51000009C1000009C0800009C080021AD2900F7FFFF00FFFF
      FF00DEF7E70029B55A0021B5520018B5520010AD420029BD5A0073D69C00D6F7
      DE009CE7BD0018A5310000000000000000000000000000000000002900000042
      0000009C080000A5100000A5100008A5180008A5180000A5100008A510008CDE
      9C00FFFFFF00FFFFFF00F7FFFF005ACE840021B5520010B54A0021B552005ACE
      8400BDEFD600C6EFD6004AC67300189C29000000000000000000000000000000
      00000000000018A531009CE7BD00B5EFC6005ACE840021B5520010AD420018B5
      520042C66B00DEF7E700FFFFFF00FFFFFF00A5E7BD0010AD390010AD310010AD
      290008AD290008A5210008A5180008B518000073080000000000000000000000
      000000000000000000000000000018A531009CE7BD00B5EFC6005ACE840021B5
      520010AD420018B5520021B5520021B55200A5E7BD00FFFFFF00FFFFFF00D6F7
      E70031BD520010AD290008AD290008A5210008A5180008B51800007308000000
      0000000000000000000000000000000000000029000000420000009C080000A5
      100000A5100008A5180008A5180000A5100000A5100029B54200FFFFFF00FFFF
      FF00DEF7E70029B55A0021B5520010B54A0021B552005ACE8400BDEFD600C6EF
      D6004AC67300189C290000000000000000000000000000000000000000000042
      00000052000000AD180008A5180008A5210008AD290008A5290008A5290018B5
      42008CDEAD00F7FFF70063CE8C0021B5520010AD4A0029BD5A005ACE8400B5EF
      C600C6EFD6006BD69400189C2900000000000000000000000000000000000000
      00000000000029A531004AC66B00B5EFCE00B5EFC6005ACE840029BD5A0010AD
      4A0018B5520039C66B00BDEFCE00E7F7EF004AC6730010AD390010AD390010AD
      310010AD310008AD290008AD210008A518000042000000000000000000000000
      000000000000000000000000000029A531004AC66B00B5EFCE00B5EFC6005ACE
      840029BD5A0010AD4A0018B5520021B552004AC67B00E7F7EF00BDEFCE0029BD
      520010AD390010AD310010AD310008AD290008AD210008A51800004200000000
      00000000000000000000000000000000000000000000004200000052000000AD
      180008A5180008A5210008AD290008A5290008A5290029BD5200DEF7E700FFFF
      FF00BDEFCE0021B5520010AD4A0029BD5A005ACE8400B5EFC600C6EFD6006BD6
      9400189C29000000000000000000000000000000000000000000000000000000
      0000004A0000005A080008AD210008B5290010AD310010AD310010AD390010AD
      420021B5520021B5520021B5520021B5520039C66B0073D69C00B5EFC600B5EF
      CE006BD68C001094210000000000000000000000000000000000000000000000
      00000000000000000000109C21006BD68C00C6EFD600BDEFD60073D69C0039C6
      6B0018B5520018B54A0029BD5A0021B5520018B54A0018B54A0018B5420018B5
      420010AD390010AD310008B52900005A08000000000000000000000000000000
      000000000000000000000000000000000000109C21006BD68C00C6EFD600BDEF
      D60073D69C0039C66B0018B5520018B54A0029BD5A0021B5520018B54A0018B5
      4A0018B5420018B5420010AD390010AD310008B52900005A0800000000000000
      0000000000000000000000000000000000000000000000000000004A0000005A
      080008AD210008B5290010AD310010AD310010AD390010AD420021B5520021B5
      520021B5520021B5520039C66B0073D69C00B5EFC600B5EFCE006BD68C001094
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000520800005A080008A5290010BD390018B5420010B5420018B5
      4A0018B5520021B5520039BD6B005ACE84008CDEA500A5E7C6009CE7BD004AC6
      6B00109C21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000109421006BD69400C6EFD600D6F7DE00A5E7
      BD006BD6940052C67B0039BD6B0031BD630031BD630031BD630031BD630029BD
      5A0021B54A0010B5390000631000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000109421006BD69400C6EF
      D600D6F7DE00A5E7BD006BD6940052C67B0039BD6B0031BD630031BD630031BD
      630031BD630029BD5A0021B54A0010B539000063100000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000052
      0800005A080008A5290010BD390018B5420010B5420018B54A0018B5520021B5
      520039BD6B005ACE84008CDEA500A5E7C6009CE7BD004AC66B00109C21000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000390000004200000873180010A5390018BD520021BD
      520029BD630042C673005AD68C006BD694006BD694004AC66B0018A5310029A5
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000189C29004AC673009CE7BD00BDEF
      D600C6EFD600B5EFCE009CE7B5008CDEAD0084DEA50073D69C005ACE840039C6
      6B0018AD4A00006B100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000189C29004AC6
      73009CE7BD00BDEFD600C6EFD600B5EFCE009CE7B5008CDEAD0084DEA50073D6
      9C005ACE840039C66B0018AD4A00006B10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000390000004200000873180010A5390018BD520021BD520029BD630042C6
      73005AD68C006BD694006BD694004AC66B0018A5310029A53100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004A0000004A0000006310000884
      210010942900189C3900189C390018943100088C180008941800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000189C290018A5310052C6
      7B0084DEA50094E7B50094E7B5008CDEAD0073DE9C005ACE840031BD63001094
      3100005A08000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000189C
      290018A5310052C67B0084DEA50094E7B50094E7B5008CDEAD0073DE9C005ACE
      840031BD630010943100005A0800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000004A0000004A0000006310000884210010942900189C
      3900189C390018943100088C1800089418000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000005200000052
      0000005A000000630000006B0800007308000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000189C
      290018A5290021AD420021AD420029AD420021A5420010942900007308000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000189C290018A5290021AD420021AD420029AD420021A542001094
      2900007308000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000052000000520000005A00000063
      0000006B08000073080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000680000004E0000000100010000000000E00400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFF0000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00003FC0000F0000000000000000000
      F00007FC0001F0000000000000000000F0000FFC0003F0000000000000000000
      F0001FFC0007F0000000000000000000FFFFFFFFFFFFF0000000000000000000
      FFFFFFFFFFFFF0000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      F00001FFFFFFFF000007800003000000F00001FFFFFF38000007000001000000
      F00001FFFFFE38000007000001000000F00001F8FFFC78000007000001000000
      F00001F87FF0F8000007000001000000F00001F83FE1F8000007000001000000
      F00001FC1FC3F8000007000001000000F00001FE0F87F8000007000001000000
      F00001FF860FF8000007000001000000F00001FFC01FF8000007000001000000
      F00001FFE03FF8000007000001000000F00001FFF07FF8000007000001000000
      F00001FFE03FF8000007000001000000F00001FFC01FF8000007000001000000
      F00001FF830FF8000007000001000000F00001FF0787F8000007000001000000
      F00001FE0FE3F8000007000001000000F00001FC1FF1F8000007000001000000
      F00001F83FFDF8000007000001000000F00003F07FFFF8000007000001000000
      F00007F0FFFFF8000007000001000000F0000FF1FFFFF8000007000001000000
      F0001FFFFFFFF8000007000001000000FFFFFFFFFFFFF8000007800003000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFC0FFFFE01FFFF807FFFF03FF000000FF003FFF8007FFE001FFFC00FF000000
      FC000FFF0003FFC000FFF0003F000000F80007FE0001FF80007FE0001F000000
      F00003FC0000FF00003FC0000F000000E00001F800007E00001F800007000000
      C00000F800007E00001F000003000000C00000F000003C00000F000003000000
      8000007000003C00000E00000100000080000060000018000006000001000000
      8000006000001800000600000100000080000060000018000006000001000000
      8000006000001800000600000100000080000060000018000006000001000000
      800000600000180000060000010000008000007000003C00000E000001000000
      C00000F000003C00000F000003000000C00000F800007E00001F000003000000
      E00001F800007E00001F800007000000F00003FC0000FF00003FC0000F000000
      F80007FE0001FF80007FE0001F000000FC000FFF0003FFC000FFF0003F000000
      FF003FFF8007FFE001FFFC00FF000000FFC0FFFFE01FFFF807FFFF03FF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      000000000000}
  end
  inherited cdsManuBD: TClientDataSetUrb
    CommandText = 
      'SELECT ID_Usuario,    Login,    Senha,    Nome,    ID_Setor,    ' +
      'Ramal,    Email,    ID_Emissor_Ident,    CPF,    Identidade,    ' +
      'TelResidencia,    TelCelPessoal,    TelCelEmpresa,    ID_Sexo,  ' +
      '  ID_Logra_Tipo,    ID_Logradouro,    Logra_Numero,    ID_Tratam' +
      'ento,    SobreNome,    Logra_Complemento,    ID_Logra_Bairro,   ' +
      ' Logra_CEP,    LograCidade,    LograUF,    Obs    FROM usuario u' +
      ';'
    object cdsManuBDID_Usuario: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'ID. Usu'#225'rio'
      FieldName = 'ID_Usuario'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 30
    end
    object cdsManuBDSobreNome: TStringField
      FieldName = 'SobreNome'
      Size = 30
    end
    object cdsManuBDLogin: TStringField
      FieldName = 'Login'
      Required = True
    end
    object cdsManuBDSenha: TStringField
      FieldName = 'Senha'
      Required = True
      Visible = False
    end
    object cdsManuBDID_Setor: TIntegerField
      FieldName = 'ID_Setor'
      Required = True
      Visible = False
    end
    object cdsManuBDRamal: TStringField
      FieldName = 'Ramal'
      Size = 4
    end
    object cdsManuBDEmail: TStringField
      FieldName = 'Email'
      Size = 30
    end
    object cdsManuBDIdentidade: TStringField
      FieldName = 'Identidade'
      Size = 15
    end
    object cdsManuBDDescSetor: TStringField
      DisplayLabel = 'Setor'
      FieldKind = fkLookup
      FieldName = 'DescSetor'
      LookupDataSet = cdsSetor
      LookupKeyFields = 'ID_Setor'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Setor'
      Lookup = True
    end
    object cdsManuBDID_Emissor_Ident: TIntegerField
      FieldName = 'ID_Emissor_Ident'
    end
    object cdsManuBDCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\-00;0;_'
      Size = 11
    end
    object cdsManuBDTelResidencia: TStringField
      FieldName = 'TelResidencia'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 11
    end
    object cdsManuBDTelCelPessoal: TStringField
      FieldName = 'TelCelPessoal'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 11
    end
    object cdsManuBDTelCelEmpresa: TStringField
      FieldName = 'TelCelEmpresa'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 11
    end
    object cdsManuBDID_Sexo: TIntegerField
      FieldName = 'ID_Sexo'
    end
    object cdsManuBDID_Logra_Tipo: TIntegerField
      FieldName = 'ID_Logra_Tipo'
    end
    object cdsManuBDID_Logradouro: TIntegerField
      FieldName = 'ID_Logradouro'
    end
    object cdsManuBDLogra_Complemento: TStringField
      FieldName = 'Logra_Complemento'
      Size = 30
    end
    object cdsManuBDID_Logra_Bairro: TIntegerField
      FieldName = 'ID_Logra_Bairro'
    end
    object cdsManuBDLogra_CEP: TStringField
      FieldName = 'Logra_CEP'
      Size = 8
    end
    object cdsManuBDLograCidade: TStringField
      FieldName = 'LograCidade'
      Size = 30
    end
    object cdsManuBDLograUF: TStringField
      FieldName = 'LograUF'
      Size = 3
    end
    object cdsManuBDDescTratamento: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTratamento'
      LookupDataSet = cdsTratamento
      LookupKeyFields = 'ID_tratamento'
      LookupResultField = 'Sigla'
      KeyFields = 'ID_Tratamento'
      Visible = False
      Size = 5
      Lookup = True
    end
    object cdsManuBDObs: TBlobField
      FieldName = 'Obs'
      Size = 1
    end
    object cdsManuBDID_Tratamento: TIntegerField
      FieldName = 'ID_Tratamento'
    end
    object cdsManuBDDescSexo: TStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescSexo'
      LookupDataSet = cdsSexo
      LookupKeyFields = 'ID_Sexo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Sexo'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescLograTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'DescLograTipo'
      LookupDataSet = cdsLograTipo
      LookupKeyFields = 'ID_logra_tipo'
      LookupResultField = 'Sigla'
      KeyFields = 'ID_Logra_Tipo'
      Size = 5
      Lookup = True
    end
    object cdsManuBDDescLogradouro: TStringField
      DisplayLabel = 'Logradouro'
      FieldKind = fkLookup
      FieldName = 'DescLogradouro'
      LookupDataSet = cdsLogradouro
      LookupKeyFields = 'ID_logradouro'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Logradouro'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescLograBairro: TStringField
      DisplayLabel = 'Bairro'
      FieldKind = fkLookup
      FieldName = 'DescLograBairro'
      LookupDataSet = cdsLograBairro
      LookupKeyFields = 'ID_Logra_Bairro'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Logra_Bairro'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescOrgaoEmissor: TStringField
      DisplayLabel = 'Org'#227'o Emissor'
      FieldKind = fkLookup
      FieldName = 'DescOrgaoEmissor'
      LookupDataSet = cdsOrgaoEmissor
      LookupKeyFields = 'ID_Orgao_Emissor'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Emissor_Ident'
      Size = 30
      Lookup = True
    end
    object cdsManuBDLogra_Numero: TIntegerField
      FieldName = 'Logra_Numero'
    end
  end
  inherited ppmVisualizar: TPopupMenu
    Left = 362
    Top = 2
  end
  inherited sqlManuBD: TSQLDataSet
    CommandText = 
      'SELECT ID_Usuario,    Login,    Senha,    Nome,    ID_Setor,    ' +
      'Ramal,    Email,    ID_Emissor_Ident,    CPF,    Identidade,    ' +
      'TelResidencia,    TelCelPessoal,    TelCelEmpresa,    ID_Sexo,  ' +
      '  ID_Logra_Tipo,    ID_Logradouro,    Logra_Numero,    ID_Tratam' +
      'ento,    SobreNome,    Logra_Complemento,    ID_Logra_Bairro,   ' +
      ' Logra_CEP,    LograCidade,    LograUF,    Obs    FROM usuario u' +
      ';'
    MaxBlobSize = 1
  end
  object cdsSetor: TClientDataSetUrb
    Aggregates = <>
    CommandText = 'select ID_Setor, Descricao from setor order by Descricao'
    Params = <>
    ProviderName = 'dspSetor'
    Left = 490
    Top = 5
    object cdsSetorID_Setor: TIntegerField
      FieldName = 'ID_Setor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSetorDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
    end
  end
  object sqlSetor: TSQLDataSet
    CommandText = 'select ID_Setor, Descricao from setor order by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 436
    Top = 5
  end
  object dspSetor: TDataSetProviderUrb
    DataSet = sqlSetor
    Options = [poAllowCommandText]
    Left = 463
    Top = 6
  end
  object sqlTratamento: TSQLDataSet
    CommandText = 
      'SELECT ID_tratamento, Descricao, Sigla FROM tratamento ORDER BY ' +
      'Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 46
    Top = 6
  end
  object dspTratamento: TDataSetProviderUrb
    DataSet = sqlTratamento
    Options = [poAllowCommandText]
    Left = 74
    Top = 7
  end
  object cdsTratamento: TClientDataSetUrb
    Active = True
    Aggregates = <>
    CommandText = 
      'SELECT ID_tratamento, Descricao, Sigla FROM tratamento ORDER BY ' +
      'Descricao'
    Params = <>
    ProviderName = 'dspTratamento'
    Left = 102
    Top = 7
    object cdsTratamentoID_tratamento: TIntegerField
      FieldName = 'ID_tratamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTratamentoDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
    object cdsTratamentoSigla: TStringField
      FieldName = 'Sigla'
      Size = 5
    end
  end
  object sqlSexo: TSQLDataSet
    CommandText = 'SELECT s.ID_Sexo, s.Descricao FROM sexo s ORDER BY s.Descricao;'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 564
    Top = 156
  end
  object dspSexo: TDataSetProviderUrb
    DataSet = sqlSexo
    Options = [poAllowCommandText]
    Left = 593
    Top = 156
  end
  object cdsSexo: TClientDataSetUrb
    Aggregates = <>
    CommandText = 'SELECT s.ID_Sexo, s.Descricao FROM sexo s ORDER BY s.Descricao;'
    Params = <>
    ProviderName = 'dspSexo'
    Left = 621
    Top = 156
    object cdsSexoID_Sexo: TIntegerField
      FieldName = 'ID_Sexo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSexoDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object sqlLograTipo: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 74
    Top = 168
  end
  object dspLograTipo: TDataSetProviderUrb
    DataSet = sqlLograTipo
    Options = [poAllowCommandText]
    Left = 102
    Top = 168
  end
  object cdsLograTipo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLograTipo'
    Left = 130
    Top = 168
    object cdsLograTipoID_logra_tipo: TIntegerField
      FieldName = 'ID_logra_tipo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLograTipoDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
    object cdsLograTipoSigla: TStringField
      FieldName = 'Sigla'
      Required = True
      Size = 5
    end
  end
  object sqlLogradouro: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 177
    Top = 170
  end
  object dspLogradouro: TDataSetProviderUrb
    DataSet = sqlLogradouro
    Options = [poAllowCommandText]
    Left = 205
    Top = 170
  end
  object cdsLogradouro: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogradouro'
    Left = 233
    Top = 170
    object cdsLogradouroID_logradouro: TIntegerField
      FieldName = 'ID_logradouro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLogradouroDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object sqlLograBairro: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 49
    Top = 310
  end
  object dspLograBairro: TDataSetProviderUrb
    DataSet = sqlLograBairro
    Options = [poAllowCommandText]
    Left = 77
    Top = 310
  end
  object cdsLograBairro: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLograBairro'
    Left = 105
    Top = 310
    object cdsLograBairroID_Logra_Bairro: TIntegerField
      FieldName = 'ID_Logra_Bairro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLograBairroDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object sqlOrgaoEmissor: TSQLDataSet
    CommandText = 'select ID_Setor, Descricao from setor order by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 652
    Top = 18
  end
  object dspOrgaoEmissor: TDataSetProviderUrb
    DataSet = sqlOrgaoEmissor
    Options = [poAllowCommandText]
    Left = 679
    Top = 19
  end
  object cdsOrgaoEmissor: TClientDataSetUrb
    Aggregates = <>
    CommandText = 
      'SELECT o.ID_Orgao_Emissor, o.Descricao FROM orgao_emissor o ORDE' +
      'R BY o.Descricao;'
    Params = <>
    ProviderName = 'dspSetor'
    Left = 706
    Top = 18
    object cdsOrgaoEmissorID_Orgao_Emissor: TIntegerField
      FieldName = 'ID_Orgao_Emissor'
      Required = True
    end
    object cdsOrgaoEmissorDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
end
