.class public abstract Lcom/google/b/c/j;
.super Ljava/lang/Object;
.source "GenericMapMaker.java"
.field  a:Lcom/google/b/c/y;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method final a()Lcom/google/b/c/y;
.registers 3
iget-object v0, p0, Lcom/google/b/c/j;->a:Lcom/google/b/c/y;
sget-object v1, Lcom/google/b/c/k;->a:Lcom/google/b/c/k;
invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/c/y;
return-object v0
.end method