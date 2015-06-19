.class  Lcom/android/volley/VolleyLog$MarkerLog;
.super Ljava/lang/Object;
.source "VolleyLog.java"
.field public static final ENABLED:Z
.field private static final MIN_DURATION_FOR_LOGGING_MS:J
.field private mFinished:Z
.field private final mMarkers:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z
sput-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z
return-void
.end method
.method private getTotalDuration()J
.registers 7
iget-object v4, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
if-nez v4, :cond_b
const-wide/16 v4, 0x0
:goto_a
return-wide v4
:cond_b
iget-object v4, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;
const/4 v5, 0x0
invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/android/volley/VolleyLog$MarkerLog$Marker;
iget-wide v0, v4, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J
iget-object v4, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;
iget-object v5, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
add-int/lit8 v5, v5, -0x1
invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/android/volley/VolleyLog$MarkerLog$Marker;
iget-wide v2, v4, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J
sub-long v4, v2, v0
goto :goto_a
.end method
.method public declared-synchronized add(Ljava/lang/String;J)V
.registers 11
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z
if-eqz v0, :cond_11
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "Marker added to finished log"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_e
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_e
move-exception v0
monitor-exit p0
throw v0
:cond_11
:try_start_11
iget-object v6, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;
new-instance v0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v4
move-object v1, p1
move-wide v2, p2
invoke-direct/range {v0 .. v5}, Lcom/android/volley/VolleyLog$MarkerLog$Marker;-><init>(Ljava/lang/String;JJ)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_21
.catchall {:try_start_11 .. :try_end_21} :catchall_e
monitor-exit p0
return-void
.end method
.method protected finalize()V
.registers 3
iget-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z
if-nez v0, :cond_13
const-string/jumbo v0, "Request on the loose"
invoke-virtual {p0, v0}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V
const-string/jumbo v0, "Marker log finalized without finish() - uncaught exit point for request"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_13
return-void
.end method
.method public declared-synchronized finish(Ljava/lang/String;)V
.registers 15
monitor-enter p0
const/4 v7, 0x1
:try_start_2
iput-boolean v7, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z
invoke-direct {p0}, Lcom/android/volley/VolleyLog$MarkerLog;->getTotalDuration()J
:try_end_7
.catchall {:try_start_2 .. :try_end_7} :catchall_64
move-result-wide v0
const-wide/16 v7, 0x0
cmp-long v7, v0, v7
if-gtz v7, :cond_10
:cond_e
monitor-exit p0
return-void
:cond_10
:try_start_10
iget-object v7, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;
const/4 v8, 0x0
invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/android/volley/VolleyLog$MarkerLog$Marker;
iget-wide v3, v7, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J
const-string/jumbo v7, "(%-4d ms) %s"
const/4 v8, 0x2
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v10
aput-object v10, v8, v9
const/4 v9, 0x1
aput-object p1, v8, v9
invoke-static {v7, v8}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v7, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_34
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_e
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;
iget-wide v5, v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J
const-string/jumbo v8, "(+%-4d) [%2d] %s"
const/4 v9, 0x3
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
sub-long v11, v5, v3
invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x1
iget-wide v11, v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->thread:J
invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x2
iget-object v11, v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->name:Ljava/lang/String;
aput-object v11, v9, v10
invoke-static {v8, v9}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_62
.catchall {:try_start_10 .. :try_end_62} :catchall_64
move-wide v3, v5
goto :goto_34
:catchall_64
move-exception v7
monitor-exit p0
throw v7
.end method