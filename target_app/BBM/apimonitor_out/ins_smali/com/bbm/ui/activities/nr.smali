.class final Lcom/bbm/ui/activities/nr;
.super Ljava/lang/Object;
.source "GroupEventsActivity.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/ui/activities/nq;
.method constructor <init>(Lcom/bbm/ui/activities/nq;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/nr;->a:Lcom/bbm/ui/activities/nq;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 7
check-cast p1, Lcom/bbm/g/s;
check-cast p2, Lcom/bbm/g/s;
iget-wide v0, p1, Lcom/bbm/g/s;->h:J
iget-wide v2, p2, Lcom/bbm/g/s;->h:J
cmp-long v0, v0, v2
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
iget-wide v0, p1, Lcom/bbm/g/s;->h:J
iget-wide v2, p2, Lcom/bbm/g/s;->h:J
cmp-long v0, v0, v2
if-gez v0, :cond_18
const/4 v0, -0x1
goto :goto_d
:cond_18
iget-object v0, p1, Lcom/bbm/g/s;->i:Ljava/lang/String;
iget-object v1, p2, Lcom/bbm/g/s;->i:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
goto :goto_d
.end method