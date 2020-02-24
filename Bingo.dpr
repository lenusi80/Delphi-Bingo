program Bingo;

uses
  Forms,
  BigNumeros in 'BigNumeros.pas' {FrmBigNumeros},
  FrmResumo in 'FrmResumo.pas' {FrmGeral},
  Funcoes in 'Funcoes.pas',
  UDM in 'UDM.pas' {DM: TDataModule},
  UConjuntos in 'UConjuntos.pas' {Form3},
  Principal in 'Principal.pas' {FrmPrincipal},
  UValidar in 'UValidar.pas' {FrmValidar},
  UnitRelEmp in 'UnitRelEmp.pas' {FormCarEmp},
  UnitRelCar1 in 'UnitRelCar1.pas' {FormCar},
  UnitRelCar2 in 'UnitRelCar2.pas' {FormCar2},
  UnitRelCar3 in 'UnitRelCar3.pas' {FormCar3},
  UnitRelCar4 in 'UnitRelCar4.pas' {FormCar4},
  UnitRelCar4a6 in 'UnitRelCar4a6.pas' {FormCar4a6},
  UnitRelCar9 in 'UnitRelCar9.pas' {FormCar9},
  UnitRelCar12 in 'UnitRelCar12.pas' {FormCar12},
  UnitRelCar24 in 'UnitRelCar24.pas' {FormCar24},
  UFaixaCartelas in 'UFaixaCartelas.pas' {FrmFaixaCartelas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmGeral, FrmGeral);
  Application.CreateForm(TFrmBigNumeros, FrmBigNumeros);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TFrmValidar, FrmValidar);
  Application.CreateForm(TFormCarEmp, FormCarEmp);
  Application.CreateForm(TFormCar, FormCar);
  Application.CreateForm(TFormCar2, FormCar2);
  Application.CreateForm(TFormCar3, FormCar3);
  Application.CreateForm(TFormCar4, FormCar4);
  Application.CreateForm(TFormCar4a6, FormCar4a6);
  Application.CreateForm(TFormCar9, FormCar9);
  Application.CreateForm(TFormCar12, FormCar12);
  Application.CreateForm(TFormCar24, FormCar24);
  Application.CreateForm(TFrmFaixaCartelas, FrmFaixaCartelas);
  Application.Run;
end.
