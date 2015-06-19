.class public final Lcom/instagram/common/analytics/u;
.super Ljava/lang/Object;
.source "ImmediateActiveSecondReporter.java"
.field private final a:Lcom/instagram/common/u/b/a;
.field private final b:Lcom/instagram/common/analytics/v;
.field private c:J
.field private volatile d:J
.method public constructor <init>()V
.registers 3
invoke-static {}, Lcom/instagram/common/u/b/a;->a()Lcom/instagram/common/u/b/a;
move-result-object v0
new-instance v1, Lcom/instagram/common/analytics/v;
invoke-direct {v1}, Lcom/instagram/common/analytics/v;-><init>()V
invoke-direct {p0, v0, v1}, Lcom/instagram/common/analytics/u;-><init>(Lcom/instagram/common/u/b/a;Lcom/instagram/common/analytics/v;)V
iget-object v0, p0, Lcom/instagram/common/analytics/u;->a:Lcom/instagram/common/u/b/a;
invoke-static {}, Lcom/instagram/common/u/b/a;->d()J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/common/analytics/u;->d:J
return-void
.end method
.method private constructor <init>(Lcom/instagram/common/u/b/a;Lcom/instagram/common/analytics/v;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/instagram/common/analytics/u;->c:J
iput-object p1, p0, Lcom/instagram/common/analytics/u;->a:Lcom/instagram/common/u/b/a;
iput-object p2, p0, Lcom/instagram/common/analytics/u;->b:Lcom/instagram/common/analytics/v;
iget-object v0, p0, Lcom/instagram/common/analytics/u;->a:Lcom/instagram/common/u/b/a;
invoke-static {}, Lcom/instagram/common/u/b/a;->d()J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/common/analytics/u;->d:J
return-void
.end method
.method private static a(JLcom/instagram/common/analytics/w;)Z
.registers 7
iget-wide v0, p2, Lcom/instagram/common/analytics/w;->b:J
iget-wide v2, p2, Lcom/instagram/common/analytics/w;->a:J
rem-long v2, p0, v2
cmp-long v0, v0, v2
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final a(JLjava/lang/String;)Lcom/instagram/common/analytics/b;
.registers 11
const-wide/16 v5, 0x3e8
const/4 v0, 0x0
div-long v1, p1, v5
iget-wide v3, p0, Lcom/instagram/common/analytics/u;->c:J
cmp-long v3, v1, v3
if-gtz v3, :cond_c
:goto_b
:cond_b
return-object v0
:cond_c
iget-wide v3, p0, Lcom/instagram/common/analytics/u;->c:J
mul-long/2addr v3, v5
iput-wide v1, p0, Lcom/instagram/common/analytics/u;->c:J
iget-object v5, p0, Lcom/instagram/common/analytics/u;->b:Lcom/instagram/common/analytics/v;
invoke-virtual {v5, p3}, Lcom/instagram/common/analytics/v;->a(Ljava/lang/String;)Lcom/instagram/common/analytics/w;
move-result-object v5
if-eqz v5, :cond_b
invoke-virtual {v5}, Lcom/instagram/common/analytics/w;->a()Z
move-result v6
if-eqz v6, :cond_b
invoke-static {v1, v2, v5}, Lcom/instagram/common/analytics/u;->a(JLcom/instagram/common/analytics/w;)Z
move-result v1
if-eqz v1, :cond_b
new-instance v0, Lcom/instagram/common/analytics/b;
const-string v1, "immediate_active_seconds"
invoke-static {}, Lcom/instagram/common/p/b;->a()Lcom/instagram/common/p/b;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/common/p/b;->b()Lcom/instagram/common/analytics/e;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v1, "activity_time"
invoke-virtual {v0, v1, p1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "last_activity_time"
invoke-virtual {v0, v1, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "last_foreground_time"
iget-wide v2, p0, Lcom/instagram/common/analytics/u;->d:J
invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v0
goto :goto_b
.end method