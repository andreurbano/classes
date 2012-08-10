inherited frmCadSetor: TfrmCadSetor
  Top = 158
  Caption = 'Cadastro de Setores'
  ClientHeight = 268
  ClientWidth = 427
  ExplicitWidth = 435
  ExplicitHeight = 295
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 338
    Height = 234
    ExplicitWidth = 338
    ExplicitHeight = 234
    inherited pgcManutencaoBD: TPageControl
      Width = 318
      Height = 216
      ExplicitWidth = 318
      ExplicitHeight = 216
      inherited tbsListagem: TTabSheet
        inherited pnlListagem: TPanel
          Width = 310
          Height = 206
          ExplicitWidth = 310
          ExplicitHeight = 206
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 308
            Height = 204
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        ExplicitWidth = 310
        ExplicitHeight = 206
        inherited pnlCadastro: TPanel
          Width = 310
          Height = 206
          object Label2: TLabel
            Left = 23
            Top = 84
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = txtDescricao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object txtDescricao: TDBEdit
            Left = 23
            Top = 100
            Width = 264
            Height = 21
            DataField = 'Descricao'
            DataSource = dtsManuBD
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited stbManutencaoBD: TStatusBar
    Top = 249
    Width = 427
    ExplicitTop = 249
    ExplicitWidth = 427
  end
  inherited pnlBotoes: TPanel
    Left = 349
    Height = 234
    ExplicitLeft = 349
    ExplicitHeight = 234
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_Setor: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Id.'
      FieldName = 'ID_Setor'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 34
      FieldName = 'Descricao'
      Required = True
    end
  end
end
