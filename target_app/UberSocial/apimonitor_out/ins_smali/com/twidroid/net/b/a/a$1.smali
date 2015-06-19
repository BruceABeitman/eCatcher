.class  Lcom/twidroid/net/b/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.field final synthetic a:Lcom/twidroid/net/b/a/a;
.method constructor <init>(Lcom/twidroid/net/b/a/a;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/b/a/a$1;->a:Lcom/twidroid/net/b/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Ljava/lang/Void;
.registers 5
const/4 v3, 0x0
iget-object v1, p0, Lcom/twidroid/net/b/a/a$1;->a:Lcom/twidroid/net/b/a/a;
monitor-enter v1
:try_start_4
iget-object v0, p0, Lcom/twidroid/net/b/a/a$1;->a:Lcom/twidroid/net/b/a/a;
invoke-static {v0}, Lcom/twidroid/net/b/a/a;->a(Lcom/twidroid/net/b/a/a;)Ljava/io/Writer;
move-result-object v0
if-nez v0, :cond_e
monitor-exit v1
:goto_d
return-object v3
:cond_e
iget-object v0, p0, Lcom/twidroid/net/b/a/a$1;->a:Lcom/twidroid/net/b/a/a;
invoke-static {v0}, Lcom/twidroid/net/b/a/a;->b(Lcom/twidroid/net/b/a/a;)V
iget-object v0, p0, Lcom/twidroid/net/b/a/a$1;->a:Lcom/twidroid/net/b/a/a;
invoke-static {v0}, Lcom/twidroid/net/b/a/a;->c(Lcom/twidroid/net/b/a/a;)Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/twidroid/net/b/a/a$1;->a:Lcom/twidroid/net/b/a/a;
invoke-static {v0}, Lcom/twidroid/net/b/a/a;->d(Lcom/twidroid/net/b/a/a;)V
iget-object v0, p0, Lcom/twidroid/net/b/a/a$1;->a:Lcom/twidroid/net/b/a/a;
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/twidroid/net/b/a/a;->a(Lcom/twidroid/net/b/a/a;I)I
:cond_26
monitor-exit v1
goto :goto_d
:catchall_28
move-exception v0
monitor-exit v1
:try_end_2a
.catchall {:try_start_4 .. :try_end_2a} :catchall_28
throw v0
.end method
.method public synthetic call()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/twidroid/net/b/a/a$1;->a()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method