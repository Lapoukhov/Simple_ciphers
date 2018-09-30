unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm2 = class(TForm)
    panelRailFence: TPanel;
    panelVigener: TPanel;
    panelStolbMethod: TPanel;
    LabelRail: TLabel;
    btnDownloadRail: TBitBtn;
    btnCipherRail: TBitBtn;
    btnDecipherRail: TBitBtn;
    editKeyRail: TEdit;
    btnKeyRail: TBitBtn;
    LabeStolb: TLabel;
    Label3: TLabel;
    memDownloadRail: TMemo;
    memCipherRail: TMemo;
    memDecipherRail: TMemo;
    editKeyStolb: TEdit;
    btnDecipherStolb: TBitBtn;
    btnCipherStolb: TBitBtn;
    btnDownloadStolb: TBitBtn;
    btnKeyStolb: TBitBtn;
    memDownloadStolb: TMemo;
    memDecipherStolb: TMemo;
    memCipherStolb: TMemo;
    editKeyVig: TEdit;
    btnDecipherVIG: TBitBtn;
    dtnCipherVIG: TBitBtn;
    btnDownloadVIG: TBitBtn;
    btnKeyVIG: TBitBtn;
    memDownloadVIG: TMemo;
    memDecipherVIG: TMemo;
    memCipherVIG: TMemo;
    procedure btnDecipherVIGClick(Sender: TObject);
    procedure dtnCipherVIGClick(Sender: TObject);
    procedure btnKeyVIGClick(Sender: TObject);
    procedure btnDownloadVIGClick(Sender: TObject);
    procedure btnDecipherStolbClick(Sender: TObject);
    procedure btnCipherStolbClick(Sender: TObject);
    procedure btnDownloadStolbClick(Sender: TObject);
    procedure btnKeyStolbClick(Sender: TObject);
    procedure btnDecipherRailClick(Sender: TObject);
    procedure btnCipherRailClick(Sender: TObject);
    procedure btnKeyRailClick(Sender: TObject);
    procedure btnDownloadRailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  Alphabet: string[33] = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ';

var
  Form2: TForm2;
  key1,k,i: integer;
  plaintext,ciphertext,deciphertext,key2,key3: string;
  A,B: array of array of char;

implementation

{$R *.dfm}

procedure DownloadPlaintext(fName,text:string);
var f:textfile;
    temp:string;
begin
  text:='';
  assignfile(f,fName);
  if FileExists(fName) then
    reset(f)
  else
  begin
    ShowMessage('ОШИБКА: Файл не найден!');
    Exit;
  end;
  plaintext:='';
  while not (Eof(f)) do
  begin
    readln(f,temp);
    plaintext:=plaintext+temp;
  end;
  closefile(f);
end;

procedure SaveToFile(fName,text:string);
var f:textfile;
begin
  assignfile(f,fName);
  rewrite(f);
  write(f,text);
  closefile(f);
end;

procedure EnglishText(var input: string);
var
  i: Integer;
begin
  i:= 1;
  input:= AnsiUpperCase(input);
  if Length(input) = 0 then
  begin
    ShowMessage('ОШИБКА: Не содержит подходящих символов!');
    Exit;
  end;
  while i <= Length(input) do
  begin
    if (input[i] in ['A'..'Z']) then
    begin
      inc(i);
      Continue;
    end
    else
      Delete(input, i, 1);
  end;
  if input='' then
    ShowMessage('ОШИБКА: Не содержит подходящих символов!');
end;

procedure RussianText(var input: string);
var
  i: Integer;
begin
  i:= 1;
  input:= AnsiUpperCase(input);
  if Length(input) = 0 then
  begin
    ShowMessage('ОШИБКА: Не содержит подходящих символов!');
    Exit;
  end;
  while i <= Length(input) do
  begin
    if (input[i] in ['А'..'Я'])or(input[i]='Ё') then
    begin
      inc(i);
      Continue;
    end
    else
      Delete(input, i, 1);
  end;
  if input='' then
    ShowMessage('ОШИБКА: Не содержит подходящих символов!');
end;

function EncRailFence(key: integer; text: string): string;
type arr = array of string;
var n,i: integer;
    output: string;
    increase: boolean;
    RailFence: arr;
begin
  setlength(RailFence, key + 1);            //задается размер массива
  key:=key mod (length(text));            //чтобы ключ был меньше длины текста
  if key = 0 then key:=1;
  if key <> 1 then
  begin
    increase:= true;
    n:= 1;                                //инициализация массива
    for i:= 1 to key do
      RailFence[i]:='';
    for i:= 1 to Length(text) do          //в RailFence - шифротекст
    begin
      RailFence[n]:= RailFence[n] + text[i];
      if n = 1 then
        increase:= true
      else
        if n = key then
          increase := false;
      if increase = true then
        n:= n + 1
      else if increase = false then
        n:= n - 1;
    end;
    for i := 1 to key do
    begin
      output := output + RailFence[i];       //считывание шифротекста
    end;
    result := output;
  end
  else
    result := text;
end;

function DecRailFence(key: integer; plaintext: string): string;
type
  arr = array of string;
  arrint = array of integer;
var
  n,i,h,m,temp: integer;
  increase: boolean;
  tempstr,output: string;
  RailFence,RailFenceEn: arr;
  RailFenceInt: arrint;
begin
  setlength(RailFence, key + 1);                 //задание размера массивов
  setlength(RailFenceEn, key + 1);
  setlength(RailFenceInt, key + 1);
  key:=key mod (length(plaintext));            //проверка ключа на длину
  if key = 0 then key:=1;
  if key <> 1 then
  begin
    increase := true;
    n:= 1;
    for i:= 1 to key do
      RailFenceEn[i]:= '';
    for i:= 1 to Length(plaintext) do
    begin
      RailFenceEn[n]:= RailFenceEn[n] + plaintext[i];
      if n = 1 then
        increase := true
      else
        if n = key then
          increase := false;
      if increase = true then
        n := n + 1
      else if increase = false then
        n := n - 1;
    end;
    //проверка на правильность номеров символов в массиве
    temp:= 1;
    for i:= 1 to key do
      for h:= 1 to Length(RailFenceEn[i]) do
        if temp <= Length(plaintext) then
        begin
          RailFence[i] := RailFence[i] + plaintext[temp];
          inc(temp);
        end;
    for i := 1 to key do
      for n := 1 to Length(RailFence[i]) do
        if RailFence[i][n] = ' ' then
          RailFence[i][n] := '*';
    for i := 1 to key do
      for n := 1 to key do
        insert(' ', RailFence[i], Length(RailFence[i]) + 1);
    for i := 1 to key do
      RailFenceInt[i] := 1;
    increase := false;
    n := 1; i := 1;
    while Length(output) <> Length(plaintext) do
    begin
      if i = 1 then
        temp := key
      else
        temp := key - 1;
      for m := 1 to temp do
      begin
        if RailFence[n][RailFenceInt[n]] <> ' ' then
          output := output + RailFence[n][RailFenceInt[n]];
        inc(RailFenceInt[n]);
        if n = 1 then
          increase := true
        else if n = key then
          increase := false;
        if increase = true then
          n := n + 1
        else if increase = false then
          n := n - 1;
        inc(i);
      end;
    end;
    for n := 1 to Length(output) do
      if output[n] = '*' then
        output[n] := ' ';
    result := output;
  end
  else
    result := plaintext;
end;

function StolbCipher(key,text:string):string;
var i,j,k,N,M,temp: integer;
    str: string;
begin
  M:=length(key);     //конец 1-го массива - длина ключевого слова
  N:=2;               //т.к. первая строка м-цы - ключевое слово
  temp:=M;
  while temp<length(plaintext) do
  begin
    temp:=temp+M;
    inc(N);
  end;
  SetLength(A,N,M);

  for j:= 0 to M-1 do      //первая строка - ключевое слово
    A[0,j]:=key[j+1];

  k:=1;
  for i:= 1 to N-1 do      //заполнение м-цы текстом начиная со 2-ой строки
    for j:= 0 to M-1 do
    begin
      A[i,j]:=plaintext[k];
      inc(k);
    end;

  temp:=0;                   //внешний цикл
  for k:= 1 to M do
  begin
    for j:= 0 to M-2 do      //сортировка столбцов по ключевому слову
    begin
      if A[0,j]>A[0,j+1] then
      begin
        for i:= 0 to N-1 do
          str:=str+A[i,j];       //в str весь столбец, тип:string
        for i:= 0 to N-1 do
          A[i,j]:=A[i,j+1];
        for i:= 0 to N-1 do
          A[i,j+1]:=str[i+1];
      end;
      str:='';
    end;
    inc(temp);
  end;

  for j:=0 to M-1 do       //считывание шифротекста
  begin
    for i:=1 to N-1 do
    if A[i,j]<>'' then
      result:=result+A[i,j];
  end;
end;

function StolbDecipher(key,text:string):string;
var N,M,temp,i,j,k:integer;
begin
  ciphertext:=StolbCipher(key2,plaintext);
  M:=length(key);     //конец 1-го массива - длина ключевого слова
  N:=2;               //т.к. первая строка м-цы - ключевое слово
  temp:=M;
  while temp<length(plaintext) do
  begin
    temp:=temp+M;
    inc(N);
  end;
  SetLength(B,N,M);
  for k:= 0 to M-1 do
  begin
    for j:=0 to M-1 do
    begin
      if (key[k+1]=A[0,j]) then
      begin
        for i:= 0 to N-1 do
          B[i,k]:=A[i,j];
        A[0,j]:=' ';
        break;
      end;
    end;
  end;

  for i:=1 to N-1 do       //считывание
  begin
    for j:=0 to M-1 do
    if B[i,j]<>'' then
      result:=result+B[i,j];
  end;
end;

function CipherVIG(key:string;plaintext:string):string;
var i,j:integer;
    str:string;
begin
  j:=1;
  for i:=1 to length(plaintext) do       //реализация прямого ключа
  begin
    str:=str+key[j];
    if j=length(key) then
      j:=1
    else
      inc(j);
  end;
  for i:=1 to length(plaintext) do
  begin
    j:=(pos(plaintext[i],Alphabet)+pos(str[i],Alphabet)-1) mod 33;
    if j=0 then j:=33;
    result:=result+Alphabet[j];
  end;
end;

function DecipherVIG(key:string;plaintext:string):string;
var i,j:integer;
    str:string;
begin
  j:=1;
  for i:=1 to length(plaintext) do
  begin
    str:=str+key[j];
    if j=length(key) then
      j:=1
    else
      inc(j);
  end;
  for i:=1 to length(plaintext) do
  begin
    j:=(pos(plaintext[i],Alphabet)-pos(str[i],Alphabet)+1) mod 33;
    if j<=0 then
      j:=33+j;
    result:=result+Alphabet[j];
    str:=str+Alphabet[j];
  end;
end;
//---------------------------------------------------------------------------------
procedure TForm2.btnCipherRailClick(Sender: TObject);                    //изгородь
begin
  ciphertext:=EncRailFence(key1,plaintext);
  memCipherRail.Lines[0]:=ciphertext;
  SaveToFile('файлы_изгородь/Rail_Cipher.txt',ciphertext);
end;

procedure TForm2.btnDecipherRailClick(Sender: TObject);                  //изгородь
begin
  deciphertext:=DecRailFence(key1,ciphertext);
  memDecipherRail.Lines[0]:=deciphertext;
  SaveToFile('файлы_изгородь/Rail_Decipher.txt',deciphertext);
end;

procedure TForm2.btnDownloadRailClick(Sender: TObject);                  //изгородь
begin
  plaintext:='';
  DownloadPlaintext('файлы_изгородь/1.1_Rail_PlainText.txt',plaintext);
  memDownloadRail.Lines[0]:=plaintext;
  EnglishText(plaintext);
end;

procedure TForm2.btnKeyRailClick(Sender: TObject);                       //изгородь
begin
  key1:=strtoint(editKeyRail.Text);
  if key1=0 then key1:=1;
  if key1<0 then ShowMessage('ОШИБКА: введен отрицательный ключ!');
end;
//---------------------------------------------------------------------------------
procedure TForm2.btnCipherStolbClick(Sender: TObject);
begin
  ciphertext:=StolbCipher(key2,plaintext);
  memCipherStolb.Lines[0]:=ciphertext;
  SaveToFile('файлы_столбцовый/Stolb_Cipher.txt',ciphertext);
end;

procedure TForm2.btnDecipherStolbClick(Sender: TObject);
begin
  deciphertext:=StolbDecipher(key2,ciphertext);
  memDecipherStolb.Lines[0]:=deciphertext;
  SaveToFile('файлы_столбцовый/Stolb_Decipher.txt',deciphertext);
end;

procedure TForm2.btnDownloadStolbClick(Sender: TObject);
begin
  plaintext:='';
  DownloadPlaintext('файлы_столбцовый/1.1_Stolb_PlainText.txt',plaintext);
  memDownloadStolb.Lines[0]:=plaintext;
  EnglishText(plaintext);
end;

procedure TForm2.btnKeyStolbClick(Sender: TObject);
begin
  key2:=editKeyStolb.Text;
  EnglishText(key2);
end;

//---------------------------------------------------------------------------------
procedure TForm2.btnDownloadVIGClick(Sender: TObject);
begin
  plaintext:='';
  DownloadPlaintext('файлы_виженер/1.1_VIG_PlainText.txt',plaintext);
  memDownloadVIG.Lines[0]:=plaintext;
  RussianText(plaintext);
end;

procedure TForm2.btnDecipherVIGClick(Sender: TObject);
begin
  deciphertext:=DecipherVIG(key3,ciphertext);
  memDecipherVIG.Lines[0]:=deciphertext;
  SaveToFile('файлы_виженер/VIG_Decipher.txt',deciphertext);
end;

procedure TForm2.btnKeyVIGClick(Sender: TObject);
begin
  key3:=editKeyVIG.Text;
  RussianText(key3);
end;

procedure TForm2.dtnCipherVIGClick(Sender: TObject);
begin
  ciphertext:=CipherVIG(key3,plaintext);
  memCipherVIG.Lines[0]:=ciphertext;
  SaveToFile('файлы_виженер/VIG_Cipher.txt',ciphertext);
end;

end.
