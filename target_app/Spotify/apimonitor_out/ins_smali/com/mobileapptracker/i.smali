.class final Lcom/mobileapptracker/i;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Z
.field final synthetic b:Lcom/mobileapptracker/g;
.method constructor <init>(Lcom/mobileapptracker/g;Z)V
.registers 3
iput-object p1, p0, Lcom/mobileapptracker/i;->b:Lcom/mobileapptracker/g;
iput-boolean p2, p0, Lcom/mobileapptracker/i;->a:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-boolean v0, p0, Lcom/mobileapptracker/i;->a:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/mobileapptracker/i;->b:Lcom/mobileapptracker/g;
iget-object v0, v0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->e(Ljava/lang/String;)V
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/mobileapptracker/i;->b:Lcom/mobileapptracker/g;
iget-object v0, v0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->e(Ljava/lang/String;)V
goto :goto_10
.end method