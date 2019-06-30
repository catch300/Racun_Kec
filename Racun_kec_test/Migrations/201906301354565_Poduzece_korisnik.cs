namespace Racun_kec_test.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Poduzece_korisnik : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.korisnik", "id_poduzece", c => c.Int(nullable: false));
            CreateIndex("dbo.korisnik", "id_poduzece");
            AddForeignKey("dbo.korisnik", "id_poduzece", "dbo.poduzece", "id_poduzece", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.korisnik", "id_poduzece", "dbo.poduzece");
            DropIndex("dbo.korisnik", new[] { "id_poduzece" });
            DropColumn("dbo.korisnik", "id_poduzece");
        }
    }
}
