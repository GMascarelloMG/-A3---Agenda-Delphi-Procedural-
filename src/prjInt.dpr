program prjInt;

uses
  Vcl.Forms,
  ProjectAlfa3 in '..\ProjectAlfa3.pas' {tmenu},
  ucad in 'agendaint\ucad.pas' {tcad},
  uedit in 'agendaint\uedit.pas' {tedit},
  udel in 'agendaint\udel.pas' {tdel},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Carbon');
  Application.CreateForm(Ttmenu, tmenu);
  Application.CreateForm(Ttcad, tcad);
  Application.CreateForm(Ttedit, tedit);
  Application.CreateForm(Ttdel, tdel);
  Application.Run;
end.
