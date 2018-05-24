unit udel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.Buttons;

type
  Ttdel = class(TForm)
    Button1: TButton;
    btedit: TButton;
    Button2: TButton;
    Grid : TStringGrid;
    edbusca: TEdit;
    coestadocivil: TComboBox;
    cosexo: TComboBox;
    btbuscar: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bteditClick(Sender: TObject);
    procedure btbuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  tdel: Ttdel;

implementation
    uses ProjectAlfa3, ucad, uedit;
{$R *.dfm}





procedure Ttdel.btbuscarClick(Sender: TObject);
var   auxec,auxs,p,aj: integer; I: Integer;
  J: Integer;
begin





  for I := 0 to Grid.ColCount-1 do
    for J := 0 to Grid.RowCount-1 do
      Grid.Cells[I,J] := '';
      aj:= 0;
 for p := 0 to 100 do
 begin
if dado[p].Estadocivil = 'Solteiro ' then
auxec := 0;
     if dado[p].Estadocivil = 'Casado ' then
auxec := 1;
 if dado[p].Estadocivil = 'União Estável ' then
auxec := 2;
 if dado[p].Estadocivil = 'Divorciado ' then
auxec := 3;
 if dado[p].Estadocivil = 'Viúvo ' then
     auxec := 4;
       if dado[p].Sexo = 'Feminino' then
auxs := 1;
     if dado[p].Sexo = 'Masculino' then
auxs := 0;
if dado[p].SEXO = '------'then
 auxs :=  -1;
    if dado[p].Estadocivil = '----- ' then
           auxec :=       -1     ;


 if (coestadocivil.itemindex = -1 )and (cosexo.ItemIndex = -1) and (edbusca.Text <> '') then
     begin
 if ((Uppercase(dado[p].NAME)) = (Uppercase(edbusca.Text)))then
 begin
 Grid.CELLS[0,aj]:= dado[p].name     ;
   Grid.CELLS[1,aj]:= dado[p].IDADE     ;
  Grid.CELLS[2,aj]   :=    dado[p].ENDEREÇO    ;
      Grid.CELLS[3,aj]:=   dado[p].SEXO     ;
       Grid.CELLS[4,aj]:=    dado[p].ESTADOCIVIL   ;
       Grid.CELLS[5,aj]:=    dado[p].TELRESIDENCIAL   ;
       Grid.CELLS[6,aj]:=    dado[p].TELCOMERCIAl     ;
       Grid.CELLS[7,aj]:=    dado[p].CEP  ;
       Grid.CELLS[8,aj]:=    dado[p].BAIRRO ;
       aj:=aj+1;
                     end;
  end;

     if (coestadocivil.itemindex <> -1 )and (cosexo.ItemIndex = -1) and (edbusca.Text = '') then
     begin
 if (auxec) = (coestadocivil.ItemIndex)then
 begin
 Grid.CELLS[0,aj]:= dado[p].name     ;
   Grid.CELLS[1,aj]:= dado[p].IDADE     ;
  Grid.CELLS[2,aj]   :=    dado[p].ENDEREÇO    ;
      Grid.CELLS[3,aj]:=   dado[p].SEXO     ;
       Grid.CELLS[4,aj]:=    dado[p].ESTADOCIVIL   ;
       Grid.CELLS[5,aj]:=    dado[p].TELRESIDENCIAL   ;
       Grid.CELLS[6,aj]:=    dado[p].TELCOMERCIAl     ;
       Grid.CELLS[7,aj]:=    dado[p].CEP  ;
       Grid.CELLS[8,aj]:=    dado[p].BAIRRO ;
       aj := aj+1
  end;
  end;

  if (coestadocivil.itemindex = -1 )and (cosexo.ItemIndex <> -1) and (edbusca.Text = '') then
     begin
 if ((auxs) = (cosexo.ItemIndex)) then
 begin
 Grid.CELLS[0,aj]:= dado[p].name     ;
   Grid.CELLS[1,aj]:= dado[p].IDADE     ;
  Grid.CELLS[2,aj]   :=    dado[p].ENDEREÇO    ;
      Grid.CELLS[3,aj]:=   dado[p].SEXO     ;
       Grid.CELLS[4,aj]:=    dado[p].ESTADOCIVIL   ;
       Grid.CELLS[5,aj]:=    dado[p].TELRESIDENCIAL   ;
       Grid.CELLS[6,aj]:=    dado[p].TELCOMERCIAl     ;
       Grid.CELLS[7,aj]:=    dado[p].CEP  ;
       Grid.CELLS[8,aj]:=    dado[p].BAIRRO ;
       aj:= aj+1;
end;
end;

   if (coestadocivil.itemindex <> -1 )and (cosexo.ItemIndex <> -1) and (edbusca.Text = '') then
     begin
 if ((auxs) = (cosexo.ItemIndex)) and ((auxec) = (coestadocivil.ItemIndex))then
 begin
 Grid.CELLS[0,aj]:= dado[p].name     ;
   Grid.CELLS[1,aj]:= dado[p].IDADE     ;
  Grid.CELLS[2,aj]   :=    dado[p].ENDEREÇO    ;
      Grid.CELLS[3,aj]:=   dado[p].SEXO     ;
       Grid.CELLS[4,aj]:=    dado[p].ESTADOCIVIL   ;
       Grid.CELLS[5,aj]:=    dado[p].TELRESIDENCIAL   ;
       Grid.CELLS[6,aj]:=    dado[p].TELCOMERCIAl     ;
       Grid.CELLS[7,aj]:=    dado[p].CEP  ;
       Grid.CELLS[8,aj]:=    dado[p].BAIRRO ;
       aj := aj+1;
end;

end;
   if (coestadocivil.itemindex <> -1 )and (cosexo.ItemIndex = -1) and (edbusca.Text <> '') then
     begin
 if ((auxs) = (cosexo.ItemIndex) )and (((Uppercase(dado[p].NAME)) = (Uppercase(edbusca.Text))))then
 begin
 Grid.CELLS[0,aj]:= dado[p].name     ;
   Grid.CELLS[1,aj]:= dado[p].IDADE     ;
  Grid.CELLS[2,aj]   :=    dado[p].ENDEREÇO    ;
      Grid.CELLS[3,aj]:=   dado[p].SEXO     ;
       Grid.CELLS[4,aj]:=    dado[p].ESTADOCIVIL   ;
       Grid.CELLS[5,aj]:=    dado[p].TELRESIDENCIAL   ;
       Grid.CELLS[6,aj]:=    dado[p].TELCOMERCIAl     ;
       Grid.CELLS[7,aj]:=    dado[p].CEP  ;
       Grid.CELLS[8,aj]:=    dado[p].BAIRRO ;
       aj:= aj+1;
end;
     end;
   if (coestadocivil.itemindex = -1 )and (cosexo.ItemIndex <> -1) and (edbusca.Text <> '') then
     begin
 if ((auxs) = (cosexo.ItemIndex)) and ((auxec) = (coestadocivil.ItemIndex))then
 begin
 Grid.CELLS[0,aj]:= dado[p].name     ;
   Grid.CELLS[1,aj]:= dado[p].IDADE     ;
  Grid.CELLS[2,aj]   :=    dado[p].ENDEREÇO    ;
      Grid.CELLS[3,aj]:=   dado[p].SEXO     ;
       Grid.CELLS[4,aj]:=    dado[p].ESTADOCIVIL   ;
       Grid.CELLS[5,aj]:=    dado[p].TELRESIDENCIAL   ;
       Grid.CELLS[6,aj]:=    dado[p].TELCOMERCIAl     ;
       Grid.CELLS[7,aj]:=    dado[p].CEP  ;
       Grid.CELLS[8,aj]:=    dado[p].BAIRRO ;
       aj:= aj+1;
end;
     end;
            if (coestadocivil.itemindex = -1 )and (cosexo.ItemIndex = -1) and (edbusca.Text = '') then
     begin
 if ((auxs) = (cosexo.ItemIndex)) and ((auxec) = (coestadocivil.ItemIndex))and  (((Uppercase(dado[p].NAME)) = (Uppercase(edbusca.Text)))) then
 begin
 Grid.CELLS[0,aj]:= dado[p].name     ;
   Grid.CELLS[1,aj]:= dado[p].IDADE     ;
  Grid.CELLS[2,aj]   :=    dado[p].ENDEREÇO    ;
      Grid.CELLS[3,aj]:=   dado[p].SEXO     ;
       Grid.CELLS[4,aj]:=    dado[p].ESTADOCIVIL   ;
       Grid.CELLS[5,aj]:=    dado[p].TELRESIDENCIAL   ;
       Grid.CELLS[6,aj]:=    dado[p].TELCOMERCIAl     ;
       Grid.CELLS[7,aj]:=    dado[p].CEP  ;
       Grid.CELLS[8,aj]:=    dado[p].BAIRRO ;
       aj:= aj+1;
end;
     end;
     end;
end;

procedure Ttdel.bteditClick(Sender: TObject);
begin
editar :=dado[Grid.Row].Numero;

    tedit := ttedit.Create(Application);
    tedit.Show;
    Close;

end;

procedure Ttdel.Button1Click(Sender: TObject);


var aux,p: integer;
begin





 aux:= 0;
p:= 0 ;
   while aux <100 do
   begin
   if dado[aux].OCUPADO = true then
   begin

 Grid.CELLS[0,p]:= dado[p].name     ;
   Grid.CELLS[1,p]:= dado[p].IDADE     ;
  Grid.CELLS[2,p]   :=    dado[p].ENDEREÇO    ;
      Grid.CELLS[3,p]:=   dado[p].SEXO     ;
       Grid.CELLS[4,p]:=    dado[p].ESTADOCIVIL   ;
       Grid.CELLS[5,p]:=    dado[p].TELRESIDENCIAL   ;
       Grid.CELLS[6,p]:=    dado[p].TELCOMERCIAl     ;
       Grid.CELLS[7,p]:=    dado[p].CEP  ;
       Grid.CELLS[8,p]:=    dado[p].BAIRRO ;
          p:= p +1;
 end;
 aux:= aux+1;
   end;

end;

   procedure DeleteRow(Grid: TStringGrid; ARow: Integer);
  var
  i,aux,X: Integer;
begin
  for i := ARow to Grid.RowCount - 2 do
    Grid.Rows[i].Assign(Grid.Rows[i + 1]);
  Grid.RowCount := Grid.RowCount - 1;
  X:= dado[arow].NUMERO;
  for aux := 0 to 100 do
   if dado[aux].NAME = dado[X].NAME then
  Dado[aux].OCUPADO := false;

end;



procedure Ttdel.Button2Click(Sender: TObject);
begin


 DeleteRow(Grid, Grid.row);
end;

procedure Ttdel.FormShow(Sender: TObject);

var aux,p: integer;
begin





 aux:= 0;
p:= 0 ;
   while aux <100 do
   begin
   if dado[aux].OCUPADO = true then
   begin

 Grid.CELLS[0,p]:= dado[p].name     ;
   Grid.CELLS[1,p]:= dado[p].IDADE     ;
  Grid.CELLS[2,p]   :=    dado[p].ENDEREÇO    ;
      Grid.CELLS[3,p]:=   dado[p].SEXO     ;
       Grid.CELLS[4,p]:=    dado[p].ESTADOCIVIL   ;
       Grid.CELLS[5,p]:=    dado[p].TELRESIDENCIAL   ;
       Grid.CELLS[6,p]:=    dado[p].TELCOMERCIAl     ;
       Grid.CELLS[7,p]:=    dado[p].CEP  ;
       Grid.CELLS[8,p]:=    dado[p].BAIRRO ;
          p:= p +1;
 end;
 aux:= aux+1;
      end;
end;

end.
