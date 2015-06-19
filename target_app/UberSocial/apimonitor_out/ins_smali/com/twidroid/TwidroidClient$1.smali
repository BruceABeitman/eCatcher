.class  Lcom/twidroid/TwidroidClient$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/ubermedia/b/f;
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$1;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 4
const/4 v2, 0x1
const-string v0, "license"
const-string v1, "successful"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$1;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/twidroid/TwidroidClient$1;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/twidroid/d/v;->e(Z)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$1;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/twidroid/d/v;->f(Z)V
:cond_22
return-void
.end method
.method public b()V
.registers 3
const-string v0, "license"
const-string v1, "retry"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public c()V
.registers 3
const-string v0, "license"
const-string v1, "unsuccessful"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$1;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->e(Z)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$1;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->f(Z)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$1;->a:Lcom/twidroid/TwidroidClient;
const v1, 0x474f544f
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
return-void
.end method
.method public d()V
.registers 3
const-string v0, "license"
const-string v1, "error"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method