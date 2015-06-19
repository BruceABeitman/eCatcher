.class public final Lcom/lenovo/lps/reaper/sdk/b/i;
.super Ljava/lang/Object;
.field private static b:Lcom/lenovo/lps/reaper/sdk/b/i;
.field private a:Ljava/util/ArrayList;
.field private c:Landroid/app/Activity;
.field private d:I
.field private e:I
.field private f:J
.field private g:Z
.field private h:Ljava/util/Map;
.field private i:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/lenovo/lps/reaper/sdk/b/i;
invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/b/i;-><init>()V
sput-object v0, Lcom/lenovo/lps/reaper/sdk/b/i;->b:Lcom/lenovo/lps/reaper/sdk/b/i;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->a:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->g:Z
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->h:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->i:Ljava/util/Map;
return-void
.end method
.method public static a()Lcom/lenovo/lps/reaper/sdk/b/i;
.registers 1
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/i;->b:Lcom/lenovo/lps/reaper/sdk/b/i;
return-object v0
.end method
.method private static b(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/b/d;
.registers 9
const-wide/16 v6, -0x1
const/4 v1, 0x0
const/4 v2, -0x1
const-string/jumbo v0, "activity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager;
invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_15
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_77
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;
iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_15
iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I
:goto_2f
if-ne v0, v2, :cond_3c
const-string/jumbo v0, "ReaperAppManager"
const-string/jumbo v2, "not found this process."
invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
:goto_3b
return-object v0
:cond_3c
const-string/jumbo v2, "ReaperAppManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "uid: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J
move-result-wide v2
invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
move-result-wide v4
cmp-long v0, v2, v6
if-nez v0, :cond_66
cmp-long v0, v4, v6
if-eqz v0, :cond_6c
:cond_66
new-instance v0, Lcom/lenovo/lps/reaper/sdk/b/d;
invoke-direct {v0, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/b/d;-><init>(JJ)V
goto :goto_3b
:cond_6c
const-string/jumbo v0, "ReaperAppManager"
const-string/jumbo v2, "get traffic stats error."
invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
goto :goto_3b
:cond_77
move v0, v2
goto :goto_2f
.end method
.method public final a(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/b/d;
.registers 14
const-wide/16 v10, 0x0
const-string/jumbo v0, "traffic"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
const-string/jumbo v0, "traffic_rx"
invoke-interface {v1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v2
const-string/jumbo v0, "traffic_tx"
invoke-interface {v1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v4
const-string/jumbo v0, "ReaperAppManager"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "lastRxTrafficNumber: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v0, v6}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "ReaperAppManager"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "lastTxTrafficNumber: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v0, v6}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b/i;->b(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/b/d;
move-result-object v6
if-nez v6, :cond_54
const/4 v0, 0x0
:cond_53
:goto_53
return-object v0
:cond_54
const-string/jumbo v0, "ReaperAppManager"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "curRxTrafficNumber: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/b/d;->a()J
move-result-wide v8
invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v0, v7}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "ReaperAppManager"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "curTxTrafficNumber: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/b/d;->b()J
move-result-wide v8
invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v0, v7}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/lenovo/lps/reaper/sdk/b/d;
invoke-direct {v0, v10, v11, v10, v11}, Lcom/lenovo/lps/reaper/sdk/b/d;-><init>(JJ)V
invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/b/d;->a()J
move-result-wide v7
cmp-long v7, v7, v2
if-lez v7, :cond_bb
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v7
const-string/jumbo v8, "traffic_rx"
invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/b/d;->a()J
move-result-wide v9
invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v7
invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v7
if-eqz v7, :cond_e2
invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/b/d;->a()J
move-result-wide v7
sub-long v2, v7, v2
invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/b/d;->a(J)V
:goto_bb
:cond_bb
invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/b/d;->b()J
move-result-wide v2
cmp-long v2, v2, v4
if-lez v2, :cond_53
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string/jumbo v2, "traffic_tx"
invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/b/d;->b()J
move-result-wide v7
invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v1
if-eqz v1, :cond_ec
invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/b/d;->b()J
move-result-wide v1
sub-long/2addr v1, v4
invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/d;->b(J)V
goto/16 :goto_53
:cond_e2
const-string/jumbo v2, "ReaperAppManager"
const-string/jumbo v3, "put rx traffic data error"
invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_bb
:cond_ec
const-string/jumbo v1, "ReaperAppManager"
const-string/jumbo v2, "put tx traffic data error"
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_53
.end method
.method public final a(Landroid/app/Activity;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->c:Landroid/app/Activity;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_1b
:cond_8
const-string/jumbo v0, "ReaperAppManager"
const-string/jumbo v1, "invalid page name"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_11
iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->d:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->d:I
invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/b/i;->f()V
return-void
:cond_1b
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->h:Ljava/util/Map;
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_11
.end method
.method public final b(Ljava/lang/String;)J
.registers 7
const-wide/16 v1, -0x1
if-eqz p1, :cond_a
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_15
:cond_a
const-string/jumbo v0, "ReaperAppManager"
const-string/jumbo v3, "invalid page name"
invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move-wide v0, v1
:goto_14
return-wide v0
:cond_15
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->h:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-nez v0, :cond_3b
const-string/jumbo v0, "ReaperAppManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "not found resume event of this page: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move-wide v0, v1
goto :goto_14
:cond_3b
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->h:Ljava/util/Map;
const/4 v2, 0x0
invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v3
sub-long v0, v1, v3
goto :goto_14
.end method
.method public final b(Landroid/app/Activity;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->g:Z
return v0
.end method
.method public final c()Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->c:Landroid/app/Activity;
return-object v0
.end method
.method public final c(Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_12
:cond_8
const-string/jumbo v0, "ReaperAppManager"
const-string/jumbo v1, "invalid eventAction"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_11
return-void
:cond_12
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->i:Ljava/util/Map;
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_11
.end method
.method public final c(Landroid/app/Activity;)Z
.registers 3
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->d:I
return v0
.end method
.method public final d(Ljava/lang/String;)J
.registers 7
const-wide/16 v1, -0x1
if-eqz p1, :cond_a
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_15
:cond_a
const-string/jumbo v0, "ReaperAppManager"
const-string/jumbo v3, "invalid eventAction"
invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move-wide v0, v1
:goto_14
return-wide v0
:cond_15
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->i:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-nez v0, :cond_3b
const-string/jumbo v0, "ReaperAppManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "not found this begin event of this event action: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move-wide v0, v1
goto :goto_14
:cond_3b
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->i:Ljava/util/Map;
const/4 v2, 0x0
invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v3
sub-long v0, v1, v3
goto :goto_14
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->e:I
return v0
.end method
.method public final f()V
.registers 2
iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->e:I
return-void
.end method
.method public final g()Z
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/a/a;->j()I
move-result v0
int-to-long v3, v0
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v5
cmp-long v0, v5, v3
if-lez v0, :cond_2e
move v0, v1
:goto_14
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v5
iget-wide v7, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->f:J
sub-long/2addr v5, v7
cmp-long v3, v5, v3
if-lez v3, :cond_30
move v3, v1
:goto_20
if-eqz v0, :cond_32
if-eqz v3, :cond_32
const-string/jumbo v0, "ReaperAppManager"
const-string/jumbo v2, "is Time For Add Session Visits"
invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_2d
return v1
:cond_2e
move v0, v2
goto :goto_14
:cond_30
move v3, v2
goto :goto_20
:cond_32
move v1, v2
goto :goto_2d
.end method
.method public final h()V
.registers 3
const/4 v0, 0x0
iput v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->e:I
iput v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->d:I
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->f:J
return-void
.end method
.method public final i()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/i;->g:Z
return-void
.end method