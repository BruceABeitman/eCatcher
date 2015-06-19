.class final Lcom/mobileapptracker/p;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Z
.field final synthetic b:Lcom/mobileapptracker/g;
.method constructor <init>(Lcom/mobileapptracker/g;)V
.registers 3
iput-object p1, p0, Lcom/mobileapptracker/p;->b:Lcom/mobileapptracker/g;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mobileapptracker/p;->a:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/mobileapptracker/p;->b:Lcom/mobileapptracker/g;
iget-boolean v1, p0, Lcom/mobileapptracker/p;->a:Z
invoke-static {v0, v1}, Lcom/mobileapptracker/g;->a(Lcom/mobileapptracker/g;Z)Z
return-void
.end method