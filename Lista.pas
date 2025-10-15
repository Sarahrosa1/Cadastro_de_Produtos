unit Lista;

interface

uses
  TelaCadastroProduto,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    pnlLista: TPanel;
    pnlBotoes: TPanel;
    dbgrdLista: TDBGrid;
    lblListaProdutos: TLabel;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnRemover: TButton;
    dsLista: TDataSource;
    cdsLista: TClientDataSet;
    strngfldListaNome: TStringField;
    fltfldListaPreco: TFloatField;
    intgrfldListaQuantidade: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnAdicionarClick(Sender: TObject);
begin
 TfrmTelaCadastroProduto.Adicionar(Self, cdsLista);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
 //cdsLista.FieldDefs.Add('Nome', ftString, 30);
 //cdsLista.FieldDefs.Add('Preço', ftFloat, 0);
 //cdsLista.FieldDefs.Add('Quantidade', ftInteger, 0);
 cdsLista.CreateDataSet;
end;

end.
