.class final Lcom/google/b/c/bl;
.super Lcom/google/b/c/av;
.source "MapMakerInternalMap.java"
.field final synthetic a:Lcom/google/b/c/aa;
.method constructor <init>(Lcom/google/b/c/aa;)V
.registers 2
iput-object p1, p0, Lcom/google/b/c/bl;->a:Lcom/google/b/c/aa;
invoke-direct {p0, p1}, Lcom/google/b/c/av;-><init>(Lcom/google/b/c/aa;)V
return-void
.end method
.method public final next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/bl;->a()Lcom/google/b/c/bt;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/c/bt;->getValue()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method