.class  Lcom/twidroid/TwidroidClient$36;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$36;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/twidroid/TwidroidClient$36;->a:Lcom/twidroid/TwidroidClient;
invoke-virtual {v0}, Lcom/twidroid/TwidroidClient;->getBaseContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/TwidroidClient$36;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v1}, Lcom/twidroid/TwidroidClient;->b(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/b/a/b;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/TwidroidClient$36;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v2}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v2
new-instance v3, Lcom/twidroid/TwidroidClient$36$1;
invoke-direct {v3, p0}, Lcom/twidroid/TwidroidClient$36$1;-><init>(Lcom/twidroid/TwidroidClient$36;)V
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/net/c/w;->a(Landroid/content/Context;Lcom/twidroid/b/a/b;Lcom/twidroid/d/v;Lcom/twidroid/v;)V
:try_end_1a
.catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_1a} :catch_20
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b
:goto_1a
return-void
:catch_1b
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_1a
:catch_20
move-exception v0
goto :goto_1a
.end method