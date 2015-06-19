.class public final Lcom/bbm/ui/cy;
.super Ljava/lang/Object;
.source "IncrementalListAdapter.java"
.field  a:Ljava/lang/Object;
.field  b:J
.field  c:J
.method public constructor <init>()V
.registers 4
const-wide/16 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v1, p0, Lcom/bbm/ui/cy;->c:J
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/cy;->a:Ljava/lang/Object;
iput-wide v1, p0, Lcom/bbm/ui/cy;->b:J
return-void
.end method
.method public final a()Z
.registers 5
iget-wide v0, p0, Lcom/bbm/ui/cy;->c:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method