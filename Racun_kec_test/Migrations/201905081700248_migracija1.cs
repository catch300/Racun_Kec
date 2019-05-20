namespace Racun_kec_test.Migrations
{
    using System;
    using System.Data.Entity.Migrations;

    public partial class _08052019 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.korisnik",
                c => new
                {
                    id_korisnik = c.Int(nullable: false, identity: true),
                    ime_prezime = c.String(nullable: false, unicode: false),
                    email = c.String(nullable: false, unicode: false),
                    lozinka = c.String(nullable: false, unicode: false),
                    licenca = c.DateTime(nullable: false, precision: 0),
                    aktivan = c.String(nullable: false, unicode: false),
                })
                .PrimaryKey(t => t.id_korisnik);

            CreateTable(
                "dbo.kupac",
                c => new
                {
                    id_kupac = c.Int(nullable: false, identity: true),
                    ime_prezime = c.String(nullable: false, unicode: false),
                    adresa = c.String(nullable: false, unicode: false),
                    grad = c.String(nullable: false, unicode: false),
                    drzava = c.String(nullable: false, unicode: false),
                    oib = c.Long(nullable: false),
                })
                .PrimaryKey(t => t.id_kupac);

            CreateTable(
                "dbo.racun",
                c => new
                {
                    id_racun = c.Int(nullable: false, identity: true),
                    broj_racuna = c.Int(nullable: false),
                    naslov = c.String(nullable: false, unicode: false),
                    id_kupac = c.Int(nullable: false),
                    oznaka = c.String(unicode: false),
                    datum_izdavanja = c.DateTime(nullable: false, precision: 0),
                    pdv = c.Decimal(nullable: false, precision: 18, scale: 2),
                    Poduzece_id_poduzece = c.Int(),
                })
                .PrimaryKey(t => t.id_racun)
                .ForeignKey("dbo.kupac", t => t.id_kupac, cascadeDelete: true)
                .ForeignKey("dbo.poduzece", t => t.Poduzece_id_poduzece)
                .Index(t => t.id_kupac)
                .Index(t => t.Poduzece_id_poduzece);

            CreateTable(
                "dbo.stavke_racuna",
                c => new
                {
                    id_stavke_racuna = c.Int(nullable: false, identity: true),
                    id_racun = c.Int(nullable: false),
                    Artikl = c.String(nullable: false, unicode: false),
                    kolicina = c.Int(nullable: false),
                    cijena = c.Decimal(nullable: false, precision: 18, scale: 2),
                    pdv = c.Decimal(nullable: false, precision: 18, scale: 2),
                    Vrijeme = c.DateTime(nullable: false, precision: 0),
                })
                .PrimaryKey(t => t.id_stavke_racuna)
                .ForeignKey("dbo.racun", t => t.id_racun, cascadeDelete: true)
                .Index(t => t.id_racun);

            CreateTable(
                "dbo.usluge",
                c => new
                {
                    id_usluga = c.Int(nullable: false, identity: true),
                    naziv = c.String(nullable: false, unicode: false),
                    cijena = c.Double(nullable: false),
                    mjerna_jedinica = c.String(nullable: false, unicode: false),
                    id_racun = c.Int(nullable: false),
                })
                .PrimaryKey(t => t.id_usluga)
                .ForeignKey("dbo.racun", t => t.id_racun, cascadeDelete: true)
                .Index(t => t.id_racun);

            CreateTable(
                "dbo.poduzece",
                c => new
                {
                    id_poduzece = c.Int(nullable: false, identity: true),
                    naziv = c.String(nullable: false, unicode: false),
                    adresa = c.String(nullable: false, unicode: false),
                    grad = c.String(nullable: false, unicode: false),
                    drzava = c.String(nullable: false, unicode: false),
                    tel = c.Long(nullable: false),
                    mob = c.Long(nullable: false),
                    email = c.String(nullable: false, unicode: false),
                    oib = c.Long(nullable: false),
                    odgovorna_osoba = c.String(nullable: false, unicode: false),
                    ziro_racun = c.String(nullable: false, unicode: false),
                    banka = c.String(nullable: false, unicode: false),
                })
                .PrimaryKey(t => t.id_poduzece);

        }

        public override void Down()
        {
            DropForeignKey("dbo.racun", "Poduzece_id_poduzece", "dbo.poduzece");
            DropForeignKey("dbo.usluge", "id_racun", "dbo.racun");
            DropForeignKey("dbo.racun", "id_kupac", "dbo.kupac");
            DropForeignKey("dbo.stavke_racuna", "id_racun", "dbo.racun");
            DropIndex("dbo.usluge", new[] { "id_racun" });
            DropIndex("dbo.stavke_racuna", new[] { "id_racun" });
            DropIndex("dbo.racun", new[] { "Poduzece_id_poduzece" });
            DropIndex("dbo.racun", new[] { "id_kupac" });
            DropTable("dbo.poduzece");
            DropTable("dbo.usluge");
            DropTable("dbo.stavke_racuna");
            DropTable("dbo.racun");
            DropTable("dbo.kupac");
            DropTable("dbo.korisnik");
        }
    }
}
