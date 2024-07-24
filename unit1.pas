unit Unit1;

{$mode Delphi}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TGeneric }

  TGeneric<T> = class
    public
      val: T;
      procedure setVal(val: T);
      function getVal: T;
  end;

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TGeneric }

procedure TGeneric<T>.setVal(val: T);
begin
  self.val := val;
end;

function TGeneric<T>.getVal: T;
begin
  Result := self.val;
end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  genStr: TGeneric<String>;
  genInt: TGeneric<integer>;
begin
  genStr := TGeneric<String>.Create;
  genStr.setVal('lorem bla bla bla');

  genInt := TGeneric<integer>.Create;
  genInt.setVal(89999);

  ShowMessage(genStr.getVal() + sLineBreak + genInt.getVal().ToString());
end;

end.

