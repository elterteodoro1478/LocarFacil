using LocarFacil.Models;
using Microsoft.EntityFrameworkCore;

namespace LocarFacil.Repository
{
    public class UsuarioLocacaoRep
    {

        private readonly Contexto _contexto;

        public UsuarioLocacaoRep()
        {
            Contexto contexto = new Contexto();
            _contexto = contexto;
        }

        public async Task<IEnumerable<UsuarioLocacao>> SelecionarTodos()
        {
            try
            {
                return await _contexto.UsuarioLocacao.ToListAsync();
            }
            catch (Exception ex)
            {
                UsuarioLocacao usuarioLocacao = new UsuarioLocacao();
                usuarioLocacao.Id = 0;
                usuarioLocacao.Nome = $@"Erro na seleção de estados: {ex.Message}";
                List<UsuarioLocacao> Lista = new List<UsuarioLocacao>();

                Lista.Add(usuarioLocacao);
                return Lista.ToList();
            }
        }


        public async Task<IEnumerable<UsuarioLocacao>> SelecionarListaByNome(string Nome)
        {
            try
            {
                return await _contexto.UsuarioLocacao.Where(n => n.Nome.ToUpper().Contains(Nome.ToUpper())).ToListAsync();
            }
            catch (Exception ex)
            {
                UsuarioLocacao usuarioLocacao = new UsuarioLocacao();
                usuarioLocacao.Id = 0;
                usuarioLocacao.Nome = $@"Erro na seleção de estados: {ex.Message}";
                List<UsuarioLocacao> Lista = new List<UsuarioLocacao>();

                Lista.Add(usuarioLocacao);
                return Lista.ToList();
            }
        }
        public async Task<UsuarioLocacao> SelecionById(int id)
        {
            try
            {
                return await _contexto.UsuarioLocacao.Where(c => c.Id == id).FirstOrDefaultAsync();
            }
            catch (Exception ex)
            {
                UsuarioLocacao usuarioLocacao = new UsuarioLocacao();
                usuarioLocacao.Id = 0;
                usuarioLocacao.Nome = $@"Erro na seleção de estados: {ex.Message}";
                return usuarioLocacao;
            }
        }



    }
}
