.class public abstract Lcom/github/kevinsawicki/HttpRequest$FlushOperation;
.super Lcom/github/kevinsawicki/HttpRequest$Operation;
.source "HttpRequest.java"
.field private final flushable:Ljava/io/Flushable;
.method protected constructor <init>(Ljava/io/Flushable;)V
.registers 2
invoke-direct {p0}, Lcom/github/kevinsawicki/HttpRequest$Operation;-><init>()V
iput-object p1, p0, Lcom/github/kevinsawicki/HttpRequest$FlushOperation;->flushable:Ljava/io/Flushable;
return-void
.end method
.method protected done()V
.registers 2
iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest$FlushOperation;->flushable:Ljava/io/Flushable;
invoke-interface {v0}, Ljava/io/Flushable;->flush()V
return-void
.end method