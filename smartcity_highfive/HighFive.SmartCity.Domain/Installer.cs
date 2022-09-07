using HighFive.SmartCity.Domain.Interface.Domain;
using HighFive.SmartCity.Domain.Service;
using Microsoft.Extensions.DependencyInjection;

namespace HighFive.SmartCity.Domain
{
    public static class Installer
    {
        public static IServiceCollection AddDomain(this IServiceCollection services)
        {
                return services.AddTransient<ISmartCityService, SmartCityService>();
        }
    }
}
