inherited frmModPageControl: TfrmModPageControl
  Left = 244
  Top = 175
  Caption = 'frmModPageControl'
  ClientHeight = 258
  ClientWidth = 370
  PixelsPerInch = 96
  TextHeight = 13
  object btnAplicar: TSpeedButton
    Left = 208
    Top = 232
    Width = 73
    Height = 22
    Anchors = [akRight, akBottom]
    Caption = '&Aplicar'
  end
  object btnCancelar: TSpeedButton
    Left = 288
    Top = 232
    Width = 73
    Height = 22
    Anchors = [akRight, akBottom]
    Caption = '&Cancelar'
    OnClick = btnCancelarClick
  end
  object PageControl: TPageControl
    Left = 8
    Top = 8
    Width = 353
    Height = 218
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
end
