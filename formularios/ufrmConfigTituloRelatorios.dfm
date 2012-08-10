inherited frmConfigTituloRelatorios: TfrmConfigTituloRelatorios
  Left = 312
  Top = 230
  Caption = 'Configura T'#237'tulo do Relat'#243'rio'
  ClientHeight = 139
  ClientWidth = 362
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 13
    Top = 7
    Width = 144
    Height = 13
    Caption = 'Digite um t'#237'tulo para o relat'#243'rio'
  end
  object Label1: TLabel
    Left = 13
    Top = 55
    Width = 164
    Height = 13
    Caption = 'Digite um sub-t'#237'tulo para o relat'#243'rio'
  end
  object txtTitulo: TEdit
    Left = 13
    Top = 22
    Width = 337
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object txtSubTitulo: TEdit
    Left = 13
    Top = 70
    Width = 337
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object btnOk: TButton
    Left = 275
    Top = 103
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Ok'
    TabOrder = 2
    OnClick = btnOkClick
  end
end
