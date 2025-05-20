const odbc = require('odbc');

const connectionString = 'DSN=atividade_db';

async function main() {
  let connection;
  try {
    connection = await odbc.connect(connectionString);
    console.log('✅ Conectado ao PostgreSQL via ODBC');

    // // 1. Inserir uma atividade
    await connection.query(`
      INSERT INTO atividade (descricao, projeto, data_inicio, data_fim)
      VALUES ('Desenvolvimento do backend', 1, '2025-05-20', '2025-06-15');
    `);
    console.log('Atividade inserida');

    // 2. Atualizar o líder (responsável) de um projeto
    await connection.query(`
      UPDATE projeto
      SET responsavel = 3
      WHERE codigo = 1;
    `);
    console.log('Responsável do projeto atualizado');

    // 3. Listar todos os projetos e suas atividades
    const result = await connection.query(`
      SELECT
        p.codigo AS projeto_codigo,
        p.nome AS projeto_nome,
        a.codigo AS atividade_codigo,
        a.descricao AS atividade_descricao,
        a.data_inicio,
        a.data_fim
      FROM projeto p
      LEFT JOIN atividade a ON a.projeto = p.codigo
      ORDER BY p.codigo, a.codigo;
    `);

    console.log('\n Lista de Projetos e Atividades:');
    console.table(result);
  } catch (error) {
    console.error('Erro na operação:', error);
  } finally {
    if (connection) {
      await connection.close();
      console.log('Conexão encerrada.');
    }
  }
}

main();
