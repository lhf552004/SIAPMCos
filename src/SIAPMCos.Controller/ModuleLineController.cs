using Secs4Net;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using static Secs4Net.SecsGem;
using System.Runtime.CompilerServices;
using SIAPM.Entities.Lines;
using SIAPM.Services;
using SIAPM.Entities.Plants;

namespace SIAPM.ProduceController
{
    public class ModuleLineController
    {
        private SCESEquipmentService _sCESEquipmentService;
        private EquipmentService _equipmentService;
        private PLCEquipmentService _pLCEquipmentService;
        private ProcessService _processService;
        private ProcessSectionService _processSectionService;
        private SectionService _sectionService;
        private LineService _lineService;
        private PlantService _plantService;

        public ModuleLineController()
        {
            _sCESEquipmentService = Program.getService<SCESEquipmentService>();
            _equipmentService = Program.getService<EquipmentService>();
            _pLCEquipmentService = Program.getService<PLCEquipmentService>();

            _processService = Program.getService<ProcessService>();
            _sectionService = Program.getService<SectionService>();
            _lineService = Program.getService<LineService>();
            _plantService = Program.getService<PlantService>();
            _processSectionService = Program.getService<ProcessSectionService>();
            //using (var scope = Program.Container.BeginLifetimeScope())
            //{
            //    _lotSvc = scope.Resolve<ILotService>();
            //    _recipeSvc = scope.Resolve<IRecipeService>();
            //    _plantSvc = scope.Resolve<IPlantService>();
            //    _unitOfwork = scope.Resolve<IUnitOfWorkAsync>();
            //}
           
        }
        public void connectToEquip()
        {
            var secsEquip = new List<SecsEquipment>();
            foreach(var equip in getSECSEquipment())
            {
                if(!string.IsNullOrEmpty(equip.Address) || equip.Port <= 0)
                {
                    continue;
                }
                var sq1 = new SecsEquipment(equip.Address, equip.Port);
                sq1.Connected += ConnectedHandler;
                sq1.Connect();
                sq1.DataReceived += DataReceivedHandler;
            }
        }
        private void ConnectedHandler(object sender, SecsEquipment equip)
        {
            var dbEquip = equip.SCESEquipment;
            dbEquip.Status = LineStatus.Connected;
            _sCESEquipmentService.Update(dbEquip);
            _sCESEquipmentService.SaveChangesAsync();
        }
        private void DataReceivedHandler(object sender, SecsDataReceivedEventArgs arg)
        {
          
            //event
            if (arg.SecsMessage.S == 6 && arg.SecsMessage.F == 11)
            {
                if(arg.SCESEquipment.SECSType == SECSType.ZBV)
                {

                }
            }
        }
        public async Task testAsync()
        {
            var plant = _plantService.Query(p => p.Ident == "SIAPM01").FirstOrDefault();
            if (plant == null)
            {
                plant = new Plant()
                {
                    Ident = "SIAPM01",
                    Name = "Hybrid Pack plant 01",
                    Deleted = false
                };
                try
                {
                    _plantService.Insert(plant);
                    await _plantService.SaveChangesAsync();
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine(ex.Message);
                }
            }
            var line1 = _lineService.Query(p => p.Ident == "ModuleLineHP1").FirstOrDefault();
            if (line1 == null)
            {
                line1 = new Line()
                {
                    Ident = "ModuleLineHP1",
                    Name = "Hybrid Pack ModuleLine HP1",
                    Deleted = false,
                    PlantId = plant.Id
                };
                try
                {
                    _lineService.Insert(line1);
                    await _lineService.SaveChangesAsync();
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine(ex.Message);
                }
            }
            var sections = new List<Section>();
            var section1 = _sectionService.Query(s => s.Ident == "S001").FirstOrDefault();
            if (section1 == null)
            {
                section1 = new Section()
                {
                    Ident = "S001",
                    Name = "2D X-Ray",
                    Status = LineStatus.Default,
                    Index = 0,
                    LineId = line1.Id
                };
                sections.Add(section1);
            }
            var section2 = _sectionService.Query(s => s.Ident == "S003").FirstOrDefault();
            if (section2 == null)
            {
                section2 = new Section()
                {
                    Ident = "S003",
                    Name = "Frame Mouting",
                    Status = LineStatus.Default,
                    Index = 1,
                    LineId = line1.Id
                };
                sections.Add(section2);
            }
            var section3 = _sectionService.Query(s => s.Ident == "S003").FirstOrDefault();
            if (section3 == null)
            {
                section3 = new Section()
                {
                    Ident = "S004",
                    Name = "Final Test",
                    Status = LineStatus.Default,
                    Index = 2,
                    LineId = line1.Id
                };
                sections.Add(section3);
            }




            if (sections.Count > 0)
            {
                _sectionService.InsertRange(sections);
                await _sectionService.SaveChangesAsync();
            }

            var processes = new List<Process>();
        
            var process1 = _processService.Query(s => s.Ident == "SystemSodlering").FirstOrDefault();
            if (process1 == null)
            {
                process1 = new Process()
                {
                    Ident = "SystemSodlering",
                    Name = "Manual Assembly",

                    Status = LineStatus.Default,

                };
                processes.Add(process1);
            }
            var process2 = _processService.Query(s => s.Ident == "Vadu").FirstOrDefault();
            if (process2 == null)
            {
                process2 = new Process()
                {
                    Ident = "Vadu",
                    Name = "Vadu",

                    Status = LineStatus.Default,

                };
                processes.Add(process2);
            }

            var process3 = _processService.Query(s => s.Ident == "2DXRay").FirstOrDefault();
            if (process3 == null)
            {
                process3 = new Process()
                {
                    Ident = "2DXRay",
                    Name = "2DXRay",

                    Status = LineStatus.Default,

                };
                processes.Add(process3);
            }

            var process4 = _processService.Query(s => s.Ident == "ZBV").FirstOrDefault();
            if (process4 == null)
            {
                process4 = new Process()
                {
                    Ident = "ZBV",
                    Name = "ZBV",

                    Status = LineStatus.Default,

                };
                processes.Add(process4);
            }

            var process5 = _processService.Query(s => s.Ident == "WireBonding").FirstOrDefault();
            if (process5 == null)
            {
                process5 = new Process()
                {
                    Ident = "WireBonding",
                    Name = "WireBonding",

                    Status = LineStatus.Default,

                };
                processes.Add(process5);
            }

            var process6 = _processService.Query(s => s.Ident == "VI01").FirstOrDefault();
            if (process6 == null)
            {
                process6 = new Process()
                {
                    Ident = "VI01",
                    Name = "VI01",

                    Status = LineStatus.Default,

                };
                processes.Add(process6);
            }

            var process7 = _processService.Query(s => s.Ident == "Potting").FirstOrDefault();
            if (process7 == null)
            {
                process7 = new Process()
                {
                    Ident = "Potting",
                    Name = "Potting",

                    Status = LineStatus.Default,

                };
                processes.Add(process7);
            }

            var process8 = _processService.Query(s => s.Ident == "FinalTest").FirstOrDefault();
            if (process8 == null)
            {
                process8 = new Process()
                {
                    Ident = "FinalTest",
                    Name = "FinalTest",

                    Status = LineStatus.Default,

                };
                processes.Add(process8);
            }

            if (processes.Count > 0)
            {
                _processService.InsertRange(processes);
                await _processService.SaveChangesAsync();
            }
           

            //var process1Section = new ProcessSection()
            //{
            //    SectionId = section1.Id,
            //    ProcessId = process1.Id,
            //    Index = 0
            //};
            //var process2Section = new ProcessSection()
            //{
            //    SectionId = section1.Id,
            //    ProcessId = process2.Id,
            //    Index = 1
            //};
            //var process3Section = new ProcessSection()
            //{
            //    SectionId = section1.Id,
            //    ProcessId = process3.Id,
            //    Index = 2
            //};
            //var process4Section = new ProcessSection()
            //{
            //    SectionId = section2.Id,
            //    ProcessId = process4.Id,
            //    Index = 0
            //};
            //var process5Section = new ProcessSection()
            //{
            //    SectionId = section2.Id,
            //    ProcessId = process5.Id,
            //    Index = 1
            //};
            //var process6Section = new ProcessSection()
            //{
            //    SectionId = section2.Id,
            //    ProcessId = process6.Id,
            //    Index = 2
            //};
            //var process7Section = new ProcessSection()
            //{
            //    SectionId = section2.Id,
            //    ProcessId = process7.Id,
            //    Index = 3
            //};
            //var process8Section = new ProcessSection()
            //{
            //    SectionId = section3.Id,
            //    ProcessId = process8.Id,
            //    Index = 0
            //};

            //var processSections = new List<ProcessSection>();
            //processSections.Add(process1Section);
            //processSections.Add(process2Section);
            //processSections.Add(process3Section);
            //processSections.Add(process4Section);
            //processSections.Add(process5Section);
            //processSections.Add(process6Section);
            //processSections.Add(process7Section);
            //processSections.Add(process8Section);
            //_processSectionService.InsertRange(processSections);
            //await _processSectionService.SaveChangesAsync();

            var equip1 = new Equipment()
            {
                Ident = "Sodlering",
                Name = "Sodlering",
                Type = EquipType.Dummy,
                Index = 0,
                ProcessId = process1.Id
            };
           
            var equip2 = new SCESEquipment()
            {
                Ident = "Vadu",
                Name = "Vadu",
                Type = EquipType.SECSGEM,
                Index =0,
                ProcessId = process2.Id
            };
            
            var equip3 = new SCESEquipment()
            {
                Ident = "2DXRay",
                Name = "2DXRay",
                Index = 0,
                Status = LineStatus.Default,
                Type = EquipType.SECSGEM,
                ProcessId = process3.Id
            };
            
           
            var equip4 = new SCESEquipment()
            {
                Ident = "ZBV",
                Name = "ZBV",
                Index = 0,
                Status = LineStatus.Default,
                Type = EquipType.SECSGEM,
                ProcessId = process4.Id
            };
           
            var equip5 = new Equipment()
            {
                Ident = "WireBonding",
                Name = "WireBonding",
                Index = 0,
                Status = LineStatus.Default,
                Type = EquipType.Dummy,
                ProcessId = process5.Id
            };
           
            var equip6 = new Equipment()
            {
                Ident = "VI01",
                Name = "VI01",
                Index = 0,
                Status = LineStatus.Default,
                Type = EquipType.Dummy,
                ProcessId = process6.Id
            };
           
            var equip7 = new PLCEquipment()
            {
                Ident = "Potting",
                Name = "Potting",
                Index = 0,
                Status = LineStatus.Default,
                Type = EquipType.PLC,
                ProcessId = process7.Id
            };
           
           
            var equip8 = new Equipment()
            {
                Ident = "FlowerPower",
                Name = "FlowerPower",
                Index = 0,
                Status = LineStatus.Default,
                Type = EquipType.Dummy,
                ProcessId = process8.Id
            };

            var equipments = new List<Equipment>();
            equipments.Add(equip1);
            equipments.Add(equip5);
            equipments.Add(equip6);
            equipments.Add(equip8);
            _equipmentService.InsertRange(equipments);
            await _equipmentService.SaveChangesAsync();

            var sCESEquipments = new List<SCESEquipment>();
            sCESEquipments.Add(equip2);
            sCESEquipments.Add(equip3);
            sCESEquipments.Add(equip4);
            _sCESEquipmentService.InsertRange(sCESEquipments);
            await _sCESEquipmentService.SaveChangesAsync();

            var pLCEquipments = new List<PLCEquipment>();
            pLCEquipments.Add(equip7);
            _pLCEquipmentService.InsertRange(pLCEquipments);
            await _pLCEquipmentService.SaveChangesAsync();

            //var line2 = _lineService.Find("ModuleLineHP2");
            //if (line2 == null)
            //{
            //    line2 = new Line()
            //    {
            //        Ident = "ModuleLineHP2",
            //        Name = "Hybrid Pack ModuleLine HP2",
            //        Deleted = false
            //    };
            //    try
            //    {
            //        _lineService.Insert(line2);
            //    }
            //    catch (Exception ex)
            //    {
            //        System.Console.WriteLine(ex.Message);
            //    }
            //}

            //var section4 = new Section()
            //{
            //    Ident = "S002",
            //    Name = "3D X-Ray",
            //    Status = LineStatus.Default,
            //    Index = 0,
            //    LineId = line2.Id
            //};
            //_sectionService.Insert(section4);




            //_plantSvc.Insert(plant);
            //_unitOfwork.SaveChanges();
        }
        public List<SCESEquipment> getSECSEquipment()
        {
            var equips = _sCESEquipmentService.Query(e => e.Deleted == false).ToList();

            return equips;
        }

    }



}
