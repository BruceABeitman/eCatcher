.class public abstract Lcom/squareup/okhttp/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/String;
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/j;->a:Ljava/lang/String;
return-void
.end method
.method protected abstract a()V
.end method
.method public final run()V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
iget-object v2, p0, Lcom/squareup/okhttp/internal/j;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
:try_start_11
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/j;->a()V
:try_end_14
.catchall {:try_start_11 .. :try_end_14} :catchall_1c
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
return-void
:catchall_1c
move-exception v1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
throw v1
.end method