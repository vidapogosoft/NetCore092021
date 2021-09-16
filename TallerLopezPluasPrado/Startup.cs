using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TallerLopezPluasPrado.Interfaces;
using TallerLopezPluasPrado.Services;

namespace TallerLopezPluasPrado
{
    public class Startup
    {
        readonly string MyAllowSpecificOrigins = "_myAllowSpecificOrigins";
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            var key = "Demo Token ApiKey Exmaple";

            services.AddCors(options =>
            {
                options.AddPolicy(name: MyAllowSpecificOrigins,
                                  builder =>
                                  {
                                      //builder.WithOrigins("http://example.com",
                                      //                    "http://localhost:18445");
                                      builder.WithOrigins("http://localhost:18445", "http://localhost:18445/registrado/listar",
                                          "http://localhost:18445/registrado/crear", "http://localhost:18445/registrado/actualizar")
                                      .AllowAnyOrigin()
                                      .AllowAnyHeader()
                                       .AllowAnyMethod();
                                  });
            });

            services.AddControllers();


            services
               .AddAuthentication(
               x =>
               {
                   x.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                   x.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
               }
               )
               .AddJwtBearer(
                x =>
                {
                    x.RequireHttpsMetadata = false;
                    x.SaveToken = true;

                    x.TokenValidationParameters = new TokenValidationParameters
                    {
                        IssuerSigningKey = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(key)),
                        ValidateAudience = false,
                        ValidateIssuerSigningKey = true,
                        ValidateIssuer = false
                    };

                }
                );

            services.AddSwaggerGen(c =>

                   c.SwaggerDoc("v1", new OpenApiInfo { Title = "Demo de Talleres", Version = "beta" })

                );
            services.AddAuthorization();

            services.AddSingleton<IJwtAuthenticationService>(new JwtAuthenticationService(key));
            //services.AddControllers();

            services.AddSingleton<IClientes, ServicesClientes>();
            
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            app.UseRouting();
            app.UseCors(MyAllowSpecificOrigins);

            app.UseSwagger();

            app.UseSwaggerUI(c =>

                  c.SwaggerEndpoint("/swagger/v1/swagger.json", "Proyecto realizado por Lopez - Pluas - Prado")

               );

            app.UseAuthentication();
            app.UseAuthorization();




            

            

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
