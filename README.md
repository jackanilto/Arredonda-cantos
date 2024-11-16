Arredonda Cantos
Arredonda Cantos é uma biblioteca para personalização visual em Delphi, permitindo o arredondamento de cantos de controles e formulários, ideal para interfaces modernas e atraentes. Fácil de integrar e altamente customizável, ele aprimora a experiência visual de sistemas Windows desenvolvidos com Delphi.

📋 Visão Geral
O projeto foi criado para simplificar o arredondamento de elementos visuais, garantindo flexibilidade e usabilidade em aplicações Delphi. Ele é compatível com diversos controles e estilos de janelas, permitindo ajustes precisos ao design desejado.

🚀 Funcionalidades
Arredondamento de Formulários e Controles: Personalize o raio de curvatura para cada elemento.
Facilidade de Integração: Apenas algumas linhas de código para começar.
Compatibilidade com Estilos Visuais do Windows: Funciona com temas padrão.
Código Limpo e Modular: Simples de adaptar e expandir.
🛠️ Requisitos do Sistema
Antes de usar o Arredonda Cantos, verifique os pré-requisitos abaixo:

Delphi 7 ou superior (compatível com Delphi 11).
Sistema operacional Windows (todas as versões com suporte a VCL).
⚙️ Como Configurar
Clone este repositório:

bash
Copiar código
git clone https://github.com/jackanilto/Arredonda-cantos.git
Adicione o arquivo principal da biblioteca ao seu projeto no Delphi.

No formulário ou controle desejado, importe a unidade:

delphi
Copiar código
uses ArredondaCantos;
Configure o arredondamento utilizando o método apropriado:

delphi
Copiar código
ArredondaCantos(MeuControle, 10);
Substitua MeuControle pelo nome do controle ou formulário e ajuste o valor 10 conforme o raio desejado.

📖 Exemplo de Uso
delphi
Copiar código
procedure TForm1.FormCreate(Sender: TObject);
begin
  ArredondaCantos(Self, 20); // Arredonda o formulário com raio de 20 pixels
end;
🤝 Contribuições
Contribuições são sempre bem-vindas! Siga os passos abaixo para colaborar:

Faça um fork do projeto.
Crie um branch para suas alterações:
bash
Copiar código
git checkout -b minha-feature
Faça commit das alterações:
bash
Copiar código
git commit -m "Descrição da alteração"
Envie suas mudanças:
bash
Copiar código
git push origin minha-feature
Abra um Pull Request no repositório principal.
📜 Licença
Este projeto está licenciado sob a MIT License. Consulte o arquivo LICENSE para mais informações.

Caso precise de ajustes adicionais, é só pedir! 😊
