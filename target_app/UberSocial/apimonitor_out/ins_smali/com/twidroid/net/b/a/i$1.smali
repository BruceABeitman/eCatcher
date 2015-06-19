.class  Lcom/twidroid/net/b/a/i$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/Runnable;
.field final synthetic b:Lcom/twidroid/net/b/a/i;
.method constructor <init>(Lcom/twidroid/net/b/a/i;Ljava/lang/Runnable;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/net/b/a/i$1;->b:Lcom/twidroid/net/b/a/i;
iput-object p2, p0, Lcom/twidroid/net/b/a/i$1;->a:Ljava/lang/Runnable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/twidroid/net/b/a/i$1;->a:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:try_end_5
.catchall {:try_start_0 .. :try_end_5} :catchall_b
iget-object v0, p0, Lcom/twidroid/net/b/a/i$1;->b:Lcom/twidroid/net/b/a/i;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/i;->a()V
return-void
:catchall_b
move-exception v0
iget-object v1, p0, Lcom/twidroid/net/b/a/i$1;->b:Lcom/twidroid/net/b/a/i;
invoke-virtual {v1}, Lcom/twidroid/net/b/a/i;->a()V
throw v0
.end method