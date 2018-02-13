using RabbitMQ.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AppPodCloud.Helpers
{
    public class RabbitMQSetting
    {
        public string HostName { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
    }
    public class RabbitMQHelper
    {
        public const string DeviceControllerExchangeName = "sensing.store.mqtt";
        public const string DeviceControllerTopic = ".device.controller";
        public static IConnection CreateMqConnection(RabbitMQSetting setting)
        {
            var factory = new ConnectionFactory()
            {
                HostName = setting.HostName,
                UserName = setting.UserName,
                Password = setting.Password,
                RequestedHeartbeat = 60,
                AutomaticRecoveryEnabled = true
            };

            return factory.CreateConnection();
        }

        public static IModel CreateModel(IConnection conn)
        {
            var model = conn.CreateModel();
            return model;
        }

    }
}
