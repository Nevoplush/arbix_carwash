unit ArBix_CarWash_Login;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm_Login }

  TForm_Login = class(TForm)
    Button_Login_Enter: TButton;
    Button_Login_Cancel: TButton;
    ComboBox_Login_Person: TComboBox;
    Edit_Login_Password: TEdit;
    Label1: TLabel;
    Label_Login_Password: TLabel;
    Label_Login_Person: TLabel;
    procedure ComboBox_Login_PersonChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form_Login: TForm_Login;

implementation

{$R *.lfm}

{ TForm_Login }

procedure TForm_Login.ComboBox_Login_PersonChange(Sender: TObject);
begin

end;

end.

