inherited frmModPageControlWizard: TfrmModPageControlWizard
  Left = 104
  Top = 96
  Caption = 'frmModPageControlWizard'
  ClientHeight = 264
  ClientWidth = 366
  Position = poMainFormCenter
  OnCreate = FormCreate
  ExplicitWidth = 374
  ExplicitHeight = 298
  DesignSize = (
    366
    264)
  PixelsPerInch = 96
  TextHeight = 13
  object btnProximo: TSpeedButton
    Left = 188
    Top = 230
    Width = 83
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Pr'#243'ximo >>'
    OnClick = btnProximoClick
    ExplicitLeft = 192
    ExplicitTop = 234
  end
  object btnFinalizar: TSpeedButton
    Left = 274
    Top = 230
    Width = 83
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Finalizar'
    Enabled = False
    ExplicitLeft = 278
    ExplicitTop = 234
  end
  object btnAnterior: TSpeedButton
    Left = 102
    Top = 230
    Width = 83
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '<< &Anterior'
    Enabled = False
    OnClick = btnAnteriorClick
    ExplicitLeft = 106
    ExplicitTop = 234
  end
  object pgcMain: TPageControl
    Left = 8
    Top = 8
    Width = 349
    Height = 214
    Anchors = [akLeft, akTop, akRight, akBottom]
    Style = tsFlatButtons
    TabOrder = 0
    ExplicitWidth = 353
    ExplicitHeight = 218
  end
end
