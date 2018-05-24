unit ucad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask;

type
  Ttcad = class(TForm)
    edendereco: TLabeledEdit;
    ednome: TLabeledEdit;
    Label1: TLabel;
    rgsexo: TRadioGroup;
    edtelc: TMaskEdit;
    edtelr: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    edbairro: TLabeledEdit;
    rgec: TRadioGroup;
    mecep: TMaskEdit;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    edidade: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure ednomeKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    type cadastro = record
      NAME: STRING[100];
      IDADE: STRING[100];
      ENDEREÇO:STRING[100];
      SEXO : STRING[100];
      ESTADOCIVIL : STRING[100];
      TELRESIDENCIAL : STRING[12];
      TELCOMERCIAL : STRING[12];
      CEP : STRING[8];
      BAIRRO : STRING[100];
      Numero: integer;
    end;
  end;

var
  tcad: Ttcad;



implementation

uses ProjectAlfa3;

{$R *.dfm}
           procedure Ttcad.EDNOMEKeyPress(Sender: TObject; var Key: Char);
begin
      AnsiUpperCase(Key);
      if (not (Key in ['A'..'Z',' ','a'..'z',#8]))  then
      begin

                        key := #0  ;
      end;

      end;

procedure Ttcad.SpeedButton1Click(Sender: TObject) ;
  var   Agenda : cadastro;  aux2,i,aux,cetec:integer;

begin


           aux:= 0;
 agenda.name := ednome.Text ;
 agenda.idade := edidade.Text;
 agenda.endereço := edendereco.text ;

 if rgsexo.ItemIndex = 0 then
 Agenda.SEXO := 'Masculino';
  if rgsexo.ItemIndex = 1 then
 Agenda.SEXO := 'Feminino';
 if rgsexo.ItemIndex = -1 then
 Agenda.SEXO := '------';

  if rgec.ItemIndex = 0 then
  Agenda.ESTADOCIVIL := 'Solteiro ';
   if rgec.ItemIndex = 1 then
  Agenda.ESTADOCIVIL := 'Casado ';
   if rgec.ItemIndex = 2 then
  Agenda.ESTADOCIVIL := 'União Estável ';
   if rgec.ItemIndex = 3 then
  Agenda.ESTADOCIVIL := 'Divorciado ';
   if rgec.ItemIndex = 4 then
  Agenda.ESTADOCIVIL := 'Viúvo ';
   if rgec.ItemIndex = -1 then
  Agenda.ESTADOCIVIL := '----- ';

  Agenda.TELRESIDENCIAL :=  edtelr.Text;
    Agenda.TELComercial :=  edtelc.Text;

    Agenda.CEP :=  mecep.Text;

    Agenda.BAIRRO := edbairro.Text;


    if (rgec.ItemIndex <> -1) and (rgsexo.ItemIndex <> -1) then
           begin

                  aux2 := 0;
             i:= 0;
             for cetec := 0 to 100 do
             if uppercase(Agenda.NAME) = uppercase(dado[cetec].NAME)  then
             begin
             aux2 := aux2 + 1

             end;
             while i<100 do
             begin


			IF ( DADO[i].Ocupado = false) and (aux = 0)and (aux2=0) THEN
			BEGIN
      dado[i].name :=    Agenda.NAME;
dado[i].IDADE :=       Agenda.idade;
dado[i].ENDEREÇO :=      Agenda.ENDEREÇO;
dado[i].SEXO :=          Agenda.sexo;
dado[i].ESTADOCIVIL :=     Agenda.estadocivil;
dado[i].TELRESIDENCIAL :=   Agenda.telresidencial;
dado[i].TELCOMERCIAL :=   Agenda.telcomercial;
dado[i].CEP :=Agenda.cep;
dado[i].BAIRRO :=Agenda.bairro;
dado[i].Numero := i ;
dado[i].OCUPADO:= true;
        aux := 1;
			END;
      i:= i+1;
     end;
     if aux2<>0 then
            showmessage('Já cadastrado');
		END
       else
       showmessage('Falta informação');

           end;
    end.










