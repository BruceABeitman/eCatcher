.class final Lcom/instagram/filterkit/c/h;
.super Ljava/lang/Thread;
.source "SingleThreadRenderManager.java"
.field final synthetic a:Lcom/instagram/filterkit/c/e;
.field private volatile b:Z
.method public constructor <init>(Lcom/instagram/filterkit/c/e;)V
.registers 3
iput-object p1, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
const-string v0, "RenderThread"
invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/filterkit/c/h;->b:Z
return-void
.end method
.method private a()V
.registers 2
:cond_0
monitor-enter p0
:goto_1
:try_start_1
iget-boolean v0, p0, Lcom/instagram/filterkit/c/h;->b:Z
if-nez v0, :cond_17
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->g(Lcom/instagram/filterkit/c/e;)Ljava/util/Queue;
move-result-object v0
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_3f
move-result v0
if-eqz v0, :cond_17
:try_start_11
invoke-virtual {p0}, Ljava/lang/Object;->wait()V
:try_end_14
.catchall {:try_start_11 .. :try_end_14} :catchall_3f
.catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
goto :goto_1
:catch_15
move-exception v0
goto :goto_1
:cond_17
const/4 v0, 0x0
:try_start_18
iput-boolean v0, p0, Lcom/instagram/filterkit/c/h;->b:Z
monitor-exit p0
:try_end_1b
.catchall {:try_start_18 .. :try_end_1b} :catchall_3f
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->h(Lcom/instagram/filterkit/c/e;)Z
move-result v0
if-nez v0, :cond_42
:goto_23
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->g(Lcom/instagram/filterkit/c/e;)Ljava/util/Queue;
move-result-object v0
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
move-result v0
if-nez v0, :cond_0
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->g(Lcom/instagram/filterkit/c/e;)Ljava/util/Queue;
move-result-object v0
invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/c/d;
invoke-interface {v0}, Lcom/instagram/filterkit/c/d;->a()V
goto :goto_23
:catchall_3f
move-exception v0
monitor-exit p0
throw v0
:cond_42
return-void
.end method
.method static synthetic a(Lcom/instagram/filterkit/c/h;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/filterkit/c/h;->b:Z
return v0
.end method
.method public final run()V
.registers 4
:try_start_0
invoke-static {}, Lcom/instagram/filterkit/c/e;->e()Ljava/lang/Class;
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/filterkit/a/b;->a()Z
move-result v0
if-nez v0, :cond_5a
invoke-static {}, Lcom/instagram/filterkit/c/e;->e()Ljava/lang/Class;
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v1}, Lcom/instagram/filterkit/c/e;->b(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/a/b;->a(Lcom/instagram/filterkit/a/c;)V
:goto_21
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->c(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/e/a;
move-result-object v0
if-nez v0, :cond_38
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
iget-object v1, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v1}, Lcom/instagram/filterkit/c/e;->d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;
move-result-object v1
invoke-interface {v1}, Lcom/instagram/filterkit/c/b;->a()Lcom/instagram/filterkit/e/a;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;Lcom/instagram/filterkit/e/a;)Lcom/instagram/filterkit/e/a;
:cond_38
invoke-direct {p0}, Lcom/instagram/filterkit/c/h;->a()V
:try_end_3b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_64
:try_start_3b
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/filterkit/c/b;->c()V
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/filterkit/a/b;->c()V
:try_end_4d
.catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4d} :catch_86
:goto_4d
:try_start_4d
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->e(Lcom/instagram/filterkit/c/e;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->clear()V
invoke-static {}, Lcom/instagram/filterkit/c/e;->e()Ljava/lang/Class;
:goto_59
return-void
:cond_5a
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/filterkit/a/b;->d()V
:try_end_63
.catch Ljava/lang/Exception; {:try_start_4d .. :try_end_63} :catch_64
goto :goto_21
:catch_64
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
const-string v2, "Error in render thread"
invoke-static {v1, v2, v0}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-static {}, Lcom/instagram/filterkit/c/e;->e()Ljava/lang/Class;
move-result-object v1
const-string v2, "Error in the render thread"
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/filterkit/a/b;->e()V
iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;
invoke-static {v0}, Lcom/instagram/filterkit/c/e;->f(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/h;
goto :goto_59
:catch_86
move-exception v0
:try_start_87
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
const-string v2, "Error while destroying callback"
invoke-static {v1, v2, v0}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-static {}, Lcom/instagram/filterkit/c/e;->e()Ljava/lang/Class;
move-result-object v1
const-string v2, "Error while destroying callback"
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_99
.catch Ljava/lang/Exception; {:try_start_87 .. :try_end_99} :catch_64
goto :goto_4d
.end method