from flask import Flask, render_template, redirect, request, url_for
import db

app = Flask(__name__)

requisicao = db.dbcon()


@app.route("/home", methods=["POST", "GET"])
def Index():
    if request.method == "POST":
        turma = request.form["turma"]
        return redirect(url_for("turmas", n=turma))
    else:
        return render_template("Index.html")


@app.route("/turmas/<n>", methods=["POST", "GET"])
def turmas(n):
    n1 = n
    if request.method == "POST":
        faltascod = request.form.getlist("cod_aluno")
        faltas710 = request.form.getlist("horario1")
        faltas1030 = request.form.getlist("horario2")
        cod_prof = request.form.getlist("codprof")
        print(faltascod)
        print(faltas710)
        print(faltas1030)
        print(cod_prof)
        # fmt: off
        for i in range(len(faltascod)):
            print('batata')
            print (n1)
            if n1 == '1':
                print('batata 1')
                print(faltas710[i])
                print(faltas1030[i])
                if faltas710[i] == '0' and faltas1030[i] == '2':
                    send = requisicao.conexaoInsert(f"INSERT INTO faltas values({faltascod[i]},100,CURRENT_DATE)")
                    print(send.context)
                    print("teste1")
                elif faltas710[i] == '1' and faltas1030[i] == '0':
                    send = requisicao.conexaoInsert(f"INSERT INTO faltas values({faltascod[i]},100,CURRENT_DATE)")
                    print(send.context)
                    print('teste 2')
                elif faltas710[i] == '1' and faltas1030[i] == '2':
                    send = requisicao.conexaoInsert(f"INSERT INTO faltas values({faltascod[i]},100,CURRENT_DATE)")
                    send2 = requisicao.conexaoInsert(f"INSERT INTO faltas values({faltascod[i]},100,CURRENT_DATE)")
                    print(send.context)
                    print(send2.context)
                    print('teste 3')
            elif n1 == '2':
                if faltas710[i] != '0' and faltas1030[i] == '2':
                    send = requisicao.conexaoInsert(f"INSERT INTO faltas values({faltascod[i]},101,CURRENT_DATE)")
                    print(send.context)
                elif faltas710[i] == '1' and faltas1030[i] != '0':
                    send = requisicao.conexaoInsert(f"INSERT INTO faltas values({faltascod[i]},101,CURRENT_DATE)")
                    print(send.context)
                elif faltas710[i] == '1' and faltas1030[i] == '2':
                    send = requisicao.conexaoInsert(f"INSERT INTO faltas values({faltascod[i]},101,CURRENT_DATE)")
                    send2 = requisicao.conexaoInsert(f"INSERT INTO faltas values({faltascod[i]},101,CURRENT_DATE)")
                    print(send.context)
                    print(send2.context)
        # fmt:on
        getFaltas = requisicao.conexao(f"SELECT * FROM faltas")
        return render_template("faltas.html", getFaltas=getFaltas)
    else:
        n1 = n
        # fmt: off
        GetProf = requisicao.conexao(f"SELECT nome_professor,cod_professor from Professores WHERE cod_materia = 2 or cod_materia = 3 or cod_turma = {n1}")
        GetAluno = requisicao.conexao(f"Select nome_aluno,cod_aluno from Aluno where cod_turma = {n1}")
        return render_template("turmas.html", GetProf=GetProf, numero=n1,GetAluno = GetAluno)
    # fmt:on


if __name__ == "__main__":
    app.run()
