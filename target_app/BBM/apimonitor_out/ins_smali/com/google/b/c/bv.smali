.class public abstract Lcom/google/b/c/bv;
.super Ljava/lang/Object;
.source "Ordering.java"
.implements Ljava/util/Comparator;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static b()Lcom/google/b/c/bv;
.registers 1
sget-object v0, Lcom/google/b/c/bu;->a:Lcom/google/b/c/bu;
return-object v0
.end method
.method public a()Lcom/google/b/c/bv;
.registers 2
new-instance v0, Lcom/google/b/c/bx;
invoke-direct {v0, p0}, Lcom/google/b/c/bx;-><init>(Lcom/google/b/c/bv;)V
return-object v0
.end method
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
.end method