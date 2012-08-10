inherited frmCadAgencias: TfrmCadAgencias
  Left = 232
  Top = 164
  Caption = 'Cadastro de Ag'#234'ncias Banc'#225'rias'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcManutencaoBD: TPageControl
    inherited tbsCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 4
        Top = 14
        Width = 61
        Height = 13
        Caption = 'N'#186' do Banco'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 4
        Top = 41
        Width = 46
        Height = 13
        Caption = 'N'#186' da Ag.'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 4
        Top = 68
        Width = 60
        Height = 13
        Caption = 'Dig. Ver. Ag.'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 4
        Top = 95
        Width = 58
        Height = 13
        Caption = 'N'#186' da Conta'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [4]
        Left = 4
        Top = 121
        Width = 72
        Height = 13
        Caption = 'Dig. Ver. Conta'
        FocusControl = DBEdit5
      end
      object Label6: TLabel [5]
        Left = 4
        Top = 147
        Width = 36
        Height = 13
        Caption = 'Carteira'
        FocusControl = DBEdit6
      end
      object Label7: TLabel [6]
        Left = 272
        Top = 14
        Width = 54
        Height = 13
        Caption = 'Apelido Ag.'
        FocusControl = DBEdit7
      end
      object Label8: TLabel [7]
        Left = 272
        Top = 41
        Width = 85
        Height = 13
        Caption = 'Desc. Apelido Ag.'
        FocusControl = DBEdit8
      end
      object Label9: TLabel [8]
        Left = 272
        Top = 68
        Width = 67
        Height = 13
        Caption = 'Tipo de Conta'
        FocusControl = DBEdit9
      end
      object Label10: TLabel [9]
        Left = 272
        Top = 95
        Width = 27
        Height = 13
        Caption = 'Saldo'
        FocusControl = DBEdit10
      end
      object Label11: TLabel [10]
        Left = 272
        Top = 121
        Width = 49
        Height = 13
        Caption = 'CNT_CTB'
        FocusControl = DBEdit11
      end
      object Label12: TLabel [11]
        Left = 272
        Top = 147
        Width = 49
        Height = 13
        Caption = 'HST_CTB'
        FocusControl = DBEdit12
      end
      object Label13: TLabel [12]
        Left = 272
        Top = 174
        Width = 77
        Height = 13
        Caption = 'FLG_DBT_CRD'
        FocusControl = DBEdit13
      end
      object Label14: TLabel [13]
        Left = 4
        Top = 174
        Width = 89
        Height = 13
        Caption = 'N'#186' da Ag. Cedente'
        FocusControl = DBEdit14
      end
      object DBEdit1: TDBEdit
        Left = 97
        Top = 6
        Width = 134
        Height = 21
        DataField = 'NUM_BCO'
        DataSource = dtsManuBD
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 97
        Top = 33
        Width = 134
        Height = 21
        DataField = 'NUM_AGE'
        DataSource = dtsManuBD
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 97
        Top = 60
        Width = 17
        Height = 21
        DataField = 'NUM_DVR_AGE'
        DataSource = dtsManuBD
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 97
        Top = 87
        Width = 134
        Height = 21
        DataField = 'NUM_CCR'
        DataSource = dtsManuBD
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 97
        Top = 113
        Width = 17
        Height = 21
        DataField = 'NUM_DVR_CCR'
        DataSource = dtsManuBD
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 97
        Top = 139
        Width = 134
        Height = 21
        DataField = 'NUM_CRT'
        DataSource = dtsManuBD
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 359
        Top = 6
        Width = 134
        Height = 21
        DataField = 'APE_AGE'
        DataSource = dtsManuBD
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 359
        Top = 33
        Width = 134
        Height = 21
        DataField = 'DSC_APE'
        DataSource = dtsManuBD
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 359
        Top = 60
        Width = 17
        Height = 21
        DataField = 'TIP_CCR'
        DataSource = dtsManuBD
        TabOrder = 9
      end
      object DBEdit10: TDBEdit
        Left = 359
        Top = 87
        Width = 134
        Height = 21
        DataField = 'SLD_CCR'
        DataSource = dtsManuBD
        TabOrder = 10
      end
      object DBEdit11: TDBEdit
        Left = 359
        Top = 113
        Width = 134
        Height = 21
        DataField = 'CNT_CTB'
        DataSource = dtsManuBD
        TabOrder = 11
      end
      object DBEdit12: TDBEdit
        Left = 359
        Top = 139
        Width = 134
        Height = 21
        DataField = 'HST_CTB'
        DataSource = dtsManuBD
        TabOrder = 12
      end
      object DBEdit13: TDBEdit
        Left = 359
        Top = 166
        Width = 17
        Height = 21
        DataField = 'FLG_DBT_CRD'
        DataSource = dtsManuBD
        TabOrder = 13
      end
      object DBEdit14: TDBEdit
        Left = 97
        Top = 166
        Width = 134
        Height = 21
        DataField = 'NUM_AGE_CED'
        DataSource = dtsManuBD
        TabOrder = 14
      end
    end
  end
  inherited sqlManuBD: TQueryUrb
    DatabaseName = 'bdCPAD'
    SQL.Strings = (
      'SELECT * FROM GER_0014')
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDNUM_BCO: TFloatField
      DisplayLabel = 'N'#186' do Banco'
      FieldName = 'NUM_BCO'
    end
    object cdsManuBDNUM_AGE: TFloatField
      DisplayLabel = 'N'#186' da Ag.'
      FieldName = 'NUM_AGE'
    end
    object cdsManuBDNUM_DVR_AGE: TStringField
      DisplayLabel = 'Dig. Ver. Ag.'
      FieldName = 'NUM_DVR_AGE'
      FixedChar = True
      Size = 1
    end
    object cdsManuBDNUM_CCR: TStringField
      DisplayLabel = 'N'#186' da Conta'
      FieldName = 'NUM_CCR'
      Size = 10
    end
    object cdsManuBDNUM_DVR_CCR: TStringField
      DisplayLabel = 'Dig. Ver. Conta'
      FieldName = 'NUM_DVR_CCR'
      FixedChar = True
      Size = 1
    end
    object cdsManuBDNUM_CRT: TFloatField
      DisplayLabel = 'Carteira'
      FieldName = 'NUM_CRT'
    end
    object cdsManuBDAPE_AGE: TFloatField
      DisplayLabel = 'Apelido Ag.'
      FieldName = 'APE_AGE'
    end
    object cdsManuBDDSC_APE: TStringField
      DisplayLabel = 'Desc. Apelido Ag.'
      FieldName = 'DSC_APE'
      Size = 10
    end
    object cdsManuBDTIP_CCR: TStringField
      DisplayLabel = 'Tipo de Conta'
      FieldName = 'TIP_CCR'
      FixedChar = True
      Size = 1
    end
    object cdsManuBDSLD_CCR: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SLD_CCR'
    end
    object cdsManuBDCNT_CTB: TStringField
      FieldName = 'CNT_CTB'
      Size = 11
    end
    object cdsManuBDHST_CTB: TFloatField
      FieldName = 'HST_CTB'
    end
    object cdsManuBDFLG_DBT_CRD: TStringField
      FieldName = 'FLG_DBT_CRD'
      FixedChar = True
      Size = 1
    end
    object cdsManuBDNUM_AGE_CED: TFloatField
      DisplayLabel = 'N'#186' da Ag. Cedente'
      FieldName = 'NUM_AGE_CED'
    end
  end
end
