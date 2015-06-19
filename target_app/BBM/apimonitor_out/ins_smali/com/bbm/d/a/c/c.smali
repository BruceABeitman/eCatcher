.class final Lcom/bbm/d/a/c/c;
.super Ljava/lang/Object;
.source "SparseList.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/d/a/c/a;
.method constructor <init>(Lcom/bbm/d/a/c/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/a/c/c;->a:Lcom/bbm/d/a/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
check-cast p1, Lcom/bbm/d/a/a;
check-cast p2, Lcom/bbm/d/a/a;
invoke-interface {p2}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
return v0
.end method