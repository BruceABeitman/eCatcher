.class public final Lcom/spotify/mobile/android/util/ClientEventFactory;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
.registers 4
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_c
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
:goto_b
return-object v0
:cond_c
const-string v0, "offline_mode"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bs:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_b
:cond_17
const-string v0, "private_session"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bt:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_b
:cond_22
const-string v0, "broadcast_play_state"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bj:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_b
:cond_2d
const-string v0, "download_over_3g"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bk:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_b
:cond_38
const-string v0, "download_quality"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_43
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bl:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_b
:cond_43
const-string v0, "stream_quality"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4e
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bw:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_b
:cond_4e
const-string v0, "facebook_connected"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_59
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bm:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_b
:cond_59
const-string v0, "post_to_facebook"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_64
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bu:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_b
:cond_64
const-string v0, "seconds_to_offline_expiry"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6f
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bv:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_b
:cond_6f
const-string v0, "lastfm_username"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7a
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bq:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_b
:cond_7a
const-string v0, "lastfm_password"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_85
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->br:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_b
:cond_85
const-string v0, "gapless"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_91
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bp:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto/16 :goto_b
:cond_91
const-string v0, "crossfade"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9d
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bn:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto/16 :goto_b
:cond_9d
const-string v0, "crossfade_time_seconds"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a9
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bo:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto/16 :goto_b
:cond_a9
const-string v0, "ap"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b5
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bi:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto/16 :goto_b
:cond_b5
new-instance v0, Lcom/spotify/mobile/android/util/ClientEventFactory$NoMatchingSettingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "not mapped to a "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-class v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/ClientEventFactory$NoMatchingSettingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static a(Landroid/net/Uri;J)Lcom/spotify/mobile/android/util/ClientEvent;
.registers 6
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aw:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v1, "context_uri"
invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "row_id"
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
return-object v0
.end method
.method public static a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
.registers 7
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v0, v1, p1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
if-eqz p2, :cond_e
const-string v1, "target_uri"
invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
:cond_e
if-eqz p3, :cond_19
const-string v1, "index"
invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
:cond_19
const-string v1, "section"
invoke-virtual {v0, v1, p0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
return-object v0
.end method
.method public static b(Landroid/net/Uri;J)Lcom/spotify/mobile/android/util/ClientEvent;
.registers 6
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ax:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v1, "context_uri"
invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "row_id"
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
return-object v0
.end method