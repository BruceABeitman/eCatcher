.class public final Lcom/google/android/gms/cast/MediaStatus;
.super Ljava/lang/Object;
.field public static final COMMAND_PAUSE:J = 0x1L
.field public static final COMMAND_SEEK:J = 0x2L
.field public static final COMMAND_SET_VOLUME:J = 0x4L
.field public static final COMMAND_SKIP_BACKWARD:J = 0x20L
.field public static final COMMAND_SKIP_FORWARD:J = 0x10L
.field public static final COMMAND_TOGGLE_MUTE:J = 0x8L
.field public static final IDLE_REASON_CANCELED:I = 0x2
.field public static final IDLE_REASON_ERROR:I = 0x4
.field public static final IDLE_REASON_FINISHED:I = 0x1
.field public static final IDLE_REASON_INTERRUPTED:I = 0x3
.field public static final IDLE_REASON_NONE:I = 0x0
.field public static final PLAYER_STATE_BUFFERING:I = 0x4
.field public static final PLAYER_STATE_IDLE:I = 0x1
.field public static final PLAYER_STATE_PAUSED:I = 0x3
.field public static final PLAYER_STATE_PLAYING:I = 0x2
.field public static final PLAYER_STATE_UNKNOWN:I
.field private wP:Lorg/json/JSONObject;
.field private wQ:Lcom/google/android/gms/cast/MediaInfo;
.field private wY:J
.field private wZ:D
.field private xa:I
.field private xb:I
.field private xc:J
.field private xd:J
.field private xe:D
.field private xf:Z
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/MediaStatus;->a(Lorg/json/JSONObject;I)I
return-void
.end method
.method public final a(Lorg/json/JSONObject;I)I
.registers 14
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v2, 0x0
const/4 v1, 0x1
const-string v0, "mediaSessionId"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v7
iget-wide v9, p0, Lcom/google/android/gms/cast/MediaStatus;->wY:J
cmp-long v0, v7, v9
if-eqz v0, :cond_14f
iput-wide v7, p0, Lcom/google/android/gms/cast/MediaStatus;->wY:J
move v0, v1
:goto_14
const-string v3, "playerState"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_53
const-string v3, "playerState"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v7, "IDLE"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_107
move v3, v1
:goto_2b
iget v7, p0, Lcom/google/android/gms/cast/MediaStatus;->xa:I
if-eq v3, v7, :cond_33
iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->xa:I
or-int/lit8 v0, v0, 0x2
:cond_33
if-ne v3, v1, :cond_53
const-string v3, "idleReason"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_53
const-string v3, "idleReason"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v7, "CANCELLED"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_128
:goto_4b
iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->xb:I
if-eq v4, v1, :cond_53
iput v4, p0, Lcom/google/android/gms/cast/MediaStatus;->xb:I
or-int/lit8 v0, v0, 0x2
:cond_53
const-string v1, "playbackRate"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_6b
const-string v1, "playbackRate"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v1
iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->wZ:D
cmpl-double v3, v3, v1
if-eqz v3, :cond_6b
iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->wZ:D
or-int/lit8 v0, v0, 0x2
:cond_6b
const-string v1, "currentTime"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_8b
and-int/lit8 v1, p2, 0x2
if-nez v1, :cond_8b
const-string v1, "currentTime"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v1
invoke-static {v1, v2}, Lcom/google/android/gms/internal/dr;->b(D)J
move-result-wide v1
iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->xc:J
cmp-long v3, v1, v3
if-eqz v3, :cond_8b
iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->xc:J
or-int/lit8 v0, v0, 0x2
:cond_8b
const-string v1, "supportedMediaCommands"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a3
const-string v1, "supportedMediaCommands"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v1
iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->xd:J
cmp-long v3, v1, v3
if-eqz v3, :cond_a3
iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->xd:J
or-int/lit8 v0, v0, 0x2
:cond_a3
const-string v1, "volume"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_d3
and-int/lit8 v1, p2, 0x1
if-nez v1, :cond_d3
const-string v1, "volume"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "level"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v2
iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->xe:D
cmpl-double v4, v2, v4
if-eqz v4, :cond_c5
iput-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->xe:D
or-int/lit8 v0, v0, 0x2
:cond_c5
const-string v2, "muted"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v1
iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaStatus;->xf:Z
if-eq v1, v2, :cond_d3
iput-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->xf:Z
or-int/lit8 v0, v0, 0x2
:cond_d3
const-string v1, "customData"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_e5
const-string v1, "customData"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->wP:Lorg/json/JSONObject;
or-int/lit8 v0, v0, 0x2
:cond_e5
const-string v1, "media"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_106
const-string v1, "media"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
new-instance v2, Lcom/google/android/gms/cast/MediaInfo;
invoke-direct {v2, v1}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V
iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->wQ:Lcom/google/android/gms/cast/MediaInfo;
or-int/lit8 v0, v0, 0x2
const-string v2, "metadata"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_106
or-int/lit8 v0, v0, 0x4
:cond_106
return v0
:cond_107
const-string v7, "PLAYING"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_112
move v3, v4
goto/16 :goto_2b
:cond_112
const-string v7, "PAUSED"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_11d
move v3, v5
goto/16 :goto_2b
:cond_11d
const-string v7, "BUFFERING"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_14c
move v3, v6
goto/16 :goto_2b
:cond_128
const-string v4, "INTERRUPTED"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_133
move v4, v5
goto/16 :goto_4b
:cond_133
const-string v4, "FINISHED"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_13e
move v4, v1
goto/16 :goto_4b
:cond_13e
const-string v1, "ERROR"
invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_149
move v4, v6
goto/16 :goto_4b
:cond_149
move v4, v2
goto/16 :goto_4b
:cond_14c
move v3, v2
goto/16 :goto_2b
:cond_14f
move v0, v2
goto/16 :goto_14
.end method
.method public final cU()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->wY:J
return-wide v0
.end method
.method public final getCustomData()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->wP:Lorg/json/JSONObject;
return-object v0
.end method
.method public final getIdleReason()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->xb:I
return v0
.end method
.method public final getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->wQ:Lcom/google/android/gms/cast/MediaInfo;
return-object v0
.end method
.method public final getPlaybackRate()D
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->wZ:D
return-wide v0
.end method
.method public final getPlayerState()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->xa:I
return v0
.end method
.method public final getStreamPosition()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->xc:J
return-wide v0
.end method
.method public final getStreamVolume()D
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->xe:D
return-wide v0
.end method
.method public final isMediaCommandSupported(J)Z
.registers 7
iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->xd:J
and-long/2addr v0, p1
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final isMute()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->xf:Z
return v0
.end method