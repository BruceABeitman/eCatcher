.class public Lcom/tencent/stat/common/f;
.super Ljava/lang/Object;
.field static a:J
.method static constructor <clinit>()V
.registers 2
const-wide/16 v0, -0x1
sput-wide v0, Lcom/tencent/stat/common/f;->a:J
return-void
.end method
.method static a(Landroid/content/Context;Ljava/lang/String;)J
.registers 4
sget-wide v0, Lcom/tencent/stat/common/f;->a:J
invoke-static {p0, p1, v0, v1}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method static a(Landroid/content/Context;Ljava/lang/String;J)V
.registers 4
invoke-static {p0, p1, p2, p3}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;J)V
return-void
.end method
.method public static declared-synchronized a(Landroid/content/Context;)Z
.registers 9
const-class v1, Lcom/tencent/stat/common/f;
monitor-enter v1
:try_start_3
const-string/jumbo v0, "1.6.2_begin_protection"
invoke-static {p0, v0}, Lcom/tencent/stat/common/f;->a(Landroid/content/Context;Ljava/lang/String;)J
move-result-wide v2
const-string/jumbo v0, "1.6.2_end__protection"
invoke-static {p0, v0}, Lcom/tencent/stat/common/f;->a(Landroid/content/Context;Ljava/lang/String;)J
move-result-wide v4
const-wide/16 v6, 0x0
cmp-long v0, v2, v6
if-lez v0, :cond_20
sget-wide v6, Lcom/tencent/stat/common/f;->a:J
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_32
cmp-long v0, v4, v6
if-nez v0, :cond_20
const/4 v0, 0x0
:goto_1e
monitor-exit v1
return v0
:cond_20
:try_start_20
sget-wide v4, Lcom/tencent/stat/common/f;->a:J
cmp-long v0, v2, v4
if-nez v0, :cond_30
const-string/jumbo v0, "1.6.2_begin_protection"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {p0, v0, v2, v3}, Lcom/tencent/stat/common/f;->a(Landroid/content/Context;Ljava/lang/String;J)V
:cond_30
:try_end_30
.catchall {:try_start_20 .. :try_end_30} :catchall_32
const/4 v0, 0x1
goto :goto_1e
:catchall_32
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized b(Landroid/content/Context;)V
.registers 7
const-class v1, Lcom/tencent/stat/common/f;
monitor-enter v1
:try_start_3
const-string/jumbo v0, "1.6.2_end__protection"
invoke-static {p0, v0}, Lcom/tencent/stat/common/f;->a(Landroid/content/Context;Ljava/lang/String;)J
move-result-wide v2
sget-wide v4, Lcom/tencent/stat/common/f;->a:J
cmp-long v0, v2, v4
if-nez v0, :cond_1a
const-string/jumbo v0, "1.6.2_end__protection"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {p0, v0, v2, v3}, Lcom/tencent/stat/common/f;->a(Landroid/content/Context;Ljava/lang/String;J)V
:try_end_1a
.catchall {:try_start_3 .. :try_end_1a} :catchall_1c
:cond_1a
monitor-exit v1
return-void
:catchall_1c
move-exception v0
monitor-exit v1
throw v0
.end method