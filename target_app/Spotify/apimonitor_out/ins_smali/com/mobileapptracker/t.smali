.class final Lcom/mobileapptracker/t;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/mobileapptracker/g;
.method constructor <init>(Lcom/mobileapptracker/g;)V
.registers 2
iput-object p1, p0, Lcom/mobileapptracker/t;->a:Lcom/mobileapptracker/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/mobileapptracker/t;->a:Lcom/mobileapptracker/g;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/mobileapptracker/g;->h:Z
iget-object v0, p0, Lcom/mobileapptracker/t;->a:Lcom/mobileapptracker/g;
const-string v1, "session"
iget-object v2, p0, Lcom/mobileapptracker/t;->a:Lcom/mobileapptracker/g;
invoke-virtual {v2}, Lcom/mobileapptracker/g;->d()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/mobileapptracker/t;->a:Lcom/mobileapptracker/g;
invoke-virtual {v3}, Lcom/mobileapptracker/g;->e()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/mobileapptracker/g;->a(Lcom/mobileapptracker/g;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method