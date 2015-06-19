.class final Lcom/a/a/r;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.field private synthetic a:Ljava/util/Date;
.field private synthetic b:Ljava/lang/Thread;
.field private synthetic c:Ljava/lang/Throwable;
.field private synthetic d:Lcom/a/a/bf;
.method constructor <init>(Lcom/a/a/bf;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 5
iput-object p1, p0, Lcom/a/a/r;->d:Lcom/a/a/bf;
iput-object p2, p0, Lcom/a/a/r;->a:Ljava/util/Date;
iput-object p3, p0, Lcom/a/a/r;->b:Ljava/lang/Thread;
iput-object p4, p0, Lcom/a/a/r;->c:Ljava/lang/Throwable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic call()Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/a/a/r;->d:Lcom/a/a/bf;
iget-object v1, p0, Lcom/a/a/r;->a:Ljava/util/Date;
iget-object v2, p0, Lcom/a/a/r;->b:Ljava/lang/Thread;
iget-object v3, p0, Lcom/a/a/r;->c:Ljava/lang/Throwable;
invoke-static {v0, v1, v2, v3}, Lcom/a/a/bf;->a(Lcom/a/a/bf;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
const/4 v0, 0x0
return-object v0
.end method