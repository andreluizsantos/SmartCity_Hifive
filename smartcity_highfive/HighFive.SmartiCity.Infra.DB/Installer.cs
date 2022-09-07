using HighFive.SmartCity.Domain.Interface.Infra;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace HighFive.SmartCity.Infra.DB
{
    public static class Installer
    {
        public static IServiceCollection AddInfraDB(this IServiceCollection services)
        {
            var connection = @"Server=tcp:highfive-smartcity.database.windows.net,1433;Initial Catalog=smartcity;
                                Persist Security Info=False;User ID=highfive;Password=Fiap2022;MultipleActiveResultSets=False;
                                Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            services.AddDbContext<SmartCityContext>(opt => opt.UseSqlServer(connection));
            
            services.AddTransient<ISmartCityRepository, SmartCityRepository>();



            return services;
                
        }
    }
}
