.class final Lcom/google/b/f/a/k;
.super Lcom/google/b/f/a/j;
.source "Futures.java"
.field private final a:Ljava/lang/Object;
.method constructor <init>(Ljava/lang/Object;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/b/f/a/j;-><init>(B)V
iput-object p1, p0, Lcom/google/b/f/a/k;->a:Ljava/lang/Object;
return-void
.end method
.method public final get()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/b/f/a/k;->a:Ljava/lang/Object;
return-object v0
.end method