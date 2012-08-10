unit uBiblioConversao;

interface

uses DBTables, Forms;

function RetornaPrecoProd(sCodProd: string; BD: TDatabase): Double;

implementation

function RetornaPrecoProd(sCodProd: string; BD: TDatabase): Double;
var
 dPreco:        Double;
 ConsultaPreco: TQuery;
begin

 dPreco := 0;

 ConsultaPreco := TQuery.Create(Application);

 ConsultaPreco.DatabaseName := BD.DatabaseName;

 ConsultaPreco.SQL.Add('SELECT   *');
 ConsultaPreco.SQL.Add('FROM     FAT_0004');
 ConsultaPreco.SQL.Add('WHERE    COD_PRD = ''' + sCodProd + '''');
 ConsultaPreco.SQL.Add(' AND      DAT_PRC = (SELECT MAX(DAT_PRC)');
 ConsultaPreco.SQL.Add('                    FROM FAT_0004');
 ConsultaPreco.SQL.Add('                    WHERE COD_PRD = ''' + sCodProd + '''');
 ConsultaPreco.SQL.Add('                    AND DAT_PRC <= SYSDATE)');
 ConsultaPreco.SQL.Add('ORDER BY 1, 2');

 ConsultaPreco.Active := True;

// if ConsultaPreco.RecordCount = 1 then
//  begin
   dPreco := ConsultaPreco.FieldByName('VAL_PRC_VND').AsFloat;
//  end
// else if ConsultaPreco.RecordCount > 1 then
//  begin
//   ConsultaPreco.Last;
//   dPreco := ConsultaPreco.FieldByName('VAL_PRC_VND').AsFloat;
//  end;

 ConsultaPreco.Free;

 Result := dPreco;
end;

end.
