.class public Lcom/google/android/gms/cast/RemoteMediaPlayer;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;
.field public static final RESUME_STATE_PAUSE:I = 0x2
.field public static final RESUME_STATE_PLAY:I = 0x1
.field public static final RESUME_STATE_UNCHANGED:I = 0x0
.field public static final STATUS_CANCELED:I = 0x2
.field public static final STATUS_FAILED:I = 0x1
.field public static final STATUS_REPLACED:I = 0x4
.field public static final STATUS_SUCCEEDED:I = 0x0
.field public static final STATUS_TIMED_OUT:I = 0x3
.field private final mg:Ljava/lang/Object;
.field private final xg:Lcom/google/android/gms/internal/dv;
.field private final xh:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
.field private xi:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;
.field private xj:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->mg:Ljava/lang/Object;
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
iput-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xh:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
iput-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xg:Lcom/google/android/gms/internal/dv;
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xg:Lcom/google/android/gms/internal/dv;
iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xh:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dv;->a(Lcom/google/android/gms/internal/dw;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->onStatusUpdated()V
return-void
.end method
.method static synthetic b(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->onMetadataUpdated()V
return-void
.end method
.method static synthetic c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->mg:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xh:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
return-object v0
.end method
.method static synthetic e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/dv;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xg:Lcom/google/android/gms/internal/dv;
return-object v0
.end method
.method private onMetadataUpdated()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xi:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xi:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;
invoke-interface {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;->onMetadataUpdated()V
:cond_9
return-void
.end method
.method private onStatusUpdated()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xj:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xj:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;
invoke-interface {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;->onStatusUpdated()V
:cond_9
return-void
.end method
.method public getApproximateStreamPosition()J
.registers 5
iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->mg:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xg:Lcom/google/android/gms/internal/dv;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->getApproximateStreamPosition()J
move-result-wide v2
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return-wide v2
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
.registers 3
iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->mg:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xg:Lcom/google/android/gms/internal/dv;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
move-result-object v0
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
.registers 3
iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->mg:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xg:Lcom/google/android/gms/internal/dv;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
move-result-object v0
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public getNamespace()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xg:Lcom/google/android/gms/internal/dv;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->getNamespace()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getStreamDuration()J
.registers 5
iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->mg:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xg:Lcom/google/android/gms/internal/dv;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->getStreamDuration()J
move-result-wide v2
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return-wide v2
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/common/api/PendingResult;
.registers 10
const/4 v3, 0x1
const-wide/16 v4, 0x0
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;Z)Lcom/google/android/gms/common/api/PendingResult;
.registers 11
const-wide/16 v4, 0x0
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJ)Lcom/google/android/gms/common/api/PendingResult;
.registers 13
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move-wide v4, p4
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.registers 15
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move v4, p3
move-wide v5, p4
move-object v7, p6
invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xg:Lcom/google/android/gms/internal/dv;
invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/dv;->P(Ljava/lang/String;)V
return-void
.end method
.method public pause(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->pause(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public pause(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$3;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$3;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public play(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->play(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public play(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$5;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$5;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public seek(Lcom/google/android/gms/common/api/GoogleApiClient;J)Lcom/google/android/gms/common/api/PendingResult;
.registers 10
const/4 v4, 0x0
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-wide v2, p2
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->seek(Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public seek(Lcom/google/android/gms/common/api/GoogleApiClient;JI)Lcom/google/android/gms/common/api/PendingResult;
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-wide v2, p2
move v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->seek(Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public seek(Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.registers 13
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;
move-object v1, p0
move-object v2, p1
move-wide v3, p2
move v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public setOnMetadataUpdatedListener(Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xi:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;
return-void
.end method
.method public setOnStatusUpdatedListener(Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->xj:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;
return-void
.end method
.method public setStreamMute(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setStreamMute(Lcom/google/android/gms/common/api/GoogleApiClient;ZLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public setStreamMute(Lcom/google/android/gms/common/api/GoogleApiClient;ZLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;ZLorg/json/JSONObject;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public setStreamVolume(Lcom/google/android/gms/common/api/GoogleApiClient;D)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setStreamVolume(Lcom/google/android/gms/common/api/GoogleApiClient;DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public setStreamVolume(Lcom/google/android/gms/common/api/GoogleApiClient;DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.registers 11
invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z
move-result v0
if-nez v0, :cond_c
invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z
move-result v0
if-eqz v0, :cond_21
:cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Volume cannot be "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;
move-object v1, p0
move-object v2, p1
move-wide v3, p2
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;DLorg/json/JSONObject;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public stop(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->stop(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public stop(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method