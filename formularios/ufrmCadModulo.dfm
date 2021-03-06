inherited frmCadModulo: TfrmCadModulo
  Left = 368
  Caption = 'Cadastro de M'#243'dulos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    inherited pgcManutencaoBD: TPageControl
      inherited tbsCadastro: TTabSheet
        inherited pnlCadastro: TPanel
          object Label1: TLabel
            Left = 17
            Top = 31
            Width = 35
            Height = 13
            Caption = 'Grupo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 177
            Top = 31
            Width = 31
            Height = 13
            Caption = 'Setor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 17
            Top = 87
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
          object Label4: TLabel
            Left = 17
            Top = 135
            Width = 82
            Height = 13
            Caption = 'Nome do Form'
            FocusControl = txtNomeForm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object txtDescricao: TDBEdit
            Left = 17
            Top = 103
            Width = 294
            Height = 21
            DataField = 'Descricao'
            DataSource = dtsManuBD
            TabOrder = 2
          end
          object txtNomeForm: TDBEdit
            Left = 17
            Top = 151
            Width = 294
            Height = 21
            DataField = 'Nome_Form'
            DataSource = dtsManuBD
            TabOrder = 3
          end
          object dblGrupo: TDBLookupComboBox
            Left = 17
            Top = 47
            Width = 134
            Height = 21
            DataField = 'DescGrupo'
            DataSource = dtsManuBD
            TabOrder = 0
          end
          object dblSetor: TDBLookupComboBox
            Left = 177
            Top = 47
            Width = 134
            Height = 21
            DataField = 'DescSetor'
            DataSource = dtsManuBD
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_Modulo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'ID. Modulo'
      FieldName = 'ID_Modulo'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDID_Grupo: TIntegerField
      FieldName = 'ID_Grupo'
      Required = True
      Visible = False
    end
    object cdsManuBDID_Setor: TIntegerField
      FieldName = 'ID_Setor'
      Required = True
      Visible = False
    end
    object cdsManuBDDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
    object cdsManuBDNome_Form: TStringField
      DisplayLabel = 'Nome do Form'
      FieldName = 'Nome_Form'
      Required = True
      Size = 40
    end
    object cdsManuBDDescGrupo: TStringField
      DisplayLabel = 'Grupo'
      FieldKind = fkLookup
      FieldName = 'DescGrupo'
      LookupDataSet = cdsGrupo
      LookupKeyFields = 'ID_Grupo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Grupo'
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescSetor: TStringField
      DisplayLabel = 'Setor'
      FieldKind = fkLookup
      FieldName = 'DescSetor'
      LookupDataSet = cdsSetor
      LookupKeyFields = 'ID_Setor'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Setor'
      Size = 30
      Lookup = True
    end
  end
  object cdsGrupo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 82
    Top = 60
    object cdsGrupoID_Grupo: TIntegerField
      FieldName = 'ID_Grupo'
      Required = True
    end
    object cdsGrupoDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsGrupo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGrupo
    Left = 110
    Top = 60
  end
  object cdsSetor: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetor'
    Left = 226
    Top = 60
    object cdsSetorID_Setor: TIntegerField
      FieldName = 'ID_Setor'
      Required = True
    end
    object cdsSetorDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
    end
  end
  object dtsSetor: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsSetor
    Left = 254
    Top = 60
  end
  object sqlGrupo: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 26
    Top = 58
  end
  object dspGrupo: TDataSetProviderUrb
    DataSet = sqlGrupo
    Options = [poAllowCommandText]
    Left = 54
    Top = 58
  end
  object sqlSetor: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 170
    Top = 66
  end
  object dspSetor: TDataSetProviderUrb
    DataSet = sqlSetor
    Options = [poAllowCommandText]
    Left = 198
    Top = 66
  end
end
