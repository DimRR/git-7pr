unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBGrids,
  ZConnection, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZTable1: TZTable;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure ZConnection1AfterConnect(Sender: TObject);
  private

  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ZConnection1AfterConnect(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin

end;

end.

