.class  Lcom/c/a/bc;
.super Ljava/util/TreeSet;
.field final a:Lcom/c/a/be;
.method public constructor <init>(Lcom/c/a/be;)V
.registers 3
iput-object p1, p0, Lcom/c/a/bc;->a:Lcom/c/a/be;
new-instance v0, Lcom/c/a/bm;
invoke-direct {v0, p1}, Lcom/c/a/bm;-><init>(Lcom/c/a/be;)V
invoke-direct {p0, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
return-void
.end method