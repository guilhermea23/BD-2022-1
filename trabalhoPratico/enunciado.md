# Sistema Escolar

---

## Observação:

- Todo usuário tem que ter pelo menos:

1. Identificador
2. Nome
3. CPF
4. Identidade
5. Filiação
6. Sexo
7. Estado Civil
8. Naturalidade
9. Endereço
10. Telefone
11. Cidade
12. UF
13. País
14. E-mail
15. Escolaridade
16. Naturalidade
17. Cargo.

- O MODELO DEVE ESTAR **NORMALIZADO NA 3ª FORMA NORMAL**.
- CADA ALUNO DEVE ENTREGAR A MODELAGEM E O PROJETO IMPLEMENTADO EM UM BANCO DE DADOS DA SUA ESCOLHA

---

## Enunciado

A escola WISDOM oferece um conjunto de cursos a cada semestre, que deseja poder gerenciar de maneira adequada. O problema enfrentado é o controle das vagas no início de cada semestre, e durante o semestre, o cancelamento de inscrições e de cursos. É preciso controlar a evasão de alunos na escola. A escola recebe ajuda governamental, e para isto precisa semestralmente poder fornecer a qualquer momento dados sobre os cursos oferecidos e número de freqüentadores, a fim de garantir o financiamento. A escola necessita manter informações sobre os alunos, que possui os seguintes dados: matrícula, nome, sexo, estado civil, filiação, endereço e telefone, email, esporte preferido, e escolaridade. Cada curso é caracterizado por um código, descrição do curso, número de horas aulas, número de vagas total, número de vagas ocupadas, data de início, data de finalização, etc. Para cada curso é necessário ter um professor, que possui os seguintes dados: matrícula, nome, sexo, estado civil, filiação, titulação, endereço e telefone. A cada semestre, um aluno pode se inscrever em quantos cursos quiser. Cada inscrição é individual por curso, ou seja, o aluno simplesmente informa um curso que deseja frequentar/matricular. Se quiserem freqüentar vários cursos, deve fazer uma inscrição por curso. No início de cada semestre, após o encerramento do período de inscrições, a escola cancela todos os cursos que não possuem pelo menos 15 alunos. Alunos também podem cancelar uma inscrição em um curso no qual se inscreveram. O controle de evasão é feito por curso no respectivo semestre letivo.
