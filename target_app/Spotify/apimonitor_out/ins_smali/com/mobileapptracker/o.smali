.class final Lcom/mobileapptracker/o;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/mobileapptracker/g;
.method constructor <init>(Lcom/mobileapptracker/g;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/mobileapptracker/o;->b:Lcom/mobileapptracker/g;
iput-object p2, p0, Lcom/mobileapptracker/o;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/mobileapptracker/o;->b:Lcom/mobileapptracker/g;
iget-object v0, v0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
iget-object v1, p0, Lcom/mobileapptracker/o;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->o(Ljava/lang/String;)V
return-void
.end method