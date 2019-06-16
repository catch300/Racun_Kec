namespace Racun_kec_test.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class pdv : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.racun", "pdv", c => c.Int(nullable: false));
            AlterColumn("dbo.stavke_racuna", "pdv", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.stavke_racuna", "pdv", c => c.Decimal(nullable: false, precision: 18, scale: 2));
            AlterColumn("dbo.racun", "pdv", c => c.Decimal(nullable: false, precision: 18, scale: 2));
        }
    }
}
