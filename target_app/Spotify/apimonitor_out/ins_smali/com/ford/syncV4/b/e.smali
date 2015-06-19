.class public final Lcom/ford/syncV4/b/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field  a:Ljava/util/concurrent/PriorityBlockingQueue;
.field  b:Lcom/ford/syncV4/b/a;
.field private c:Ljava/lang/Thread;
.field private d:Ljava/lang/Boolean;
.method public constructor <init>(Ljava/lang/String;Ljava/util/Comparator;Lcom/ford/syncV4/b/a;)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ford/syncV4/b/e;->a:Ljava/util/concurrent/PriorityBlockingQueue;
iput-object v0, p0, Lcom/ford/syncV4/b/e;->c:Ljava/lang/Thread;
iput-object v0, p0, Lcom/ford/syncV4/b/e;->b:Lcom/ford/syncV4/b/a;
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/ford/syncV4/b/e;->d:Ljava/lang/Boolean;
new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;
const/16 v1, 0xa
invoke-direct {v0, v1, p2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V
iput-object v0, p0, Lcom/ford/syncV4/b/e;->a:Ljava/util/concurrent/PriorityBlockingQueue;
iput-object p3, p0, Lcom/ford/syncV4/b/e;->b:Lcom/ford/syncV4/b/a;
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/ford/syncV4/b/e$1;
invoke-direct {v1, p0}, Lcom/ford/syncV4/b/e$1;-><init>(Lcom/ford/syncV4/b/e;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
iput-object v0, p0, Lcom/ford/syncV4/b/e;->c:Ljava/lang/Thread;
iget-object v0, p0, Lcom/ford/syncV4/b/e;->c:Ljava/lang/Thread;
invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ford/syncV4/b/e;->c:Ljava/lang/Thread;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V
iget-object v0, p0, Lcom/ford/syncV4/b/e;->c:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method static synthetic a(Lcom/ford/syncV4/b/e;)V
.registers 4
:goto_0
:try_start_0
iget-object v0, p0, Lcom/ford/syncV4/b/e;->d:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/ford/syncV4/b/e;->a:Ljava/util/concurrent/PriorityBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/ford/syncV4/b/e;->b:Lcom/ford/syncV4/b/a;
invoke-interface {v1, v0}, Lcom/ford/syncV4/b/a;->a(Ljava/lang/Object;)V
:try_end_13
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_13} :catch_14
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_16
goto :goto_0
:catch_14
move-exception v0
:cond_15
:goto_15
return-void
:catch_16
move-exception v0
const-string v1, "Error occurred dispating message."
invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v1, p0, Lcom/ford/syncV4/b/e;->b:Lcom/ford/syncV4/b/a;
const-string v2, "Error occurred dispating message."
invoke-interface {v1, v2, v0}, Lcom/ford/syncV4/b/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_15
.end method
.method public final a()V
.registers 2
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/ford/syncV4/b/e;->d:Ljava/lang/Boolean;
iget-object v0, p0, Lcom/ford/syncV4/b/e;->c:Ljava/lang/Thread;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/ford/syncV4/b/e;->c:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/ford/syncV4/b/e;->c:Ljava/lang/Thread;
:cond_13
return-void
.end method
.method public final a(Ljava/lang/Object;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/ford/syncV4/b/e;->a:Ljava/util/concurrent/PriorityBlockingQueue;
invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V
:goto_5
:try_end_5
.catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_5} :catch_6
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_f
return-void
:catch_6
move-exception v0
iget-object v1, p0, Lcom/ford/syncV4/b/e;->b:Lcom/ford/syncV4/b/a;
const-string v2, "ClassCastException encountered when queueing message."
invoke-interface {v1, v2, v0}, Lcom/ford/syncV4/b/a;->b(Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_5
:catch_f
move-exception v0
iget-object v1, p0, Lcom/ford/syncV4/b/e;->b:Lcom/ford/syncV4/b/a;
const-string v2, "Exception encountered when queueing message."
invoke-interface {v1, v2, v0}, Lcom/ford/syncV4/b/a;->b(Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_5
.end method