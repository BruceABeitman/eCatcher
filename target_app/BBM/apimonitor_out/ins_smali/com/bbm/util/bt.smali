.class final Lcom/bbm/util/bt;
.super Ljava/lang/Object;
.source "HttpLoader.java"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 7
check-cast p1, Lcom/bbm/util/bs;
check-cast p2, Lcom/bbm/util/bs;
iget-object v0, p1, Lcom/bbm/util/bs;->d:Lcom/bbm/util/br;
iget-object v1, p2, Lcom/bbm/util/bs;->d:Lcom/bbm/util/br;
invoke-virtual {v0, v1}, Lcom/bbm/util/br;->compareTo(Ljava/lang/Enum;)I
move-result v0
if-nez v0, :cond_17
iget-wide v0, p1, Lcom/bbm/util/bs;->b:J
iget-wide v2, p2, Lcom/bbm/util/bs;->b:J
sub-long/2addr v0, v2
invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(J)I
move-result v0
:cond_17
return v0
.end method