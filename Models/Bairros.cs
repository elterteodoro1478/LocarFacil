using System;
using System.Collections.Generic;

namespace LocarFacil.Models
{
    public partial class Bairros
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public int? IdCidade { get; set; }

        public virtual Cidades IdCidadeNavigation { get; set; }
    }
}
