using HighFive.SmartCity.Domain.Interface.Application;
using Microsoft.Extensions.DependencyInjection;

namespace HighFive.SmartCity.Application
{
    public static class Installer
    {
        public static IServiceCollection AddApplication(this IServiceCollection services)
        {
            return services.AddTransient<ISmartCityApplication, SmartCityApplication>();
        }
    }
}
