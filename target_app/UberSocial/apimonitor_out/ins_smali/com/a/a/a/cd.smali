.class final Lcom/a/a/a/cd;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"
.method constructor <init>(Lcom/a/a/a/cb;)V
.registers 2
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method protected final synthetic initialValue()Ljava/lang/Object;
.registers 2
new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
return-object v0
.end method