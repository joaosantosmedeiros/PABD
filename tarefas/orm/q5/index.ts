import { PrismaClient } from './generated/prisma';

const prisma = new PrismaClient();

async function main() {
  // 1. Inserir uma atividade no projeto 1
  const atividade = await prisma.atividade.create({
    data: {
      descricao: 'Desenvolvimento do backend',
      projeto: 1,
      data_inicio: new Date('2025-05-20'),
      data_fim: new Date('2025-06-15'),
    },
  });
  console.log('Atividade inserida: ');
  console.log(atividade);

  // 2. Atualizar responsável do projeto 1
  const projeto = await prisma.projeto.update({
    where: { codigo: 1 },
    data: { responsavel: 4 },
  });
  console.log('Responsável atualizado:');
  console.log(projeto);

  // 3. Listar projetos e suas atividades
  const projetos = await prisma.projeto.findMany({
    include: {
      atividade_atividade_projetoToprojeto: true,
    },
  });

  console.log('Projetos e atividades:');
  for (const p of projetos) {
    console.log(p);
  }
}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });
