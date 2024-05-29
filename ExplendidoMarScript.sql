Create database ExplendidoMar;

Use ExplendidoMar;

Create table Usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45) unique,
senha varchar(45),
constraint checkEmail check (email like ('%@%'))) ;

INSERT INTO usuario (nome, email, senha) VALUES
('ana', 'ana@gmail', '123'),
('rafa', 'rafa@gmail', '765'),
('kaio', 'kaio@gmail', '987'),
('samuel', 'samuel@gmail', '341'),
('lucas', 'lucas@gmail', '456'),
('felipe', 'felipe@gmail', '784'),
('bruno', 'bruno@gmail', '018'),
('marcos', 'marcos@gmail', '253');

Select *from Usuario;

Create table Quiz (
idQuiz int primary key auto_increment,
Nome varchar (45),
Descrição varchar (45));

Insert into Quiz (Nome, Descrição) values
('Curioso', 'Quiz sobre o oceano');

Select *from Quiz;

Create table PontuacaoQuiz (
idPontuacao int,
fkUsuario int,
fkQuiz int,
Pontuacao int,
primary key (fkUsuario, fkQuiz, idPontuacao),
constraint fkUsuarioQuiz foreign key (fkUsuario) references Usuario (idUsuario),
constraint fkQuizUsuario foreign key (fkQuiz) references Quiz (idQuiz))
;
select * from PontuacaoQuiz;


Insert into PontuaçãoQuiz values
(1, 1, 8),
(2, 1, 9),
(3, 1, 3),
(4, 1, 6),
(5, 1, 7),
(6, 1, 10),
(7, 1, 5),
(8, 1, 2);

insert into pontuacaoquiz values (3, 1, 1, 10);


Select idPontuacao from PontuacaoQuiz where fkusuario = 1 and fkquiz = 1 order by idpontuacao desc limit 1;

update pontuaçãoquiz set pontuação = 1 where fkusuario = 1;

describe pontuaçãoquiz;

Select *from PontuaçãoQuiz where fkUsuario = 1;

Select 	Usuario.nome as NomeUsuario, 
		PontuaçãoQuiz.Pontuação as Pontuação
		from Usuario join PontuaçãoQuiz
		on idUsuario = PontuaçãoQuiz.fkUsuario;
