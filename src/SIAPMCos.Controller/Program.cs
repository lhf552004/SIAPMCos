using AppPodCloud;
using Microsoft.Extensions.Configuration;
using Autofac;
using Autofac.Extensions.DependencyInjection;

using System;
using Microsoft.Extensions.DependencyInjection;
using SIAPM.Services;
using Microsoft.EntityFrameworkCore;


namespace SIAPM.ProduceController
{
    class Program
    {
        //public static IContainer Container { get; set; }
        public static IConfigurationRoot Configuration { get; set; }
        AutofacModule autofacModule;
        private static Program program;
        public static TService getService<TService>()
        {
            return program.Container.GetService<TService>();
        }
        static void Main(string[] args)
        {
            try
            {
                program = new Program();
                program.InitializeServices();

                
                //service.AddBooksAsync().Wait();
                //service.ReadBooks();
            }
            catch (Exception ex)
            {
                //WriteLine(ex.Message);
            }

            //var configbuilder = new ConfigurationBuilder()
            //    .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
            //    ;
            //Configuration = configbuilder.Build();

            //var builder = new ContainerBuilder();
            ////builder.Populate(services);

            //// Add any Autofac modules or registrations.
            //builder.RegisterModule(new AutofacModule(Configuration));

            //builder.RegisterType<LotService>().As<ILotService>();
            //builder.RegisterType<RecipeService>().As<IRecipeService>(); 
            //Container = builder.Build();
            //IPAddress address = IPAddress.Parse("10.215.0.69");
            //SecsGem _secsGem = new SecsGem(
            //    true,
            //    address,
            //    7000)
            //{
            //    DeviceId = 0,
            //    LinkTestInterval = 60000,
            //    T3 = 120,
            //    T5 = 30,
            //    T6 = 5,
            //    T7 = 100,
            //    T8 = 5,
            //    Logger = null
            //};
            //_secsGem.ConnectionChanged += delegate
            //{

            //    Invoke((MethodInvoker)delegate
            //    {
            //        EapLogger.Info("SECS/GEM " + _secsGem.State);
            //        gemStatusLabel.Text = _secsGem.State.ToString();
            //        eqpAddressStatusLabel.Text = "Device IP: " + _secsGem.DeviceIpAddress;
            //        if (_secsGem.State == ConnectionState.Selected)
            //            _secsGem.SendAsync(new SecsMessage(1, 13, "TestCommunicationsRequest", Item.L()));
            //    });
            //};


            ModuleLineController controller = new ModuleLineController();
            controller.testAsync().Wait(); 
        }
       
        public IServiceProvider Container { get; private set; }
        private void InitializeServices()
        {
            const string ConnectionString = @"Data Source=ISCNPF0ZHB9X\SQLEXPRESS;Initial Catalog=SIAPMCos;Integrated Security=True";

            var services = new ServiceCollection();
            services.AddTransient<CentralConfigService>();
            services.AddTransient<PlantService>();
            services.AddTransient<LineService>();
            services.AddTransient<SectionService>();
            services.AddTransient<ProcessService>();
            services.AddTransient<SCESEquipmentService>();
            services.AddTransient<EquipmentService>();
            services.AddTransient<PLCEquipmentService>();
            services.AddTransient<ProcessSectionService>();

            services.AddDbContext<SIAPMContext>(options =>
                options.UseSqlServer(ConnectionString));


            Container = services.BuildServiceProvider();
        }
    }
}
