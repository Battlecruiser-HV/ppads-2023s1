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
        return render_template("turmas.html", numero=n1)
    else:
        n1 = n
        # fmt: off
        GetProf = requisicao.conexao(f"SELECT nome_professor,cod_professor from Professores WHERE cod_materia = 2 or cod_materia = 3 or cod_turma = {n1}")
        GetAluno = requisicao.conexao(f"Select nome_aluno,cod_aluno from Aluno where cod_turma = {n1}")
        return render_template("turmas.html", GetProf=GetProf, numero=n1,GetAluno = GetAluno)
    # fmt:on


if __name__ == "__main__":
    app.run()
