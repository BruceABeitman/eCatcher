.class  Lcom/c/a/x;
.super Ljava/lang/Object;
.implements Ljava/lang/Comparable;
.field final a:Lcom/c/a/ac;
.field  b:Lcom/c/a/az;
.field final c:Lcom/c/a/dz;
.method public constructor <init>(Lcom/c/a/dz;Lcom/c/a/ac;)V
.registers 4
iput-object p1, p0, Lcom/c/a/x;->c:Lcom/c/a/dz;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/c/a/x;->a:Lcom/c/a/ac;
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/x;->b:Lcom/c/a/az;
return-void
.end method
.method public a(Lcom/c/a/x;)I
.registers 5
sget-object v0, Lcom/c/a/ac;->a:Ljava/util/Comparator;
iget-object v1, p0, Lcom/c/a/x;->a:Lcom/c/a/ac;
iget-object v2, p1, Lcom/c/a/x;->a:Lcom/c/a/ac;
invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/c/a/x;
invoke-virtual {p0, p1}, Lcom/c/a/x;->a(Lcom/c/a/x;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/c/a/x;->a:Lcom/c/a/ac;
invoke-virtual {v0}, Lcom/c/a/ac;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method