.class  Lcom/twidroid/TwidroidClient$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/ui/c/i;
.field final synthetic b:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;Lcom/twidroid/ui/c/i;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/TwidroidClient$3;->b:Lcom/twidroid/TwidroidClient;
iput-object p2, p0, Lcom/twidroid/TwidroidClient$3;->a:Lcom/twidroid/ui/c/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/twidroid/TwidroidClient$3;->a:Lcom/twidroid/ui/c/i;
invoke-virtual {v0}, Lcom/twidroid/ui/c/i;->m()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/TwidroidClient$3;->a:Lcom/twidroid/ui/c/i;
invoke-virtual {v0}, Lcom/twidroid/ui/c/i;->m()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_40
:cond_14
iget-object v0, p0, Lcom/twidroid/TwidroidClient$3;->b:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/TwidroidClient$3;->a:Lcom/twidroid/ui/c/i;
invoke-virtual {v1}, Lcom/twidroid/ui/c/i;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/TwidroidClient$3;->a:Lcom/twidroid/ui/c/i;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/i;->c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;
iget-object v0, p0, Lcom/twidroid/TwidroidClient$3;->b:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->i(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/c/g;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/TwidroidClient$3;->a:Lcom/twidroid/ui/c/i;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/g;->d(Lcom/twidroid/ui/c/h;)V
:cond_40
iget-object v0, p0, Lcom/twidroid/TwidroidClient$3;->a:Lcom/twidroid/ui/c/i;
invoke-virtual {v0}, Lcom/twidroid/ui/c/i;->m()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/twidroid/TwidroidClient$3;->b:Lcom/twidroid/TwidroidClient;
iget-object v0, v0, Lcom/twidroid/TwidroidClient;->G:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/TwidroidClient$3$1;
invoke-direct {v1, p0}, Lcom/twidroid/TwidroidClient$3$1;-><init>(Lcom/twidroid/TwidroidClient$3;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_54
:try_end_54
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55
:cond_54
return-void
:catch_55
move-exception v0
const-string v1, "TwidroidClient"
const-string v2, ""
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_54
.end method