.class public final Lcom/instagram/common/analytics/v;
.super Ljava/lang/Object;
.source "ImmediateActiveSecondsHelper.java"
.field private a:J
.field private b:Lcom/instagram/common/analytics/w;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/v;-><init>(B)V
return-void
.end method
.method private constructor <init>(B)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/instagram/common/analytics/v;->a:J
return-void
.end method
.method private a()J
.registers 5
iget-wide v0, p0, Lcom/instagram/common/analytics/v;->a:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-gez v0, :cond_b
const-wide/16 v0, 0x7d3
:goto_a
return-wide v0
:cond_b
iget-wide v0, p0, Lcom/instagram/common/analytics/v;->a:J
goto :goto_a
.end method
.method private static a(JLjava/lang/String;)J
.registers 5
if-eqz p2, :cond_8
const-wide/16 v0, 0x1
cmp-long v0, p0, v0
if-gez v0, :cond_b
:cond_8
const-wide/16 v0, -0x1
:goto_a
return-wide v0
:cond_b
new-instance v0, Ljava/util/zip/CRC32;
invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V
invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V
invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J
move-result-wide v0
rem-long/2addr v0, p0
goto :goto_a
.end method
.method protected final a(Ljava/lang/String;)Lcom/instagram/common/analytics/w;
.registers 7
iget-object v0, p0, Lcom/instagram/common/analytics/v;->b:Lcom/instagram/common/analytics/w;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/instagram/common/analytics/v;->b:Lcom/instagram/common/analytics/w;
:goto_6
return-object v0
:cond_7
invoke-direct {p0}, Lcom/instagram/common/analytics/v;->a()J
move-result-wide v0
invoke-static {v0, v1, p1}, Lcom/instagram/common/analytics/v;->a(JLjava/lang/String;)J
move-result-wide v2
new-instance v4, Lcom/instagram/common/analytics/w;
invoke-direct {v4, v0, v1, v2, v3}, Lcom/instagram/common/analytics/w;-><init>(JJ)V
iput-object v4, p0, Lcom/instagram/common/analytics/v;->b:Lcom/instagram/common/analytics/w;
iget-object v0, p0, Lcom/instagram/common/analytics/v;->b:Lcom/instagram/common/analytics/w;
goto :goto_6
.end method