.class final Lcom/squareup/okhttp/internal/o$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/ThreadFactory;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Z
.method constructor <init>(Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/squareup/okhttp/internal/o$1;->a:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/okhttp/internal/o$1;->b:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.registers 4
new-instance v0, Ljava/lang/Thread;
iget-object v1, p0, Lcom/squareup/okhttp/internal/o$1;->a:Ljava/lang/String;
invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/squareup/okhttp/internal/o$1;->b:Z
invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V
return-object v0
.end method