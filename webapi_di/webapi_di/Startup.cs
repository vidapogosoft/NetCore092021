using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using webapi_di.Comandos;
using webapi_di.Interfaces;
using webapi_di.Logger;
using webapi_di.Servicios;

namespace webapi_di
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
            services.AddControllers();

            services.AddSingleton<ISingletonService, SingletonService>();
            services.AddTransient<ITransientService, TransientService>();
            services.AddScoped<IScopedService, ScopedService>();

            services.AddScoped<IComando, Comando1>();
            services.AddSingleton<ICustomLogger, ConsoleCustomLogger>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseRouting();

            app.UseAuthorization();

            app.Use(async (context, next) =>
            {
                Console.WriteLine(Environment.NewLine +
                    "--------------------- {0} ---------------------", context.Request.Path);
                await next.Invoke();
            });

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
