using System;
using System.Collections.Generic;

namespace LocarFacil.Models
{
    public partial class UsuarioLocacao
    {
        public UsuarioLocacao()
        {
            ImovelIdLocadorNavigation = new HashSet<Imovel>();
            ImovelIdLocatarioNavigation = new HashSet<Imovel>();
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public string Documento { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public string Celular { get; set; }
        public string TelefoneFixo { get; set; }

        public virtual ICollection<Imovel> ImovelIdLocadorNavigation { get; set; }
        public virtual ICollection<Imovel> ImovelIdLocatarioNavigation { get; set; }
    }
}
