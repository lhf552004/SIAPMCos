using Secs4Net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



using Autofac;
using SIAPM.Helpers;
using Sensing.Services;
using SIAPM.Entities.Produce;
using SIAPM.Entities.Plants;
using Sensing.Data.Infrastructure;
using SIAPM.Services;

namespace SIAPM.ProduceController
{
    public class ZBVController
    {
        private SCESEquipmentService _sCESEquipmentService;
        private PlantService _plantService;
        //private ILotService _lotSvc;
        //private IRecipeService _recipeSvc;
        //private IPlantService _plantSvc;
        private IUnitOfWorkAsync _unitOfwork;
        public ZBVController()
        {
            _sCESEquipmentService = Program.getService<SCESEquipmentService>();
            _plantService = Program.getService<PlantService>();
            //using (var scope = Program.Container.BeginLifetimeScope())
            //{
            //    _lotSvc = scope.Resolve<ILotService>();
            //    _recipeSvc = scope.Resolve<IRecipeService>();
            //    _plantSvc = scope.Resolve<IPlantService>();
            //    _unitOfwork = scope.Resolve<IUnitOfWorkAsync>();
            //}
        }
        public async Task testAsync()
        {
            Plant plant = new Plant()
            {
                Ident = "SIAPM01",
                Name = "Hybrid Pack plant 01",
                Deleted = false
            };
            try
            {
                _plantService.Insert(plant);
            }
            catch(Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }
            System.Console.ReadLine();
            //_plantSvc.Insert(plant);
            //_unitOfwork.SaveChanges();
        }

        public void secsEventHander(SecsEquipment secsEquip)
        {
            uint eventID = 0;
            string eventName = "";
            IEnumerable<Secs4Net.Item> list = null;
            foreach (Secs4Net.Item item in secsEquip.Msg.SecsItem.Items)
            {
                if(item.Format == SecsFormat.U4)
                {
                    eventID = item.GetValue<uint>();

                }
                if(item.Format == SecsFormat.ASCII)
                {
                    eventName = item.GetString();
                }
                if(item.Format == SecsFormat.List)
                {
                    list = secsEquip.Msg.SecsItem.Items.Where(i => i.Format == SecsFormat.List);
                    
                }
            }
            if(list != null)
            {
                var listSecondLevel = list.Where(i => i.Format == SecsFormat.List);
                var listThirdLevel = listSecondLevel.Where(i => i.Format == SecsFormat.List);
                switch (eventID)
                {
                    case 200011:
                        string FAUF = listThirdLevel.Where(i => i.Format == SecsFormat.ASCII).FirstOrDefault().GetString();
                        ppSelectAsync(secsEquip, FAUF);
                        break;
                }
            }
        }

       
        public async Task ppSelectAsync(SecsEquipment secsEquip, string FAUF)
        {
            var where = PredicateBuilder.True<Lot>().And(l => l.Deleted == false && l.Ident == FAUF);
            //var lot = _lotSvc.Query(a => a.Ident == FAUF && a.Deleted == false)
            //      .Include(l => l.Line)
            //      .Include(l => l.Product)
            //      .Select().FirstOrDefault();
            
            //var recipe = _recipeSvc.Query(r => r.ProductId == lot.ProductId && (r.EquipmentId>0 && r.EquipmentId == secsEquip.SCESEquipment.Id)).Select().FirstOrDefault();

            //if(recipe == null)
            //{
            //    recipe = _recipeSvc.Query(r => r.ProductId == lot.ProductId && (r.ProcessId > 0 && r.ProcessId == secsEquip.SCESEquipment.ProcessId)).Select().FirstOrDefault();

            //}
            //if(recipe == null)
            //{
            //    throw new Exception("no recipe found");
            //}
            //var secsgemMessge = new SecsMessage(2, 41, "PP-SELECT", Secs4Net.Item.L(
            //    Secs4Net.Item.A("PP-SELECT"),
            //    Secs4Net.Item.L(
            //        Secs4Net.Item.L(
            //            Secs4Net.Item.U2((ushort)recipe.RecipeNo)
            //            )
            //        )
            //    ));
            //secsEquip.SendDataMessage(secsgemMessge);
        }
    }
}
