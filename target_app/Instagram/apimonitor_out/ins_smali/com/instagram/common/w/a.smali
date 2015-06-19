.class public final Lcom/instagram/common/w/a;
.super Ljava/lang/Object;
.source "Waterfall.java"
.field private static final a:Ljava/util/HashMap;
.field private final b:Lcom/instagram/common/r/c;
.field private final c:Lcom/instagram/common/r/b;
.field private final d:Lcom/instagram/common/analytics/e;
.field private e:Ljava/lang/String;
.field private f:J
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/instagram/common/w/a;->a:Ljava/util/HashMap;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "waterfall_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/instagram/common/w/b;
invoke-direct {v1, p0, v0}, Lcom/instagram/common/w/b;-><init>(Lcom/instagram/common/w/a;Ljava/lang/String;)V
iput-object v1, p0, Lcom/instagram/common/w/a;->d:Lcom/instagram/common/analytics/e;
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
new-instance v1, Lcom/instagram/common/r/c;
const-string v2, "id"
invoke-direct {v1, v0, v2}, Lcom/instagram/common/r/c;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
iput-object v1, p0, Lcom/instagram/common/w/a;->b:Lcom/instagram/common/r/c;
new-instance v1, Lcom/instagram/common/r/b;
const-string v2, "start_time"
invoke-direct {v1, v0, v2}, Lcom/instagram/common/r/b;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
iput-object v1, p0, Lcom/instagram/common/w/a;->c:Lcom/instagram/common/r/b;
return-void
.end method
.method private declared-synchronized a(Lcom/instagram/common/analytics/b;)Lcom/instagram/common/analytics/b;
.registers 8
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/instagram/common/w/a;->b()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-string v2, "waterfall_id"
iget-object v3, p0, Lcom/instagram/common/w/a;->e:Ljava/lang/String;
invoke-virtual {p1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "start_time"
iget-wide v4, p0, Lcom/instagram/common/w/a;->f:J
invoke-virtual {v2, v3, v4, v5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "current_time"
invoke-virtual {v2, v3, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "elapsed_time"
iget-wide v4, p0, Lcom/instagram/common/w/a;->f:J
sub-long/2addr v0, v4
invoke-virtual {v2, v3, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
:try_end_26
.catchall {:try_start_1 .. :try_end_26} :catchall_29
move-result-object v0
monitor-exit p0
return-object v0
:catchall_29
move-exception v0
monitor-exit p0
throw v0
.end method
.method public static declared-synchronized a(Ljava/lang/String;)Lcom/instagram/common/w/a;
.registers 4
const-class v1, Lcom/instagram/common/w/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/common/w/a;->a:Ljava/util/HashMap;
invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/w/a;
:try_end_b
.catchall {:try_start_3 .. :try_end_b} :catchall_1a
if-eqz v0, :cond_f
:goto_d
monitor-exit v1
return-object v0
:cond_f
:try_start_f
new-instance v0, Lcom/instagram/common/w/a;
invoke-direct {v0, p0}, Lcom/instagram/common/w/a;-><init>(Ljava/lang/String;)V
sget-object v2, Lcom/instagram/common/w/a;->a:Ljava/util/HashMap;
invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_19
.catchall {:try_start_f .. :try_end_19} :catchall_1a
goto :goto_d
:catchall_1a
move-exception v0
monitor-exit v1
throw v0
.end method
.method private declared-synchronized b()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/common/w/a;->e:Ljava/lang/String;
if-nez v0, :cond_3f
iget-object v0, p0, Lcom/instagram/common/w/a;->b:Lcom/instagram/common/r/c;
invoke-virtual {v0}, Lcom/instagram/common/r/c;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/w/a;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/common/w/a;->c:Lcom/instagram/common/r/b;
invoke-virtual {v0}, Lcom/instagram/common/r/b;->a()Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/common/w/a;->f:J
iget-object v0, p0, Lcom/instagram/common/w/a;->e:Ljava/lang/String;
if-nez v0, :cond_3f
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v0
invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/w/a;->e:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/common/w/a;->f:J
iget-object v0, p0, Lcom/instagram/common/w/a;->b:Lcom/instagram/common/r/c;
iget-object v1, p0, Lcom/instagram/common/w/a;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/common/r/c;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/common/w/a;->c:Lcom/instagram/common/r/b;
iget-wide v1, p0, Lcom/instagram/common/w/a;->f:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/common/r/b;->a(Ljava/lang/Long;)V
:cond_3f
:try_end_3f
.catchall {:try_start_1 .. :try_end_3f} :catchall_41
monitor-exit p0
return-void
:catchall_41
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/common/w/a;->b:Lcom/instagram/common/r/c;
invoke-virtual {v0}, Lcom/instagram/common/r/c;->b()V
iget-object v0, p0, Lcom/instagram/common/w/a;->c:Lcom/instagram/common/r/b;
invoke-virtual {v0}, Lcom/instagram/common/r/b;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/common/w/a;->e:Ljava/lang/String;
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_10
monitor-exit p0
return-void
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final b(Ljava/lang/String;)Lcom/instagram/common/analytics/b;
.registers 4
new-instance v0, Lcom/instagram/common/analytics/b;
iget-object v1, p0, Lcom/instagram/common/w/a;->d:Lcom/instagram/common/analytics/e;
invoke-direct {v0, p1, v1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
invoke-direct {p0, v0}, Lcom/instagram/common/w/a;->a(Lcom/instagram/common/analytics/b;)Lcom/instagram/common/analytics/b;
move-result-object v0
return-object v0
.end method