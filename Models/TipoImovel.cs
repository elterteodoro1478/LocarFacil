using System;
using System.Collections.Generic;

namespace LocarFacil.Models
{
    public partial class TipoImovel
    {
        public TipoImovel()
        {
            Imovel = new HashSet<Imovel>();
        }

        public int Id { get; set; }
        public string Nome { get; set; }

        public virtual ICollection<Imovel> Imovel { get; set; }
    }
}
