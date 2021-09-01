namespace YaleArt_ttomczak3.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Exhibit : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Exhibit",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Title = c.String(),
                        Description = c.String(),
                        Genre = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Exhibit");
        }
    }
}
