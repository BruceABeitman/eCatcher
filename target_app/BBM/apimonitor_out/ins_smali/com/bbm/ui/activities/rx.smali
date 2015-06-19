.class final Lcom/bbm/ui/activities/rx;
.super Ljava/lang/Object;
.source "GroupPictureCommentsActivity.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/ui/activities/rw;
.method constructor <init>(Lcom/bbm/ui/activities/rw;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/rx;->a:Lcom/bbm/ui/activities/rw;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 7
check-cast p1, Lcom/bbm/g/af;
check-cast p2, Lcom/bbm/g/af;
iget-wide v0, p2, Lcom/bbm/g/af;->k:J
iget-wide v2, p1, Lcom/bbm/g/af;->k:J
sub-long/2addr v0, v2
long-to-int v0, v0
return v0
.end method