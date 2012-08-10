object frmValidadorSenhaBD: TfrmValidadorSenhaBD
  Left = 362
  Top = 164
  BorderStyle = bsDialog
  Caption = 'Validador de Senha do BD'
  ClientHeight = 203
  ClientWidth = 225
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblNomeDoBanco: TLabel
    Left = 7
    Top = 68
    Width = 77
    Height = 13
    Caption = 'Nome do Banco'
  end
  object lblLogin: TLabel
    Left = 7
    Top = 94
    Width = 26
    Height = 13
    Caption = 'Login'
  end
  object lblBancoDeDados: TLabel
    Left = 7
    Top = 42
    Width = 80
    Height = 13
    Caption = 'Banco de Dados'
  end
  object lblHost: TLabel
    Left = 7
    Top = 16
    Width = 22
    Height = 13
    Caption = 'Host'
  end
  object lblSenha: TLabel
    Left = 7
    Top = 120
    Width = 70
    Height = 13
    Caption = 'Digite a Senha'
  end
  object lblSenhaConfirmacao: TLabel
    Left = 7
    Top = 147
    Width = 59
    Height = 13
    Caption = 'Confirma'#231#227'o'
  end
  object txtNomeDoBanco: TEdit
    Left = 95
    Top = 60
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object txtLogin: TEdit
    Left = 95
    Top = 86
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object cbxBancoDeDados: TComboBox
    Left = 95
    Top = 34
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    OnChange = cbxBancoDeDadosChange
    Items.Strings = (
      'MS SQL Server'
      'MySQL'
      'Oracle')
  end
  object txtHost: TEdit
    Left = 95
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnOk: TBitBtn
    Left = 7
    Top = 171
    Width = 75
    Height = 25
    TabOrder = 6
    OnClick = btnOkClick
    Kind = bkOK
  end
  object btnCancelar: TBitBtn
    Left = 141
    Top = 171
    Width = 75
    Height = 25
    TabOrder = 7
    OnClick = btnCancelarClick
    Kind = bkCancel
  end
  object txtSenhaConfirmacao: TMaskEdit
    Left = 95
    Top = 139
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 5
  end
  object txtSenha: TMaskEdit
    Left = 95
    Top = 112
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
end
