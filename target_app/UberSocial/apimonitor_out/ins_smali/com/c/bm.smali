.class final Lcom/c/bm;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/c/bi;Lcom/c/bi;)I
.registers 5
invoke-interface {p1}, Lcom/c/bi;->b()Lcom/c/bq;
move-result-object v0
invoke-interface {p2}, Lcom/c/bi;->b()Lcom/c/bq;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bq;->a(Lcom/c/bq;)I
move-result v0
return v0
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/c/bi;
check-cast p2, Lcom/c/bi;
invoke-virtual {p0, p1, p2}, Lcom/c/bm;->a(Lcom/c/bi;Lcom/c/bi;)I
move-result v0
return v0
.end method