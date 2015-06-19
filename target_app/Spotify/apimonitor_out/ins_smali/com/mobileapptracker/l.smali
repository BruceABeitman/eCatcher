.class final Lcom/mobileapptracker/l;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/mobileapptracker/g;
.method constructor <init>(Lcom/mobileapptracker/g;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/mobileapptracker/l;->b:Lcom/mobileapptracker/g;
iput-object p2, p0, Lcom/mobileapptracker/l;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/mobileapptracker/l;->a:Ljava/lang/String;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/mobileapptracker/l;->a:Ljava/lang/String;
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
:cond_e
iget-object v0, p0, Lcom/mobileapptracker/l;->b:Lcom/mobileapptracker/g;
iget-object v0, v0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
iget-object v1, p0, Lcom/mobileapptracker/l;->b:Lcom/mobileapptracker/g;
iget-object v1, v1, Lcom/mobileapptracker/g;->k:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->k(Ljava/lang/String;)V
:goto_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/mobileapptracker/l;->b:Lcom/mobileapptracker/g;
iget-object v0, v0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
iget-object v1, p0, Lcom/mobileapptracker/l;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->k(Ljava/lang/String;)V
goto :goto_1d
.end method