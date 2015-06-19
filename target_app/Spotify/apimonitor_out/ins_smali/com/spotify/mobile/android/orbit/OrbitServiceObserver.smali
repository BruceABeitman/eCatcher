.class public abstract Lcom/spotify/mobile/android/orbit/OrbitServiceObserver;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final FEATURE_ADD_TO_QUEUE:I = 0x1
.field public static final FEATURE_IMPROVE_RADIO_AS_ANONYMOUS_USER:I = 0x5
.field public static final FEATURE_SOCIAL_FOLLOW_AS_ANONYMOUS_USER:I = 0x4
.field public static final FEATURE_TOGGLE_SHUFFLE:I = 0x2
.field public static final FEATURE_UNKNOWN:I = 0x0
.field public static final FEATURE_YOUR_MUSIC_AS_ANONYMOUS_USER:I = 0x3
.field public static final PLAYBACK_ERROR_BANNED_BY_ARTIST:I = 0x13
.field public static final PLAYBACK_ERROR_CAPPING_REACHED:I = 0xe
.field public static final PLAYBACK_ERROR_COMMERCIAL_IS_PLAYING:I = 0xa
.field public static final PLAYBACK_ERROR_DMCA_NO_SKIPS_REMAINING:I = 0xc
.field public static final PLAYBACK_ERROR_DMCA_PREMIUM_ONLY:I = 0x1
.field public static final PLAYBACK_ERROR_DMCA_PREMIUM_ONLY_IS_OFFLINE:I = 0x4
.field public static final PLAYBACK_ERROR_LOCAL_TRACK_UNSYNCED:I = 0x9
.field public static final PLAYBACK_ERROR_NEED_ONLINE_IN_OFFLINE_MODE:I = 0x5
.field public static final PLAYBACK_ERROR_NEED_ONLINE_NO_CONNECTION:I = 0x3
.field public static final PLAYBACK_ERROR_NONE:I = 0x0
.field public static final PLAYBACK_ERROR_NOT_IN_REGION:I = 0x12
.field public static final PLAYBACK_ERROR_NOT_IN_REGION_IS_OFFLINE:I = 0x7
.field public static final PLAYBACK_ERROR_PREMIUM_ONLY:I = 0x2
.field public static final PLAYBACK_ERROR_SHUFFLE_NO_SKIPS_REMAINING:I = 0xf
.field public static final PLAYBACK_ERROR_SHUFFLE_PREMIUM_ONLY:I = 0x10
.field public static final PLAYBACK_ERROR_SHUFFLE_PREMIUM_ONLY_IS_OFFLINE:I = 0x11
.field public static final PLAYBACK_ERROR_UNABLE_TO_START_RADIO:I = 0xb
.field public static final PLAYBACK_ERROR_UNAVAILABLE:I = 0x6
.field public static final PLAYBACK_ERROR_UNAVAILABLE_IS_OFFLINE:I = 0x8
.field public static final PLAYBACK_ERROR_UNKNOWN:I = 0x63
.field public static final PLAYBACK_ERROR_WIFI_ONLY:I = 0xd
.field public static final SOCIAL_ERROR_FAILED_TO_CONNECT:I = 0x1
.field public static final SOCIAL_ERROR_NONE:I = 0x0
.field public static final SOCIAL_ERROR_PERMISSIONS:I = 0x5
.field public static final SOCIAL_ERROR_SERVICE_CONNECT_NOT_PERMITTED:I = 0x7
.field public static final SOCIAL_ERROR_TOKEN_EXPIRED:I = 0x6
.field public static final SOCIAL_ERROR_TRANSFER_AND_REMOVE_FAILED:I = 0x4
.field public static final SOCIAL_ERROR_USER_DATA_FAIL:I = 0x2
.field public static final SOCIAL_ERROR_USER_NOT_SOCIAL:I = 0x3
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getPlaybackErrorAsClientEvent(I)Lcom/spotify/mobile/android/util/ClientEvent;
.registers 4
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->d:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
sparse-switch p0, :sswitch_data_5e
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unhandled playback error: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
:goto_17
new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->b:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
return-object v1
:sswitch_1f
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_22
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->e:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_25
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->f:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_28
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->g:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_2b
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->h:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_2e
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->i:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_31
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->j:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_34
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->k:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_37
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->l:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_3a
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->m:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_3d
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->n:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_40
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->o:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_43
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->p:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_46
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->q:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_49
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->r:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_4c
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->s:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_4f
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->t:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_52
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->u:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_55
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->v:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_58
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->w:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_5b
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->d:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
goto :goto_17
:sswitch_data_5e
.sparse-switch
0x0 -> :sswitch_1f
0x1 -> :sswitch_22
0x2 -> :sswitch_25
0x3 -> :sswitch_28
0x4 -> :sswitch_2b
0x5 -> :sswitch_2e
0x6 -> :sswitch_31
0x7 -> :sswitch_34
0x8 -> :sswitch_37
0x9 -> :sswitch_3a
0xa -> :sswitch_3d
0xb -> :sswitch_40
0xc -> :sswitch_43
0xd -> :sswitch_46
0xe -> :sswitch_49
0xf -> :sswitch_4c
0x10 -> :sswitch_4f
0x11 -> :sswitch_52
0x12 -> :sswitch_55
0x13 -> :sswitch_58
0x63 -> :sswitch_5b
.end sparse-switch
.end method
.method public static getSocialErrorAsString(I)Ljava/lang/String;
.registers 3
packed-switch p0, :pswitch_data_2c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unknown error: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:pswitch_13
const-string v0, "kSocialErrorNone"
goto :goto_12
:pswitch_16
const-string v0, "kSocialErrorFailedToConnect"
goto :goto_12
:pswitch_19
const-string v0, "kSocialErrorUserDataFail"
goto :goto_12
:pswitch_1c
const-string v0, "kSocialErrorUserNotSocial"
goto :goto_12
:pswitch_1f
const-string v0, "kSocialErrorTransferAndRemoveFailed"
goto :goto_12
:pswitch_22
const-string v0, "kSocialErrorPermissions"
goto :goto_12
:pswitch_25
const-string v0, "kSocialErrorTokenExpired"
goto :goto_12
:pswitch_28
const-string v0, "kSocialErrorServiceConnectNotPermitted"
goto :goto_12
nop
:pswitch_data_2c
.packed-switch 0x0
:pswitch_13
:pswitch_16
:pswitch_19
:pswitch_1c
:pswitch_1f
:pswitch_22
:pswitch_25
:pswitch_28
.end packed-switch
.end method
.method public abstract onConnectionError(I)V
.end method
.method public abstract onFeatureError(II)V
.end method
.method public abstract onIncognitoModeDisabledByTimer()V
.end method
.method public abstract onLastFmAuthenticationError()V
.end method
.method public abstract onLoginError(I)V
.end method
.method public abstract onOfflineSyncError(I)V
.end method
.method public abstract onOrbitStarted()V
.end method
.method public abstract onOrbitStopped()V
.end method
.method public abstract onPlayTokenLost()V
.end method
.method public abstract onPlaybackError(ILjava/lang/String;)V
.end method
.method public abstract onSessionIdle(Z)V
.end method
.method public abstract onSocialError(ILjava/lang/String;)V
.end method
.method public abstract onSyncActive(Z)V
.end method
.method public abstract onUpdateAvailable(Ljava/lang/String;)V
.end method