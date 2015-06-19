.class final Lcom/bbm/d/j;
.super Ljava/lang/Object;
.source "BbmdsModel.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/d/i;
.method constructor <init>(Lcom/bbm/d/i;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/j;->a:Lcom/bbm/d/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 7
check-cast p1, Lcom/bbm/d/fn;
check-cast p2, Lcom/bbm/d/fn;
iget-wide v0, p2, Lcom/bbm/d/fn;->i:J
iget-wide v2, p1, Lcom/bbm/d/fn;->i:J
sub-long/2addr v0, v2
invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(J)I
move-result v0
return v0
.end method