using LocarFacil.Models;
using Microsoft.EntityFrameworkCore;

namespace LocarFacil.Repository
{
    public class EstadosRep
    {
        private readonly Contexto _contexto;

        public EstadosRep()
        {
            Contexto contexto = new Contexto();
            _contexto = contexto;
        }

        public async Task<IEnumerable<Estados>> SelecionarTodos()
        {
            try
            {
                return await _contexto.Estados.ToListAsync();
            }
            catch (Exception ex)
            {
                Estados estados = new Estados();
                estados.Id = 0;
                estados.Nome  = $@"Erro na seleção de estados: {ex.Message}";
                List<Estados> Lista = new List<Estados>();

                Lista.Add(estados);
                return Lista.ToList();
            }
        }

        public async Task<Estados> SelecionarPorUF( string UF)
        {
            try
            {
                return await _contexto.Estados.Where(n => n.UF == UF).FirstOrDefaultAsync();
            }
            catch (Exception ex)
            {
                Estados estados = new Estados();
                estados.Id = 0;
                estados.Nome = $@"Erro na seleção de estados: {ex.Message}";
               
                return estados;
            }
        }

    }
}
