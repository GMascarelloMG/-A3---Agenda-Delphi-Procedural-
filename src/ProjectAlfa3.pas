unit ProjectAlfa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, ucad, Uedit, udel,math;


type
  Ttmenu = class(TForm)
    Iadd: TImage;
    IBusc: TImage;
    procedure IaddClick(Sender: TObject);
    procedure IcadClick(Sender: TObject);
    procedure IBuscClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }     end;
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
      OCUPADO : BOOLEAN;
      Numero: integer ;
      end;

var
  tmenu: Ttmenu;
  Dado: ARRAY[0..100] of cadastro;
  ARQUIVO: File of cadastro;

  editar: integer;

implementation

{$R *.dfm}

procedure Ttmenu.FormClose(Sender: TObject; var Action: TCloseAction);
var i : integer;
begin

            rewrite(arquivo);
       for i := 0 to 100 do
            begin
            if dado[i].OCUPADO= true then
         begin
      dado[i].Numero := i;
			WRITE(ARQUIVO, dado[i]);
         end;
            end;
		
      end;




procedure Ttmenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var i : integer;
begin
          	for i := 0 to 100 do
            begin
      dado[i].Numero := i;
			WRITE(ARQUIVO, dado[i]);
            end;
end;

procedure Ttmenu.FormCreate(Sender: TObject);
var
  i: INTEGER;
begin
    i := 0;
    WHILE i<=100 DO
    BEGIN
    if inrange(DAdo[i].Numero, 0, 100) then
    begin
      Dado[i].OCUPADO := FALSE;
      i := i + 1;
    end;
    END;

      AssignFile(ARQUIVO, 'AGENDABD.DAT');

		IF FILEEXISTS('AGENDABD.DAT') THEN
		BEGIN
			RESET(ARQUIVO)
		END
		ELSE
    begin
			REWRITE(ARQUIVO);
      end;

    i:= 0;
    WHILE(NOT EOF(ARQUIVO)) DO
    BEGIN

      READ(ARQUIVO,DADO[i]);
      i := i+1;

    END;
end;



procedure Ttmenu.IaddClick(Sender: TObject);
begin
tcad := Ttcad.Create(Application);
tcad.Show;
end;

procedure Ttmenu.IBuscClick(Sender: TObject);
begin
     tdel := Ttdel.Create(Application);
tdel.Show;
end;

procedure Ttmenu.IcadClick(Sender: TObject);
begin
tedit := Ttedit.Create(Application);
tedit.Show;
end;





end.
