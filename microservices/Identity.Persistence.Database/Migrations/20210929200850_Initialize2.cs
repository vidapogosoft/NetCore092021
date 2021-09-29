using Microsoft.EntityFrameworkCore.Migrations;

namespace Identity.Persistence.Database.Migrations
{
    public partial class Initialize2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                schema: "Identity",
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "c46d0e75-9045-4757-82c1-668ce4101f81");

            migrationBuilder.InsertData(
                schema: "Identity",
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "06bce8ab-591c-4d88-a4bd-a8261efab7ae", "50ea7515-8356-469a-8491-be50e27f2dc4", "Admin", "ADMIN" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                schema: "Identity",
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "06bce8ab-591c-4d88-a4bd-a8261efab7ae");

            migrationBuilder.InsertData(
                schema: "Identity",
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "c46d0e75-9045-4757-82c1-668ce4101f81", "ea99f59f-e36d-4e86-93aa-086f6cba5267", "Admin", "ADMIN" });
        }
    }
}
