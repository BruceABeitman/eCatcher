.class public final Lcom/instagram/common/analytics/w;
.super Ljava/lang/Object;
.source "ImmediateActiveSecondsHelper.java"
.field public final a:J
.field public final b:J
.method protected constructor <init>(JJ)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/instagram/common/analytics/w;->a:J
iput-wide p3, p0, Lcom/instagram/common/analytics/w;->b:J
return-void
.end method
.method public final a()Z
.registers 5
iget-wide v0, p0, Lcom/instagram/common/analytics/w;->b:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-eqz v0, :cond_12
iget-wide v0, p0, Lcom/instagram/common/analytics/w;->a:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method