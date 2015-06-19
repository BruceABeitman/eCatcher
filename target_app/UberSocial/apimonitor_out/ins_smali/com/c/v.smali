.class final Lcom/c/v;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/c/q;Lcom/c/q;)I
.registers 5
invoke-interface {p1}, Lcom/c/q;->a()Lcom/c/l;
move-result-object v0
invoke-interface {p2}, Lcom/c/q;->a()Lcom/c/l;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/l;->a(Lcom/c/l;)I
move-result v0
return v0
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/c/q;
check-cast p2, Lcom/c/q;
invoke-virtual {p0, p1, p2}, Lcom/c/v;->a(Lcom/c/q;Lcom/c/q;)I
move-result v0
return v0
.end method