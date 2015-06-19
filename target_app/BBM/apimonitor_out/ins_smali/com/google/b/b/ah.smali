.class final Lcom/google/b/b/ah;
.super Lcom/google/b/b/ag;
.source "LocalCache.java"
.field final synthetic a:Lcom/google/b/b/n;
.method constructor <init>(Lcom/google/b/b/n;)V
.registers 2
iput-object p1, p0, Lcom/google/b/b/ah;->a:Lcom/google/b/b/n;
invoke-direct {p0, p1}, Lcom/google/b/b/ag;-><init>(Lcom/google/b/b/n;)V
return-void
.end method
.method public final next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/b/b/ah;->a()Lcom/google/b/b/bl;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/b/bl;->getKey()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method