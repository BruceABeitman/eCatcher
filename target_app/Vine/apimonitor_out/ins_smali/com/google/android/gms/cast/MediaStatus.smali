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
.field private AG:J
.field private AH:D
.field private AI:I
.field private AJ:I
.field private AK:J
.field private AL:J
.field private AM:D
.field private AN:Z
.field private AO:[J
.field private Ax:Lorg/json/JSONObject;
.field private Ay:Lcom/google/android/gms/cast/MediaInfo;
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/MediaStatus;->a(Lorg/json/JSONObject;I)I
return-void
.end method
.method public a(Lorg/json/JSONObject;I)I
.registers 14
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v2, 0x0
const/4 v1, 0x1
const-string v0, "mediaSessionId"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v7
iget-wide v9, p0, Lcom/google/android/gms/cast/MediaStatus;->AG:J
cmp-long v0, v7, v9
if-eqz v0, :cond_1a0
iput-wide v7, p0, Lcom/google/android/gms/cast/MediaStatus;->AG:J
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
if-eqz v7, :cond_f4
move v3, v1
:goto_2b
iget v7, p0, Lcom/google/android/gms/cast/MediaStatus;->AI:I
if-eq v3, v7, :cond_33
iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AI:I
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
if-eqz v7, :cond_115
:goto_4b
iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AJ:I
if-eq v4, v3, :cond_53
iput v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AJ:I
or-int/lit8 v0, v0, 0x2
:cond_53
const-string v3, "playbackRate"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_6b
const-string v3, "playbackRate"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v3
iget-wide v5, p0, Lcom/google/android/gms/cast/MediaStatus;->AH:D
cmpl-double v5, v5, v3
if-eqz v5, :cond_6b
iput-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AH:D
or-int/lit8 v0, v0, 0x2
:cond_6b
const-string v3, "currentTime"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_8b
and-int/lit8 v3, p2, 0x2
if-nez v3, :cond_8b
const-string v3, "currentTime"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v3
invoke-static {v3, v4}, Lcom/google/android/gms/internal/gj;->b(D)J
move-result-wide v3
iget-wide v5, p0, Lcom/google/android/gms/cast/MediaStatus;->AK:J
cmp-long v5, v3, v5
if-eqz v5, :cond_8b
iput-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AK:J
or-int/lit8 v0, v0, 0x2
:cond_8b
const-string v3, "supportedMediaCommands"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_a3
const-string v3, "supportedMediaCommands"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v3
iget-wide v5, p0, Lcom/google/android/gms/cast/MediaStatus;->AL:J
cmp-long v5, v3, v5
if-eqz v5, :cond_a3
iput-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AL:J
or-int/lit8 v0, v0, 0x2
:cond_a3
const-string v3, "volume"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_d3
and-int/lit8 v3, p2, 0x1
if-nez v3, :cond_d3
const-string v3, "volume"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v3
const-string v4, "level"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v4
iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->AM:D
cmpl-double v6, v4, v6
if-eqz v6, :cond_c5
iput-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AM:D
or-int/lit8 v0, v0, 0x2
:cond_c5
const-string v4, "muted"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v3
iget-boolean v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AN:Z
if-eq v3, v4, :cond_d3
iput-boolean v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AN:Z
or-int/lit8 v0, v0, 0x2
:cond_d3
const/4 v3, 0x0
const-string v4, "activeTrackIds"
invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_18f
const-string v3, "activeTrackIds"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v6
new-array v3, v6, [J
move v4, v2
:goto_e9
if-ge v4, v6, :cond_136
invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getLong(I)J
move-result-wide v7
aput-wide v7, v3, v4
add-int/lit8 v4, v4, 0x1
goto :goto_e9
:cond_f4
const-string v7, "PLAYING"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_ff
move v3, v4
goto/16 :goto_2b
:cond_ff
const-string v7, "PAUSED"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_10a
move v3, v5
goto/16 :goto_2b
:cond_10a
const-string v7, "BUFFERING"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_19d
move v3, v6
goto/16 :goto_2b
:cond_115
const-string v4, "INTERRUPTED"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_120
move v4, v5
goto/16 :goto_4b
:cond_120
const-string v4, "FINISHED"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_12b
move v4, v1
goto/16 :goto_4b
:cond_12b
const-string v4, "ERROR"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_19a
move v4, v6
goto/16 :goto_4b
:cond_136
iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AO:[J
if-nez v4, :cond_17a
:cond_13a
:goto_13a
if-eqz v1, :cond_13e
iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->AO:[J
:cond_13e
move v2, v1
move-object v1, v3
:goto_140
if-eqz v2, :cond_146
iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->AO:[J
or-int/lit8 v0, v0, 0x2
:cond_146
const-string v1, "customData"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_158
const-string v1, "customData"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->Ax:Lorg/json/JSONObject;
or-int/lit8 v0, v0, 0x2
:cond_158
const-string v1, "media"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_179
const-string v1, "media"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
new-instance v2, Lcom/google/android/gms/cast/MediaInfo;
invoke-direct {v2, v1}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V
iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->Ay:Lcom/google/android/gms/cast/MediaInfo;
or-int/lit8 v0, v0, 0x2
const-string v2, "metadata"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_179
or-int/lit8 v0, v0, 0x4
:cond_179
return v0
:cond_17a
iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AO:[J
array-length v4, v4
if-ne v4, v6, :cond_13a
move v4, v2
:goto_180
if-ge v4, v6, :cond_198
iget-object v5, p0, Lcom/google/android/gms/cast/MediaStatus;->AO:[J
aget-wide v7, v5, v4
aget-wide v9, v3, v4
cmp-long v5, v7, v9
if-nez v5, :cond_13a
add-int/lit8 v4, v4, 0x1
goto :goto_180
:cond_18f
iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->AO:[J
if-eqz v4, :cond_196
move v2, v1
move-object v1, v3
goto :goto_140
:cond_196
move-object v1, v3
goto :goto_140
:cond_198
move v1, v2
goto :goto_13a
:cond_19a
move v4, v2
goto/16 :goto_4b
:cond_19d
move v3, v2
goto/16 :goto_2b
:cond_1a0
move v0, v2
goto/16 :goto_14
.end method
.method public dV()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AG:J
return-wide v0
.end method
.method public getActiveTrackIds()[J
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AO:[J
return-object v0
.end method
.method public getCustomData()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->Ax:Lorg/json/JSONObject;
return-object v0
.end method
.method public getIdleReason()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AJ:I
return v0
.end method
.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->Ay:Lcom/google/android/gms/cast/MediaInfo;
return-object v0
.end method
.method public getPlaybackRate()D
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AH:D
return-wide v0
.end method
.method public getPlayerState()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AI:I
return v0
.end method
.method public getStreamPosition()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AK:J
return-wide v0
.end method
.method public getStreamVolume()D
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AM:D
return-wide v0
.end method
.method public isMediaCommandSupported(J)Z
.registers 7
iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AL:J
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
.method public isMute()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->AN:Z
return v0
.end method