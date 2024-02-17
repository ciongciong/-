unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    edt3: TEdit;
    edt4: TEdit;
    lbl4: TLabel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  i,j,k,r:Integer;
  time_start,time_consume: cardinal;

  str_P_gen0: string;
  t_t: string;
begin
    i := strtoint(edt1.Text);
    j := strtoint(edt2.Text);
    k := 49+i-j+19;
    r := k mod 9;
    if r mod 2 =0 then
    begin
      //nv
      edt3.Text:= inttostr(r);
      edt4.Text:= 'Å®';
    end
    else if r mod 2 =1 then
    begin
      //nan
      edt3.Text:= inttostr(r);
      edt4.Text:= 'ÄÐ';
    end;
end;

end.
