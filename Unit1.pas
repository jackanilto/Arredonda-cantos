unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ArredondaCantos(Component: TWinControl; XRadius, YRadius: Integer); // Arredonda o componente especificado
    procedure ConfigurarArredondamento; // Configura o arredondamento para cada componente
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

// Procedure para arredondar os cantos de um componente específico
procedure TForm1.ArredondaCantos(Component: TWinControl; XRadius, YRadius: Integer);
  var
    Rgn: HRGN;
  begin
    Rgn := CreateRoundRectRgn(0, 0, Component.Width, Component.Height, XRadius, YRadius);
    SetWindowRgn(Component.Handle, Rgn, True);
  end;

// Procedure para configurar o arredondamento dos componentes
procedure TForm1.ConfigurarArredondamento;
  begin
    ArredondaCantos(Button1, 20, 20); // Arredondamento para Button1 com raio de 20x20
    ArredondaCantos(Panel1, 20, 20);  // Arredondamento para Panel1 com raio de 20x20
    ArredondaCantos(ComboBox1, 10, 10); // Exemplo de arredondamento para ComboBox1 com raio de 10x10 (personalizável)
    ArredondaCantos(GroupBox1, 20, 20); // Exemplo de arredondamento para v com raio de 20x20 (personalizável)
    ArredondaCantos(Edit1, 10, 10);     // Exemplo de arredondamento para Edit1 com raio de 10x10 (personalizável)
  end;

procedure TForm1.FormShow(Sender: TObject);
    begin
      ConfigurarArredondamento; // Chama a configuração de arredondamento ao iniciar o formulário
    end;

end.
