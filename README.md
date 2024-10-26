## **Arredondamento De Cantos Em Componentes Delphi**
- Este projeto em Delphi apresenta uma maneira de aplicar cantos arredondados em componentes visuais que herdam de TWinControl, utilizando a API do Windows. O código define uma classe TForm1 com métodos específicos para configurar o arredondamento dos cantos dos componentes em um formulário.

#### Estrutura e Funcionalidade do Código
Objetivo
- O objetivo do código é permitir a aplicação de cantos arredondados em diferentes componentes visuais (por exemplo, TPanel, TButton, TEdit) ao iniciar o formulário. A configuração do raio de arredondamento pode ser personalizada para cada componente individualmente.

#### Componentes do Projeto
No formulário TForm1, temos os seguintes componentes:

1. Panel1 (TPanel)
2. Edit1 (TEdit)
3. Button1 (TButton)
4. ComboBox1 (TComboBox)
5. GroupBox1 (TGroupBox)
#### Estrutura do CódigoEstrutura do Código
O código consiste em duas procedures principais dentro da classe TForm1:

**ArredondaCantos: **Aplica o efeito de arredondamento nos componentes visualmente.
**ConfigurarArredondamento:** Define quais componentes serão arredondados e seus valores de raio.
#### Métodos e Descrição
**1. ArredondaCantos**
delphi
`
procedure TForm1.ArredondaCantos(Component: TWinControl; XRadius, YRadius: Integer);
var
  Rgn: HRGN;
begin
  Rgn := CreateRoundRectRgn(0, 0, Component.Width, Component.Height, XRadius, YRadius);
  SetWindowRgn(Component.Handle, Rgn, True);
end;`

#### Este método recebe três parâmetros:

Component: Componente a ser arredondado.
XRadius e YRadius: Especificam os raios horizontais e verticais dos cantos arredondados.
A procedure usa CreateRoundRectRgn, da API do Windows, para criar uma região retangular com cantos arredondados. O SetWindowRgn então aplica esta região ao componente especificado.

**2. ConfigurarArredondamento**
delphi
`
procedure TForm1.ConfigurarArredondamento;
begin
  ArredondaCantos(Button1, 20, 20);   // Aplica raio 20x20 a Button1
  ArredondaCantos(Panel1, 20, 20);    // Aplica raio 20x20 a Panel1
  ArredondaCantos(ComboBox1, 10, 10); // Aplica raio 10x10 a ComboBox1
  ArredondaCantos(GroupBox1, 20, 20); // Aplica raio 20x20 a GroupBox1
  ArredondaCantos(Edit1, 10, 10);     // Aplica raio 10x10 a Edit1
end;`

A ConfigurarArredondamento chama ArredondaCantos para cada componente que deseja arredondar, passando os componentes específicos e os valores de raio desejados.

**3. FormShow**
delphi
`
procedure TForm1.FormShow(Sender: TObject);
begin
  ConfigurarArredondamento;
end;`

Este evento é executado quando o formulário é mostrado pela primeira vez. Ele chama ConfigurarArredondamento, aplicando o arredondamento aos componentes conforme configurado.

**Como Usar**
Adicione componentes no formulário como TPanel, TButton, TEdit, etc.
Insira chamadas a ArredondaCantos dentro de ConfigurarArredondamento para os novos componentes, especificando os raios de arredondamento desejados.
O arredondamento será aplicado automaticamente na abertura do formulário (FormShow).
Requisitos
Delphi IDE
**Compatibilidade:** Pode exigir permissões para compilar devido ao uso da API do Windows.
Observações
Este código faz uso de TWinControl, então funciona apenas com componentes que herdam dessa classe.
Os valores de XRadius e YRadius podem ser ajustados para personalizar o nível de arredondamento.
**Exemplo de Uso**
Para adicionar arredondamento a um novo componente, adicione a chamada em ConfigurarArredondamento como segue:

delphi
`
ArredondaCantos(NovoComponente, 15, 15);`

Substitua NovoComponente pelo nome do componente desejado e ajuste os valores de raio conforme necessário.

#### Conclusão
Este exemplo fornece uma abordagem simples e eficaz para adicionar cantos arredondados em componentes visuais no Delphi. É uma ótima forma de melhorar a aparência da interface do usuário, dando aos componentes um toque moderno e personalizado.
