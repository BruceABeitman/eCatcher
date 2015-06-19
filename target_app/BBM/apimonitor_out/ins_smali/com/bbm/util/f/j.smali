.class public final Lcom/bbm/util/f/j;
.super Ljava/lang/Object;
.source "TimeRangeFormatter.java"
.implements Ljava/lang/Comparable;
.field public a:J
.field public b:J
.field public c:Lcom/bbm/util/f/i;
.method public constructor <init>(JJLcom/bbm/util/f/i;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/bbm/util/f/j;->a:J
iput-wide p3, p0, Lcom/bbm/util/f/j;->b:J
iput-object p5, p0, Lcom/bbm/util/f/j;->c:Lcom/bbm/util/f/i;
return-void
.end method
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 6
check-cast p1, Lcom/bbm/util/f/j;
iget-wide v0, p0, Lcom/bbm/util/f/j;->a:J
iget-wide v2, p1, Lcom/bbm/util/f/j;->a:J
cmp-long v0, v0, v2
if-gez v0, :cond_c
const/4 v0, -0x1
:goto_b
return v0
:cond_c
iget-wide v0, p0, Lcom/bbm/util/f/j;->a:J
iget-wide v2, p1, Lcom/bbm/util/f/j;->a:J
cmp-long v0, v0, v2
if-lez v0, :cond_16
const/4 v0, 0x1
goto :goto_b
:cond_16
const/4 v0, 0x0
goto :goto_b
.end method