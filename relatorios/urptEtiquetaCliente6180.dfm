inherited rptEtiquetaCliente6180: TrptEtiquetaCliente6180
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Page.Values = (
    130.000000000000000000
    2794.000000000000000000
    130.000000000000000000
    2159.000000000000000000
    40.000000000000000000
    40.000000000000000000
    30.000000000000000000)
  inherited DetailBand1: TQRBand
    Size.Values = (
      251.354166666666700000
      672.041666666666800000)
    object expNome: TQRExpr
      Left = 11
      Top = 20
      Width = 234
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333300000
        29.104166666666700000
        52.916666666666700000
        619.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'cdsClientes.CODIGO + '#39' - '#39' + cdsClientes.NOME'
      FontSize = 7
    end
    object expBairroCep: TQRExpr
      Left = 11
      Top = 45
      Width = 234
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333300000
        29.104166666666700000
        119.062500000000000000
        619.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'cdsClientes.BAIRRO'
      FontSize = 7
    end
    object expCep_UF: TQRExpr
      Left = 11
      Top = 71
      Width = 234
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333300000
        29.104166666666700000
        187.854166666667000000
        619.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'cdsClientes.CEP'
      FontSize = 7
    end
    object QRExpr1: TQRExpr
      Left = 11
      Top = 58
      Width = 234
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333300000
        29.104166666666700000
        153.458333333333000000
        619.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'cdsClientes.MUNICIPIO + '#39' - '#39' + cdsClientes.UF'
      FontSize = 7
    end
    object expEndereco: TQRExpr
      Left = 11
      Top = 33
      Width = 234
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333340000
        29.104166666666670000
        87.312500000000000000
        619.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'cdsClientes.ENDERECO'
      FontSize = 7
    end
  end
end
