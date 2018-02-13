using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using SIAPM.Entities.CentralConfig;
using SIAPM.Entities.Lines;
using SIAPM.Entities.Plants;

namespace SIAPM.Services
{
    public class SIAPMContext : DbContext
    {
        public SIAPMContext(DbContextOptions<SIAPMContext> options)
            : base(options)
        {
        }
        public DbSet<SCESEquipment> SCESEquipments { get; set; }
        public DbSet<Equipment> Equipments { get; set; }
        public DbSet<PLCEquipment> PLCEquipments { get; set; }
        public DbSet<Process> Processes { get; set; }
        public DbSet<Section> Sections { get; set; }
        public DbSet<Line> Lines { get; set; }
        public DbSet<Plant> Plants { get; set; }
        public DbSet<CentralConfig> CentralConfigs { get; set; }
        public DbSet<ProcessSection> ProcessSections { get; set; }
    }
}
