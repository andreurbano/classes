inherited frmCadGrupo: TfrmCadGrupo
  Caption = 'Cadastro de Grupos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    inherited pgcManutencaoBD: TPageControl
      inherited tbsCadastro: TTabSheet
        inherited pnlCadastro: TPanel
          object Label1: TLabel
            Left = 32
            Top = 83
            Width = 58
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = txtDescricao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object txtDescricao: TDBEdit
            Left = 32
            Top = 99
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
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_Grupo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'ID. Grupo'
      FieldName = 'ID_Grupo'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
end
