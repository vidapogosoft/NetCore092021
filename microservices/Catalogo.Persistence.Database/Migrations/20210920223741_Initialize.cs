using Microsoft.EntityFrameworkCore.Migrations;

namespace Catalogo.Persistence.Database.Migrations
{
    public partial class Initialize : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.EnsureSchema(
                name: "Catalog");

            migrationBuilder.CreateTable(
                name: "Products",
                schema: "Catalog",
                columns: table => new
                {
                    ProductId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(maxLength: 100, nullable: false),
                    Description = table.Column<string>(maxLength: 500, nullable: false),
                    Price = table.Column<decimal>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Products", x => x.ProductId);
                });

            migrationBuilder.CreateTable(
                name: "Stocks",
                schema: "Catalog",
                columns: table => new
                {
                    ProductInStockId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ProductId = table.Column<int>(nullable: false),
                    Stock = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Stocks", x => x.ProductInStockId);
                    table.ForeignKey(
                        name: "FK_Stocks_Products_ProductId",
                        column: x => x.ProductId,
                        principalSchema: "Catalog",
                        principalTable: "Products",
                        principalColumn: "ProductId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                schema: "Catalog",
                table: "Products",
                columns: new[] { "ProductId", "Description", "Name", "Price" },
                values: new object[,]
                {
                    { 1, "Description for product 1", "Product 1", 891m },
                    { 73, "Description for product 73", "Product 73", 116m },
                    { 72, "Description for product 72", "Product 72", 877m },
                    { 71, "Description for product 71", "Product 71", 963m },
                    { 70, "Description for product 70", "Product 70", 620m },
                    { 69, "Description for product 69", "Product 69", 159m },
                    { 68, "Description for product 68", "Product 68", 751m },
                    { 67, "Description for product 67", "Product 67", 978m },
                    { 66, "Description for product 66", "Product 66", 600m },
                    { 65, "Description for product 65", "Product 65", 853m },
                    { 64, "Description for product 64", "Product 64", 827m },
                    { 63, "Description for product 63", "Product 63", 217m },
                    { 62, "Description for product 62", "Product 62", 783m },
                    { 61, "Description for product 61", "Product 61", 257m },
                    { 60, "Description for product 60", "Product 60", 957m },
                    { 59, "Description for product 59", "Product 59", 219m },
                    { 58, "Description for product 58", "Product 58", 195m },
                    { 57, "Description for product 57", "Product 57", 128m },
                    { 56, "Description for product 56", "Product 56", 129m },
                    { 55, "Description for product 55", "Product 55", 650m },
                    { 54, "Description for product 54", "Product 54", 139m },
                    { 53, "Description for product 53", "Product 53", 722m },
                    { 74, "Description for product 74", "Product 74", 680m },
                    { 52, "Description for product 52", "Product 52", 804m },
                    { 75, "Description for product 75", "Product 75", 468m },
                    { 77, "Description for product 77", "Product 77", 175m },
                    { 98, "Description for product 98", "Product 98", 958m },
                    { 97, "Description for product 97", "Product 97", 923m },
                    { 96, "Description for product 96", "Product 96", 166m },
                    { 95, "Description for product 95", "Product 95", 481m },
                    { 94, "Description for product 94", "Product 94", 703m },
                    { 93, "Description for product 93", "Product 93", 137m },
                    { 92, "Description for product 92", "Product 92", 833m },
                    { 91, "Description for product 91", "Product 91", 600m },
                    { 90, "Description for product 90", "Product 90", 286m },
                    { 89, "Description for product 89", "Product 89", 713m },
                    { 88, "Description for product 88", "Product 88", 342m },
                    { 87, "Description for product 87", "Product 87", 916m },
                    { 86, "Description for product 86", "Product 86", 808m },
                    { 85, "Description for product 85", "Product 85", 495m },
                    { 84, "Description for product 84", "Product 84", 516m },
                    { 83, "Description for product 83", "Product 83", 841m },
                    { 82, "Description for product 82", "Product 82", 531m },
                    { 81, "Description for product 81", "Product 81", 179m },
                    { 80, "Description for product 80", "Product 80", 639m },
                    { 79, "Description for product 79", "Product 79", 266m },
                    { 78, "Description for product 78", "Product 78", 568m },
                    { 76, "Description for product 76", "Product 76", 383m },
                    { 51, "Description for product 51", "Product 51", 802m },
                    { 50, "Description for product 50", "Product 50", 835m },
                    { 49, "Description for product 49", "Product 49", 581m },
                    { 22, "Description for product 22", "Product 22", 861m },
                    { 21, "Description for product 21", "Product 21", 423m },
                    { 20, "Description for product 20", "Product 20", 318m },
                    { 19, "Description for product 19", "Product 19", 320m },
                    { 18, "Description for product 18", "Product 18", 677m },
                    { 17, "Description for product 17", "Product 17", 134m },
                    { 16, "Description for product 16", "Product 16", 891m },
                    { 15, "Description for product 15", "Product 15", 249m },
                    { 14, "Description for product 14", "Product 14", 375m },
                    { 13, "Description for product 13", "Product 13", 115m },
                    { 12, "Description for product 12", "Product 12", 359m },
                    { 11, "Description for product 11", "Product 11", 239m },
                    { 10, "Description for product 10", "Product 10", 465m },
                    { 9, "Description for product 9", "Product 9", 125m },
                    { 8, "Description for product 8", "Product 8", 469m },
                    { 7, "Description for product 7", "Product 7", 207m },
                    { 6, "Description for product 6", "Product 6", 166m },
                    { 5, "Description for product 5", "Product 5", 174m },
                    { 4, "Description for product 4", "Product 4", 823m },
                    { 3, "Description for product 3", "Product 3", 207m },
                    { 2, "Description for product 2", "Product 2", 684m },
                    { 23, "Description for product 23", "Product 23", 655m },
                    { 24, "Description for product 24", "Product 24", 112m },
                    { 25, "Description for product 25", "Product 25", 703m },
                    { 26, "Description for product 26", "Product 26", 217m },
                    { 48, "Description for product 48", "Product 48", 476m },
                    { 47, "Description for product 47", "Product 47", 138m },
                    { 46, "Description for product 46", "Product 46", 164m },
                    { 45, "Description for product 45", "Product 45", 845m },
                    { 44, "Description for product 44", "Product 44", 187m },
                    { 43, "Description for product 43", "Product 43", 785m },
                    { 42, "Description for product 42", "Product 42", 140m },
                    { 41, "Description for product 41", "Product 41", 849m },
                    { 40, "Description for product 40", "Product 40", 639m },
                    { 39, "Description for product 39", "Product 39", 660m },
                    { 99, "Description for product 99", "Product 99", 334m },
                    { 38, "Description for product 38", "Product 38", 257m },
                    { 36, "Description for product 36", "Product 36", 629m },
                    { 35, "Description for product 35", "Product 35", 316m },
                    { 34, "Description for product 34", "Product 34", 364m },
                    { 33, "Description for product 33", "Product 33", 381m },
                    { 32, "Description for product 32", "Product 32", 639m },
                    { 31, "Description for product 31", "Product 31", 612m },
                    { 30, "Description for product 30", "Product 30", 297m },
                    { 29, "Description for product 29", "Product 29", 351m },
                    { 28, "Description for product 28", "Product 28", 423m },
                    { 27, "Description for product 27", "Product 27", 908m },
                    { 37, "Description for product 37", "Product 37", 928m },
                    { 100, "Description for product 100", "Product 100", 345m }
                });

            migrationBuilder.InsertData(
                schema: "Catalog",
                table: "Stocks",
                columns: new[] { "ProductInStockId", "ProductId", "Stock" },
                values: new object[,]
                {
                    { 1, 1, 6 },
                    { 73, 73, 16 },
                    { 72, 72, 14 },
                    { 71, 71, 14 },
                    { 70, 70, 3 },
                    { 69, 69, 16 },
                    { 68, 68, 2 },
                    { 67, 67, 7 },
                    { 66, 66, 2 },
                    { 65, 65, 14 },
                    { 64, 64, 7 },
                    { 63, 63, 5 },
                    { 62, 62, 0 },
                    { 61, 61, 9 },
                    { 60, 60, 18 },
                    { 59, 59, 8 },
                    { 58, 58, 14 },
                    { 57, 57, 2 },
                    { 56, 56, 7 },
                    { 55, 55, 5 },
                    { 54, 54, 0 },
                    { 53, 53, 11 },
                    { 74, 74, 11 },
                    { 52, 52, 9 },
                    { 75, 75, 19 },
                    { 77, 77, 11 },
                    { 98, 98, 19 },
                    { 97, 97, 5 },
                    { 96, 96, 11 },
                    { 95, 95, 13 },
                    { 94, 94, 17 },
                    { 93, 93, 10 },
                    { 92, 92, 11 },
                    { 91, 91, 13 },
                    { 90, 90, 15 },
                    { 89, 89, 0 },
                    { 88, 88, 0 },
                    { 87, 87, 7 },
                    { 86, 86, 5 },
                    { 85, 85, 5 },
                    { 84, 84, 18 },
                    { 83, 83, 17 },
                    { 82, 82, 4 },
                    { 81, 81, 4 },
                    { 80, 80, 14 },
                    { 79, 79, 13 },
                    { 78, 78, 6 },
                    { 76, 76, 2 },
                    { 51, 51, 6 },
                    { 50, 50, 10 },
                    { 49, 49, 16 },
                    { 22, 22, 18 },
                    { 21, 21, 13 },
                    { 20, 20, 10 },
                    { 19, 19, 14 },
                    { 18, 18, 12 },
                    { 17, 17, 13 },
                    { 16, 16, 1 },
                    { 15, 15, 19 },
                    { 14, 14, 19 },
                    { 13, 13, 8 },
                    { 12, 12, 8 },
                    { 11, 11, 1 },
                    { 10, 10, 9 },
                    { 9, 9, 18 },
                    { 8, 8, 14 },
                    { 7, 7, 14 },
                    { 6, 6, 1 },
                    { 5, 5, 3 },
                    { 4, 4, 19 },
                    { 3, 3, 5 },
                    { 2, 2, 7 },
                    { 23, 23, 5 },
                    { 24, 24, 10 },
                    { 25, 25, 10 },
                    { 26, 26, 5 },
                    { 48, 48, 7 },
                    { 47, 47, 1 },
                    { 46, 46, 16 },
                    { 45, 45, 17 },
                    { 44, 44, 19 },
                    { 43, 43, 7 },
                    { 42, 42, 11 },
                    { 41, 41, 11 },
                    { 40, 40, 3 },
                    { 39, 39, 16 },
                    { 99, 99, 5 },
                    { 38, 38, 18 },
                    { 36, 36, 15 },
                    { 35, 35, 3 },
                    { 34, 34, 5 },
                    { 33, 33, 1 },
                    { 32, 32, 19 },
                    { 31, 31, 15 },
                    { 30, 30, 11 },
                    { 29, 29, 9 },
                    { 28, 28, 13 },
                    { 27, 27, 11 },
                    { 37, 37, 6 },
                    { 100, 100, 15 }
                });

            migrationBuilder.CreateIndex(
                name: "IX_Stocks_ProductId",
                schema: "Catalog",
                table: "Stocks",
                column: "ProductId",
                unique: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Stocks",
                schema: "Catalog");

            migrationBuilder.DropTable(
                name: "Products",
                schema: "Catalog");
        }
    }
}
