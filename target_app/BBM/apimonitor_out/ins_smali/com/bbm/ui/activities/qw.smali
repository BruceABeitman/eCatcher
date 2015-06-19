.class final Lcom/bbm/ui/activities/qw;
.super Ljava/lang/Object;
.source "GroupPictureActivity.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/ui/activities/qv;
.method constructor <init>(Lcom/bbm/ui/activities/qv;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/qw;->a:Lcom/bbm/ui/activities/qv;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 7
check-cast p1, Lcom/bbm/g/af;
check-cast p2, Lcom/bbm/g/af;
iget-wide v0, p2, Lcom/bbm/g/af;->h:J
iget-wide v2, p1, Lcom/bbm/g/af;->h:J
sub-long/2addr v0, v2
invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(J)I
move-result v0
return v0
.end method