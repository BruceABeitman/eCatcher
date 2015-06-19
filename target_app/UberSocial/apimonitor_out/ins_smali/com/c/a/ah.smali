.class final Lcom/c/a/ah;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/c/a/ac;Lcom/c/a/ac;)I
.registers 5
invoke-virtual {p2}, Lcom/c/a/ac;->b()I
move-result v0
invoke-virtual {p1}, Lcom/c/a/ac;->b()I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/c/a/ac;
check-cast p2, Lcom/c/a/ac;
invoke-virtual {p0, p1, p2}, Lcom/c/a/ah;->a(Lcom/c/a/ac;Lcom/c/a/ac;)I
move-result v0
return v0
.end method