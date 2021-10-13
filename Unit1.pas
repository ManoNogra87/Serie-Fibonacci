unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  function funcionFibo(ronda:Integer):string;
  function funcionFibo2(ronda:Integer):Integer;
  procedure calcular(ronda:integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
 respuesta:string;
 n:Integer;
begin
 if (Edit1.Text <> '') and (Edit1.Text <> '0') then
  begin
    try
     n:=StrToInt(Edit1.Text); 
     if (n = 0) or (n > 20) then
      begin
       ShowMessage('Solo se permiten numeros entre el 1 y el 20');
       Edit1.Text:='';
       Exit;
      end;
    except 
      ShowMessage('Solo se permiten numeros entre el 1 y el 20');
      Edit1.Text:='';
      Exit;
    end;

    Respuesta:=funcionFibo(n);
    Label3.Visible:=true;
    Label3.Caption:='Usted solicito '+Edit1.Text+',/n el resultado es: '+respuesta;    
  end
 else
  begin
    ShowMessage('Por favor ingrese un numero entre el 1 y el 20.');
  end;
end;


procedure TForm1.SpeedButton2Click(Sender: TObject);
var
 n:Integer;
begin
   if (Edit1.Text <> '') and (Edit1.Text <> '0') then
  begin
    try
     n:=StrToInt(Edit1.Text); 
     if (n = 0) or (n > 20) then
      begin
       ShowMessage('Solo se permiten numeros entre el 1 y el 20');
       Edit1.Text:='';
       Exit;
      end;
    except 
      ShowMessage('Solo se permiten numeros entre el 1 y el 20');
      Edit1.Text:='';
      Exit;
    end;
    calcular(n);    
  end
 else
  begin
    ShowMessage('Por favor ingrese un numero entre el 1 y el 20.');
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Label2.Visible:=true;
Edit1.Text:='';
Edit1.Visible:=true;
SpeedButton1.Visible:=true;
SpeedButton2.Visible:=true;
Label3.Visible:=false;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree
end;


procedure TForm1.FormShow(Sender: TObject);
begin
//ocultar elementos
Label2.Visible:=false;
Edit1.Visible:=false;
SpeedButton1.Visible:=false;
SpeedButton2.Visible:=false;
Label3.Visible:=false;
end;
//1,1,2,3,5,8,13...{1=1},{1+1= 2},{1+2=3},{2+3=5},{3+5=8},{5+8=13}..
function TForm1.funcionFibo(ronda:Integer):string;
var
 x,pibote,ultimo,I,n:Integer;
 cadena:string;
begin
  Result:='';
  pibote:=0;
  ultimo:=1;
  x:=0;
  n:=0;
  cadena:='';
  if ronda > 1 then
   begin
    ronda:=ronda -2;
    for I :=0 to ronda do
     begin     
      if (pibote = 0) and (ultimo = 1) then
       begin
        x:= 1;
       end
      else
       begin
         x:=(pibote + ultimo);
       end;
       if cadena <> '' then cadena:= cadena + ',' +IntToStr(x);
       if cadena = '' then cadena:= '1,'+IntToStr(x);     
       pibote:=ultimo;
       ultimo:=x;
       n:=n+1;
     end;
   end;
   if ronda = 1 then cadena:='1';
   if ronda = 0 then cadena:='0';
   pibote:=0;
   ultimo:=0;
   x:=0;
   Result:=cadena;
end;


procedure TForm1.calcular(ronda:integer);
var
  respuesta: string;
  respuesta1,n,I: Integer;
begin
  if (ronda = 1) or (ronda = 0) then
   begin
     Label3.Visible:=true;
     Label3.Caption:='Usted solicito '+Edit1.Text+',/n el resultado es: '+IntToStr(ronda);
   end
  else
   begin
     n:=0;    
     for I := 0 to ronda  do
      begin  
       if n <= 2 then
        begin
         if n = 0 then respuesta1:= 1;
         if n = 1 then respuesta1:= 1;
         if n = 2 then respuesta1:= n;
        end
       else
        begin 
         respuesta1:= (n - 1) + (n - 2);
        end;
        if respuesta <> '' then respuesta:= respuesta +','+IntToStr(respuesta1);
        if respuesta = '' then respuesta:=IntToStr(respuesta1);        
       n:=n+1;         
      end;
       Label3.Visible:=true;
       Label3.Caption:='Usted solicito '+Edit1.Text+',/n el resultado es: '+respuesta;    
   end;  
end;
//1,1,2,3,5,8,13...{1=1},{1+1= 2},{1+2=3},{2+3=5},{3+5=8},{5+8=13}..
function TForm1.funcionFibo2(ronda:Integer):integer;
var
 x,pibote,ultimo,I,n:Integer;
begin
  pibote:=0;
  ultimo:=1;              
  for I := 2 to ronda do
   begin
    x:=pibote + ultimo;
    pibote:=ultimo;
    ultimo:=x;
   end;
  Result:=x;
end;

end.
