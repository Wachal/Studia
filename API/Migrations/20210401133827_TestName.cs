using Microsoft.EntityFrameworkCore.Migrations;

namespace net_core_lab5.Migrations
{
    public partial class TestName : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "TestName",
                table: "Agents",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "TestName",
                table: "Agents");
        }
    }
}
