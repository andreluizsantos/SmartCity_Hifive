using HighFive.SmartCity.Application;
using HighFive.SmartCity.Domain;
using HighFive.SmartCity.Infra.DB;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

namespace HighFive.SmartCity.API
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            //var connection = @"Server=tcp:highfive-smartcity.database.windows.net,1433;Initial Catalog=smartcity;
            //                    Persist Security Info=False;User ID=highfive;Password=Fiap2022;MultipleActiveResultSets=False;
            //                    Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            //services.AddDbContext<SmartCityContext>(options => options.UseSqlServer(connection));
            services.AddInfraDB();
            services.AddDomain();
            services.AddApplication();


            services.AddControllers();
            services.AddSwaggerGen();
            
           
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            //app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });


        }
    }
}
