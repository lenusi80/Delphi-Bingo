unit Funcoes;

interface

Uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics,
 Controls, Forms, Dialogs, StdCtrls, MMSystem, DB;

procedure LimpaTemp;
function sortear : integer;
function letra(numero : integer): char;
Procedure Conjunto(numero : integer);
function ganhadores(cheia, linha, coluna : boolean):boolean;

var
   SB, SI, SN, SG, SO : string;

implementation

uses UDM, FrmResumo;

procedure LimpaTemp;
begin
 DM.QRTemp.Close;
 DM.QRTemp.SQL.Clear;
 DM.QRTemp.SQL.Add('delete * from sorteados');
 DM.QRTemp.ExecSQL;
end;

function sortear2 : integer;
var
 i : integer;
 repetir : boolean;
begin
  repetir := false;
  repeat
   if DM.TbTempNumerSort.RecordCount <= 74 then
    begin
    Randomize;
    Randomize;
    Randomize;
    i :=  Random(76);
     If (i <> 0) and (DM.TbTempNumerSort.Locate('numero',inttostr(i),[loCaseInsensitive]) = false) then
      begin
       DM.TbTempNumerSort.Insert;
       DM.TbTempNumerSortNumero.AsInteger := i;
       DM.TbTempNumerSort.Post;
       SndPlaySound('C:\bingo\notify.wav',SND_ASYNC);
       result := i;
       repetir := false;
      end
    else
      repetir := true;
 end
  else
   begin
    SndPlaySound('C:\bingo\SomPedra.wav',SND_ASYNC);
    showmessage('Quantidade de numeros esgotado, fim do jogo');
    DM.QRTemp.Close;
    DM.QRTemp.SQL.Clear;
    DM.QRTemp.SQL.Add('delete * from sorteados');
    DM.QRTemp.ExecSQL;
    DM.TbTempNumerSort.Requery([]);
    repetir := false;
    result := 0;
  end;
until repetir = false;
end;

function sortear : integer;
var
 i, index : integer;
 repetir : boolean;
begin
  repetir := false;
   repeat
   if NumerosSorteados.Count <= 74 then
    begin
    Randomize;
    Randomize;
    Randomize;
    i :=  Random(76);
     If (i <> 0) and (NumerosSorteados.IndexOf(inttostr(i)) = -1) then
      begin
       NumerosSorteados.Add(inttostr(i));
       SndPlaySound('C:\bingo\notify.wav',SND_ASYNC);
       result := i;
       repetir := false;
      end
    else
      repetir := true;
 end
  else
   begin
    SndPlaySound('C:\bingo\SomPedra.wav',SND_ASYNC);
    showmessage('Quantidade de numeros esgotado, fim do jogo');
    NumerosSorteados.Clear;
    repetir := false;
    result := 0;
  end;
until repetir = false;
end;

function letra(numero : integer): char;
begin
if numero <= 15 then
 result := 'B'
else
 if (numero > 15) and (numero <= 30) then
  result := 'I'
 else
  if (numero > 30) and (numero <= 45) then
   result := 'N'
  else
   if (numero > 45) and (numero <= 60) then
    result := 'G'
   else
    result := 'O';
end;

Procedure Conjunto(numero : integer);
begin
if numero <= 15 then
  SB := SB + ',' + inttostr(numero);

  if (numero > 15) and (numero <= 30) then
    SI := SI + ',' + inttostr(numero);

  if (numero > 30) and (numero <= 45) then
    SN := SN + ',' + inttostr(numero);

  if (numero > 45) and (numero <= 60) then
    SG := SG + ',' + inttostr(numero);

  if numero > 60 then
    SO := SO + ',' + inttostr(numero);
end;

function ganhadores(cheia, linha, coluna : boolean):boolean;
begin
result := false;
 With DM do
  begin
  if cheia then
    begin
    QRNumeros.Close;
    QRNumeros.SQL.Clear;
    QRNumeros.SQL.Add('select * from numeros where validar = true and B1 in (' + SB + ') and B2 in (' + SB + ') and');
    QRNumeros.SQL.Add(' B3 in (' + SB + ') and B4 in (' + SB + ') and');
    QRNumeros.SQL.Add(' B5 in (' + SB + ') and');
    QRNumeros.SQL.Add(' I1 in (' + SI + ') and I2 in (' + SI + ') and');
    QRNumeros.SQL.Add(' I3 in (' + SI + ') and I4 in (' + SI + ') and');
    QRNumeros.SQL.Add(' I5 in (' + SI + ') and');
    QRNumeros.SQL.Add(' N1 in (' + SN + ') and N2 in (' + SN + ') and');
    QRNumeros.SQL.Add(' N3 in (' + SN + ') and N4 in (' + SN + ') and');
    QRNumeros.SQL.Add(' G1 in (' + SG + ') and G2 in (' + SG + ') and');
    QRNumeros.SQL.Add(' G3 in (' + SG + ') and G4 in (' + SG + ') and');
    QRNumeros.SQL.Add(' G5 in (' + SG + ') and');
    QRNumeros.SQL.Add(' O1 in (' + SO + ') and O2 in (' + SO + ') and');
    QRNumeros.SQL.Add(' O3 in (' + SO + ') and O4 in (' + SO + ') and');
    QRNumeros.SQL.Add(' O5 in (' + SO + ')');
    QRNumeros.Open;
    if QRNumeros.RecordCount > 0 then
     result := true;
   end;

  if linha then
    begin
    QRNumeros.Close;
    QRNumeros.SQL.Clear;
    QRNumeros.SQL.Add('select * from numeros where B1 in (' + SB + ') and I1 in (' + SI + ') and');
    QRNumeros.SQL.Add(' N1 in (' + SN + ') and G1 in (' + SG + ') and');
    QRNumeros.SQL.Add(' O1 in (' + SO + ') and validar = true OR');
    QRNumeros.SQL.Add(' B2 in (' + SB + ') and I2 in (' + SI + ') and');
    QRNumeros.SQL.Add(' N2 in (' + SN + ') and G2 in (' + SG + ') and');
    QRNumeros.SQL.Add(' O2 in (' + SO + ') and validar = true OR');
    QRNumeros.SQL.Add(' B3 in (' + SB + ') and I3 in (' + SI + ') and');
    QRNumeros.SQL.Add(' G3 in (' + SG + ') and O3 in (' + SO + ') and validar = true OR');
    QRNumeros.SQL.Add(' B4 in (' + SB + ') and I4 in (' + SI + ') and');
    QRNumeros.SQL.Add(' N3 in (' + SN + ') and G4 in (' + SG + ') and');
    QRNumeros.SQL.Add(' O4 in (' + SO + ') and validar = true OR');
    QRNumeros.SQL.Add(' B5 in (' + SB + ') and I5 in (' + SI + ') and');
    QRNumeros.SQL.Add(' N4 in (' + SN + ') and G5 in (' + SG + ') and');
    QRNumeros.SQL.Add(' O5 in (' + SO + ') and validar = true');
    QRNumeros.Open;
    if QRNumeros.RecordCount > 0 then
     result := true;
   end;

  if coluna then
    begin
    QRNumeros.Close;
    QRNumeros.SQL.Clear;
    QRNumeros.SQL.Add('select * from numeros where B1 in (' + SB + ') and B2 in (' + SB + ') and');
    QRNumeros.SQL.Add(' B3 in (' + SB + ') and B4 in (' + SB + ') and');
    QRNumeros.SQL.Add(' B5 in (' + SB + ') and validar = true OR');
    QRNumeros.SQL.Add(' I1 in (' + SI + ') and I2 in (' + SI + ') and');
    QRNumeros.SQL.Add(' I3 in (' + SI + ') and I4 in (' + SI + ') and');
    QRNumeros.SQL.Add(' I5 in (' + SI + ') and validar = true OR');
    QRNumeros.SQL.Add(' N1 in (' + SN + ') and N2 in (' + SN + ') and');
    QRNumeros.SQL.Add(' N3 in (' + SN + ') and N4 in (' + SN + ') and validar = true OR');
    QRNumeros.SQL.Add(' G1 in (' + SG + ') and G2 in (' + SG + ') and');
    QRNumeros.SQL.Add(' G3 in (' + SG + ') and G4 in (' + SG + ') and');
    QRNumeros.SQL.Add(' G5 in (' + SG + ') and validar = true OR');
    QRNumeros.SQL.Add(' O1 in (' + SO + ') and O2 in (' + SO + ') and');
    QRNumeros.SQL.Add(' O3 in (' + SO + ') and O4 in (' + SO + ') and');
    QRNumeros.SQL.Add(' O5 in (' + SO + ') and validar = true');
    QRNumeros.Open;
    if QRNumeros.RecordCount > 0 then
     result := true;
   end;
 end; // With
end;

end.








