<h1>Instruções</h1>
<h3>Aplicando os conceitos desenvolvidos em aula, crie o DER e posteriormente aplique as formas normais.</h3>
<img src="./imagens/image-fixa-medica.png" width="700">
<p><h1>Reresolução do exercício</h1></p>
<h3>DER(BRmodelo)</h3>
<img src="./imagens/image-DER-BRmodelo.png" width="900">
<h3>Normalização</h3>
<p><h3>0FNM</h3>
PACIENTE (numeroPaciente, nomePaciente, dataNascimento, sexo, codigoConvenio,
estadoCivil, rg, telefone, endereco,(numeroConsulta, dataConsulta,
crmMedico, nomeMedico, diagnostico,(codigoExame, descricaoExame, data)))</p>

<h3>1ª Forma Normal (1FN)</h3>
<p>PACIENTE (numeroPaciente, nomePaciente, dataNascimento, sexo, codigoConvenio, estadoCivil, rg, telefone, endereco)</p>

<p>CONSULTA (numeroPaciente, numeroConsulta, dataConsulta, crmMedico, nomeMedico, diagnostico)</p>

<p>EXAME (numeroPaciente, numeroConsulta, codigoExame, descricaoExame, data)</p>

<h3>2ª Forma Normal (2FN)</h3>
<p>PACIENTE (numeroPaciente, nomePaciente, dataNascimento, sexo, codigoConvenio, estadoCivil, rg, telefone, endereco)</p>

<p>CONSULTA (numeroConsulta, numeroPaciente, dataConsulta, crmMedico, nomeMedico, diagnostico)</p>

<p>EXAME (numeroConsulta, codigoExame, descricaoExame, data)</p>

<h3>3ª Forma Normal (3FN)</h3>
<p>PACIENTE (numeroPaciente, nomePaciente, dataNascimento, sexo, codigoConvenio, estadoCivil, rg, telefone, endereco)</p>

<p>MEDICO (crmMedico, nomeMedico)</p>

<p>CONSULTA (numeroConsulta, numeroPaciente, crmMedico, dataConsulta, diagnostico)</p>

<p>EXAME (numeroConsulta, codigoExame, descricaoExame, data)</p>
