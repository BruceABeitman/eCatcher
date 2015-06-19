.class final Lcom/mobileapptracker/u;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/mobileapptracker/g;
.method constructor <init>(Lcom/mobileapptracker/g;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/mobileapptracker/u;->b:Lcom/mobileapptracker/g;
iput-object p2, p0, Lcom/mobileapptracker/u;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/mobileapptracker/u;->b:Lcom/mobileapptracker/g;
iget-object v1, p0, Lcom/mobileapptracker/u;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/mobileapptracker/u;->b:Lcom/mobileapptracker/g;
invoke-virtual {v2}, Lcom/mobileapptracker/g;->d()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/mobileapptracker/g;->a(Lcom/mobileapptracker/g;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method