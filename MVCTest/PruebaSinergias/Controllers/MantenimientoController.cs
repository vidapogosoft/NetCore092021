using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core.Objects.DataClasses;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.ModelBinding;
using ApiDatos;

namespace PruebaSinergias.Controllers
{
    public class MantenimientoController : ApiController
    {
        private ProductosEntities dbcontext = new ProductosEntities();

        [HttpGet]
        public IEnumerable<Tbl_Productos> Get()
        {
            try
            {
                using (ProductosEntities sinergiaEntities = new ProductosEntities())
                {
                    var datos = sinergiaEntities.Database.SqlQuery<Tbl_Productos>("exec sp_ProductosConsultar @tipo,@id",
                        new SqlParameter("@tipo", 1),
                        new SqlParameter("@id", 1)
                        ).ToList();

                    return datos;
                }
            }
            catch (Exception e)
            {
                throw e; 
            }
            
        }

        [HttpGet]
        public Tbl_Productos Get(int ids)
        {
            using (ProductosEntities sinergiaEntities = new ProductosEntities())
            {
                var datos = sinergiaEntities.Database.SqlQuery<Tbl_Productos>("exec sp_ProductosConsultar @tipo,@id",
                        new SqlParameter("@tipo", 2),
                        new SqlParameter("@id", ids)
                        ).FirstOrDefault();

                return datos;
            }
        }

        [HttpPost]
        public IHttpActionResult AgregarProducto([FromBody]Tbl_Productos productos)
        {
            if (ModelState.IsValid)
            {
                dbcontext.Tbl_Productos.Add(productos);
                dbcontext.SaveChanges();
                return Ok(productos);
            }
            else
            {
                return BadRequest();
            }
        }

        [HttpPut]
        public IHttpActionResult ActualizarProducto(int ids,[FromBody]Tbl_Productos productos)
        {
            if (ModelState.IsValid)
            {
                var ProdExiste = dbcontext.Tbl_Productos.Count(c => c.id == ids) > 0;
                if (ProdExiste)
                {
                    dbcontext.Entry(productos).State = EntityState.Modified;
                    dbcontext.SaveChanges();

                    return Ok();
                }
                else
                {
                    return NotFound();
                }
            }
            else
            {
                return BadRequest();
            }
        }

        [HttpDelete]
        public IHttpActionResult EliminaProducto(int id)
        {
            var prod = dbcontext.Tbl_Productos.Find(id);
            if (prod != null)
            {
                dbcontext.Tbl_Productos.Remove(prod);
                dbcontext.SaveChanges();

                return Ok(prod);
            }
            else
            {
                return NotFound();
            }

        }
    }
}
