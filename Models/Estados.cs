using System;
using System.Collections.Generic;

namespace LocarFacil.Models
{
    public partial class Estados
    {
        public Estados()
        {
            Cidades = new HashSet<Cidades>();
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public string UF { get; set; }

        public virtual ICollection<Cidades> Cidades { get; set; }
    }
}
