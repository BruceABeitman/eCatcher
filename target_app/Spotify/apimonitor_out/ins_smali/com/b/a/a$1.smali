.class final Lcom/b/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.field final synthetic a:Lcom/b/a/a;
.method constructor <init>(Lcom/b/a/a;)V
.registers 2
iput-object p1, p0, Lcom/b/a/a$1;->a:Lcom/b/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a()Ljava/lang/Void;
.registers 4
const/4 v2, 0x0
iget-object v1, p0, Lcom/b/a/a$1;->a:Lcom/b/a/a;
monitor-enter v1
:try_start_4
iget-object v0, p0, Lcom/b/a/a$1;->a:Lcom/b/a/a;
invoke-static {v0}, Lcom/b/a/a;->a(Lcom/b/a/a;)Ljava/io/Writer;
move-result-object v0
if-nez v0, :cond_e
monitor-exit v1
:goto_d
return-object v2
:cond_e
iget-object v0, p0, Lcom/b/a/a$1;->a:Lcom/b/a/a;
invoke-static {v0}, Lcom/b/a/a;->b(Lcom/b/a/a;)V
iget-object v0, p0, Lcom/b/a/a$1;->a:Lcom/b/a/a;
invoke-static {v0}, Lcom/b/a/a;->c(Lcom/b/a/a;)Z
move-result v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/b/a/a$1;->a:Lcom/b/a/a;
invoke-static {v0}, Lcom/b/a/a;->d(Lcom/b/a/a;)V
iget-object v0, p0, Lcom/b/a/a$1;->a:Lcom/b/a/a;
invoke-static {v0}, Lcom/b/a/a;->e(Lcom/b/a/a;)I
:cond_25
monitor-exit v1
:try_end_26
.catchall {:try_start_4 .. :try_end_26} :catchall_27
goto :goto_d
:catchall_27
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final synthetic call()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Lcom/b/a/a$1;->a()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method