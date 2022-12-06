using System;
using System.Collections.Generic;

namespace LocarFacil.Models
{
    public partial class Imovel
    {
        public Imovel()
        {
            ImovelFotos = new HashSet<ImovelFotos>();
        }

        public int Id { get; set; }
        public string Descricao { get; set; }
        public string Detalhamento { get; set; }
        public string LinkFoto { get; set; }
        public string Cep { get; set; }
        public string Numero { get; set; }
        public string Logradouro { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string? Complemento { get; set; }
        public string UF { get; set; }
        public decimal VrAluguel { get; set; }
        public decimal Tamanho { get; set; }
        public int Quartos { get; set; }
        public int Banheiros { get; set; }
        public int? Vagas { get; set; }
        public int? IdLocador { get; set; }
        public int IdLocatario { get; set; }
        public int? IdTipoImovel { get; set; }
        public int? Salas { get; set; }

        public virtual UsuarioLocacao IdLocadorNavigation { get; set; }
        public virtual UsuarioLocacao IdLocatarioNavigation { get; set; }
        public virtual TipoImovel IdTipoImovelNavigation { get; set; }
        public virtual ICollection<ImovelFotos> ImovelFotos { get; set; }
    }
}
