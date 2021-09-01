using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using YaleArt_ttomczak3.Models;

namespace YaleArt_ttomczak3
{
    public class ExhibitDbContext : DbContext
    {
        public DbSet<Exhibit> Exhibits { get; set; }
    }
}