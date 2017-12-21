unit ArBix_CarWash_Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm_Main }

  TForm_Main = class(TForm)
    Button_MainMenu_Login: TButton;
    Button_MainMenu_Exit: TButton;
    Panel_MainMenu: TPanel;
    procedure Button_MainMenu_ExitClick(Sender: TObject);
    procedure Button_MainMenu_LoginClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form_Main: TForm_Main;
  MainCaption: String = 'Комплекс ArBix: рабочее место / ';
  PersonId : Integer = 0;
  LoginAction: Integer = 0;

implementation

{$R *.lfm}

uses ArBix_CarWash_Login;

{ TForm_Main }



procedure TForm_Main.FormShow(Sender: TObject);
begin
  if (PersonId = 0) then
     Self.Caption:=MainCaption + 'требуется авторизация';
end;

procedure TForm_Main.Button_MainMenu_ExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_Main.Button_MainMenu_LoginClick(Sender: TObject);
begin
  if (LoginAction = 0) then
  begin
    try
      Form_Login := TForm_Login.Create(Self);
      Form_Login.ShowModal;
    finally
      if (LoginAction = 0) then
      begin
        Form_Login.Free;
      end;
    end;
  end;
end;

procedure TForm_Main.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
    if (MessageDlg('Вы действительно хотите выйти?',mtConfirmation,[mbYes, mbNo],0) = mrNo) then
  begin
    CanClose := False;
  end;
end;

end.

