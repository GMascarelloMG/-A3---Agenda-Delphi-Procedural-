unit uedit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask;

type
  Ttedit = class(TForm)
    lbeendereço: TLabeledEdit;
    lbenome: TLabeledEdit;
    Label1: TLabel;
    rdsexo: TRadioGroup;
    metelc: TMaskEdit;
    metelr: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    lbebairro: TLabeledEdit;
    rgec: TRadioGroup;
    mecep: TMaskEdit;
    Label4: TLabel;
    spedit: TSpeedButton;
    edidade: TEdit;
    procedure lbenomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure speditClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tedit: Ttedit;

implementation
  uses ucad,udel,projectalfa3;
{$R *.dfm}

procedure Ttedit.FormCreate(Sender: TObject);
begin
lbenome.Text := dado[editar].name;
edidade.Text := dado[editar].IDADE;
lbeendereço.text := dado[editar].endereço;

       if Dado[editar].SEXO = 'Masculino' then
 rdsexo.ItemIndex := 0;
  if  Dado[editar].SEXO = 'Feminino'then
 rdsexo.ItemIndex := 1;

 if  dado[editar].SEXO = '------' then
rdsexo.ItemIndex := -1;

      if Dado[editar].estadocivil = 'Solteiro 'then
  rgec.ItemIndex := 0 ;
   if Dado[editar].estadocivil = 'Casado 'then
 rgec.ItemIndex := 1  ;
   if  Dado[editar].estadocivil = 'União Estável 'then
  rgec.ItemIndex := 2;
   if Dado[editar].estadocivil = 'Divorciado 'then
  rgec.ItemIndex := 3 ;
   if Dado[editar].estadocivil = 'Viúvo ' then
  rgec.ItemIndex := 4;
   if   Dado[editar].estadocivil = '----- ' then
rgec.ItemIndex := -1;


metelr.Text := dado[editar].TELRESIDENCIAL;
metelc.Text :=  dado[editar].TELComercial ;

  mecep.Text := dado[editar].CEP  ;

  lbebairro.Text  :=  dado[editar].BAIRRO;


end;

procedure Ttedit.lbenomeKeyPress(Sender: TObject; var Key: Char);
begin
      AnsiUpperCase(Key);
      if (not (Key in ['A'..'Z',' ','a'..'z',#8]))  then
      begin

                        key := #0  ;
      end;


end;

procedure Ttedit.speditClick(Sender: TObject);
begin
       dado[editar].name:= lbenome.Text ;
dado[editar].IDADE :=  edidade.Text;
dado[editar].endereço :=  lbeendereço.text ;

       if rdsexo.ItemIndex = 0  then
 Dado[editar].SEXO := 'Masculino';
  if   rdsexo.ItemIndex = 1then
  Dado[editar].SEXO := 'Feminino';

 if  rdsexo.ItemIndex = -1 then
 dado[editar].SEXO:= '------';

      if rgec.ItemIndex = 0 then
Dado[editar].estadocivil := 'Solteiro'  ;
   if rgec.ItemIndex  = 1 then
 Dado[editar].estadocivil:= 'Casado '  ;
   if rgec.ItemIndex   = 2 then
  Dado[editar].estadocivil:= 'União Estável ';
   if rgec.ItemIndex  = 3 then
  Dado[editar].estadocivil:= 'Divorciado ' ;
   if rgec.ItemIndex  = 4 then
  Dado[editar].estadocivil:= 'Viúvo ';
   if  rgec.ItemIndex   =  -1 then
 Dado[editar].estadocivil:= '----- ';


 dado[editar].TELRESIDENCIAL := metelr.Text;
dado[editar].TELComercial :=  metelc.Text ;

  dado[editar].CEP :=  mecep.Text ;

  dado[editar].BAIRRO :=   lbebairro.Text;





   tdel := ttdel.Create(Application);
    tdel.Show;
  close;
end;

end.
