.class public Lcom/rim/bbm/BbmMediaCallService;
.super Ljava/lang/Object;
.source "BbmMediaCallService.java"
.field public static final BBMV_CALLDIR_INCOMING:I = 0x1
.field public static final BBMV_CALLDIR_OUTGOING:I = 0x2
.field public static final BBMV_CALLDIR_UNKNOWN:I = 0x0
.field public static final BBMV_CALLSTATE_ACCEPTED:I = 0x2
.field public static final BBMV_CALLSTATE_CONNECTED:I = 0x3
.field public static final BBMV_CALLSTATE_DISCONNECTED:I = 0x7
.field public static final BBMV_CALLSTATE_IDLE:I = 0x0
.field public static final BBMV_CALLSTATE_INITIALIZED:I = 0x4
.field public static final BBMV_CALLSTATE_OFFERING:I = 0x1
.field public static final BBMV_CALLSTATE_PROCEEDING:I = 0x5
.field public static final BBMV_CALLSTATE_RINGBACK:I = 0x6
.field public static final BBMV_CAP_AUDIO:I = 0x2
.field public static final BBMV_CAP_BBM:I = 0x4
.field public static final BBMV_CAP_SCREENSHARING:I = 0x8
.field public static final BBMV_CAP_VIDEO:I = 0x1
.field public static final BBMV_ERRCODE_CALLING_NOT_ALLOWED:I = 0x6
.field public static final BBMV_ERRCODE_CALLING_NOT_ALLOWED_TRANSPORT:I = 0x9
.field public static final BBMV_ERRCODE_CALLING_OVER_CELL_DISABLED_BY_CARRIER:I = 0x7
.field public static final BBMV_ERRCODE_CALLING_OVER_CELL_DISABLED_BY_USER:I = 0x8
.field public static final BBMV_ERRCODE_CALLING_OVER_VCHAT_DISABLED_BY_CARRIER:I = 0x12
.field public static final BBMV_ERRCODE_CALLING_OVER_VOICECHAT_DISABLED_BY_CARRIER:I = 0x14
.field public static final BBMV_ERRCODE_CALL_DISCONNECTED:I = 0xe
.field public static final BBMV_ERRCODE_CAMERA_ERROR:I = 0xb
.field public static final BBMV_ERRCODE_INVALID_CALLID:I = 0x3
.field public static final BBMV_ERRCODE_INVALID_COMMAND:I = 0xd
.field public static final BBMV_ERRCODE_INVALID_STATE:I = 0x2
.field public static final BBMV_ERRCODE_LINE_UNAVAILABLE:I = 0x4
.field public static final BBMV_ERRCODE_NETWORK_UNAVAILABLE:I = 0x5
.field public static final BBMV_ERRCODE_NOERROR:I = 0x0
.field public static final BBMV_ERRCODE_OTHER_PHONE_CALL_FOUND:I = 0x13
.field public static final BBMV_ERRCODE_PENDING:I = 0x1
.field public static final BBMV_ERRCODE_SCREENSHARE_CAMERA_FROZEN:I = 0x15
.field public static final BBMV_ERRCODE_SERVICE_UNAVAILABLE:I = 0xc
.field public static final BBMV_ERRCODE_SYSTEM_ERROR:I = 0xa
.field public static final BBMV_ERROR_ANOTHER_OPERATION_IN_PROGRESS:I = 0x11
.field public static final BBMV_ERROR_FAILED_TO_RETRIEVE_BBID:I = 0x10
.field public static final BBMV_ERROR_FAILED_TO_SWITCH_CAMERA:I = 0xf
.field public static final BBMV_FAILREASON_AUDIO_FAILURE:I = 0x1e
.field public static final BBMV_FAILREASON_BBID_CHANGED:I = 0x1f
.field public static final BBMV_FAILREASON_CALLING_NOT_ALLOWED:I = 0x9
.field public static final BBMV_FAILREASON_CALLING_NOT_ALLOWED_TRANSPORT:I = 0xc
.field public static final BBMV_FAILREASON_CALLING_OVER_CELL_DISABLED_BY_CARRIER:I = 0xa
.field public static final BBMV_FAILREASON_CALLING_OVER_CELL_DISABLED_BY_USER:I = 0xb
.field public static final BBMV_FAILREASON_CALLING_OVER_VCHAT_DISABLED_BY_CARRIER:I = 0x20
.field public static final BBMV_FAILREASON_CALLING_OVER_VOICECHAT_DISABLED_BY_CARRIER:I = 0x24
.field public static final BBMV_FAILREASON_CAMERA_UNAVAILABLE:I = 0x7
.field public static final BBMV_FAILREASON_DECLINED:I = 0x1a
.field public static final BBMV_FAILREASON_FAILED_TO_RETRIEVE_BBID:I = 0x1c
.field public static final BBMV_FAILREASON_ICECHECK_FAILED:I = 0x2
.field public static final BBMV_FAILREASON_INVALID_REGISTRATIONSTATE:I = 0x5
.field public static final BBMV_FAILREASON_INVALID_SIPURI:I = 0x6
.field public static final BBMV_FAILREASON_KEYFRAME_NOT_ARRIVED:I = 0x23
.field public static final BBMV_FAILREASON_NETWORK_DOWNGRADED:I = 0xd
.field public static final BBMV_FAILREASON_NETWORK_ERROR:I = 0x1b
.field public static final BBMV_FAILREASON_NETWORK_UNAVAILABLE:I = 0x8
.field public static final BBMV_FAILREASON_NO_FAILURE:I = 0x0
.field public static final BBMV_FAILREASON_NO_INVITE_RESPONSE:I = 0x12
.field public static final BBMV_FAILREASON_NO_MEDIA:I = 0x11
.field public static final BBMV_FAILREASON_NO_SIPPROXY:I = 0x3
.field public static final BBMV_FAILREASON_NO_STUN_SERVER:I = 0x4
.field public static final BBMV_FAILREASON_OTHER_PHONE_CALL_FOUND:I = 0x22
.field public static final BBMV_FAILREASON_POOR_CELL_QUALITY:I = 0x1d
.field public static final BBMV_FAILREASON_POOR_NETWORK_QUALITY:I = 0x21
.field public static final BBMV_FAILREASON_SERVER_ERROR:I = 0x18
.field public static final BBMV_FAILREASON_SERVICE_NOT_AVAILABLE:I = 0x13
.field public static final BBMV_FAILREASON_SERVICE_UNAVAILABLE:I = 0x19
.field public static final BBMV_FAILREASON_SHUTDOWN_DUE_TO_POWER:I = 0x10
.field public static final BBMV_FAILREASON_SIP_PROXY_BLOCKED:I = 0x1
.field public static final BBMV_FAILREASON_TIMEOUT:I = 0x15
.field public static final BBMV_FAILREASON_USER_BLOCKED:I = 0x25
.field public static final BBMV_FAILREASON_USER_BUSY:I = 0x17
.field public static final BBMV_FAILREASON_USER_NOT_FOUND:I = 0x14
.field public static final BBMV_FAILREASON_USER_UNAVAILABLE:I = 0x16
.field public static final BBMV_FAILREASON_VIDEO_CAPTURE_FAILED:I = 0xe
.field public static final BBMV_FAILREASON_VIDEO_DECODER_FAILED:I = 0xf
.field public static final BBMV_MEDIASTATE_ACTIVE:I = 0x2
.field public static final BBMV_MEDIASTATE_INACTIVE:I = 0x1
.field public static final BBMV_MEDIASTATE_NONE:I = 0x0
.field public static final BBMV_MEDIASTATE_RECVONLY:I = 0x4
.field public static final BBMV_MEDIASTATE_SENDONLY:I = 0x3
.field public static final BBMV_REASON_NO_ANSWER_TIMEOUT:I = 0x4
.field public static final BBMV_REASON_REJECT_CALL:I = 0x1
.field public static final BBMV_REASON_REMOTE_DISCONNECT:I = 0x2
.field public static final BBMV_REASON_RINGING_TIMEOUT:I = 0x3
.field public static final BBMV_REASON_USER_HANGUP:I = 0x0
.field public static final BBMV_SERVICE_IM:I = 0x0
.field public static final BBMV_SERVICE_MAX:I = 0x3
.field public static final BBMV_SERVICE_VIDEO:I = 0x2
.field public static final BBMV_SERVICE_VOICE:I = 0x1
.field public static final BBMV_SETTING_COUNT:I = 0x1
.field public static final BBMV_SETTING_MOBILE_CALLS_ENABLED:I = 0x0
.field public static final BBMV_SOFTTYPE_ANDROID:I = 0x4
.field public static final BBMV_SOFTTYPE_BB10_AND_UP:I = 0x3
.field public static final BBMV_SOFTTYPE_BBOS_BBM_VOICE:I = 0x1
.field public static final BBMV_SOFTTYPE_IOS:I = 0x5
.field public static final BBMV_SOFTTYPE_PLAYBOOK_OS:I = 0x2
.field public static final BBMV_SOFTTYPE_UNKNOWN:I = 0x0
.field public static final BBMV_TRANSPORT_CELL:I = 0x1
.field public static final BBMV_TRANSPORT_UNKNOWN:I = 0x3
.field public static final BBMV_TRANSPORT_WIFI:I = 0x0
.field public static final BBMV_TRANSPORT_WIRED:I = 0x2
.field private static final CALL_STATE_CHANGE_EVT:I = 0x1
.field private static final INCOMING_CALL_EVT:I = 0x0
.field private static final MEDIA_STATE_CHANGE_EVT:I = 0x2
.field private static afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
.field private static mBluetoothManager:Lcom/rim/bbm/a;
.field private static mContext:Landroid/content/Context;
.field static final mHandler:Landroid/os/Handler;
.field private static mInstance:Lcom/rim/bbm/BbmMediaCallService;
.field private static mListener:Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;
.field private static mPowerLock:Landroid/os/PowerManager$WakeLock;
.field private static mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
sput-object v0, Lcom/rim/bbm/BbmMediaCallService;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/rim/bbm/BbmMediaCallService$3;
invoke-direct {v0}, Lcom/rim/bbm/BbmMediaCallService$3;-><init>()V
sput-object v0, Lcom/rim/bbm/BbmMediaCallService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000()Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;
.registers 1
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mListener:Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;
return-object v0
.end method
.method static synthetic access$200()Lcom/rim/bbm/a;
.registers 1
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mBluetoothManager:Lcom/rim/bbm/a;
return-object v0
.end method
.method private static native bbmv_answer_call(IZ)I
.end method
.method private static native bbmv_end_call(II)I
.end method
.method private static native bbmv_get_last_call_info(Lcom/rim/bbm/BbmMediaCallService$CallResultDetails;)V
.end method
.method private static native bbmv_is_service_enabled(I)Z
.end method
.method private static native bbmv_is_service_supported(I)Z
.end method
.method private static native bbmv_make_call(Ljava/lang/String;Ljava/lang/String;ZLcom/rim/bbm/BbmMediaCallService$OuputCallId;)I
.end method
.method private static native bbmv_mute_audio(IZ)I
.end method
.method private static native bbmv_set_setting(II)V
.end method
.method private static native bbmv_start(Ljava/lang/String;)Z
.end method
.method private static native bbmv_stop()Z
.end method
.method public static getInstance()Lcom/rim/bbm/BbmMediaCallService;
.registers 1
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mInstance:Lcom/rim/bbm/BbmMediaCallService;
if-nez v0, :cond_b
new-instance v0, Lcom/rim/bbm/BbmMediaCallService;
invoke-direct {v0}, Lcom/rim/bbm/BbmMediaCallService;-><init>()V
sput-object v0, Lcom/rim/bbm/BbmMediaCallService;->mInstance:Lcom/rim/bbm/BbmMediaCallService;
:cond_b
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mInstance:Lcom/rim/bbm/BbmMediaCallService;
return-object v0
.end method
.method public static onStateChange(IILjava/lang/String;Ljava/lang/String;IIIIIIIIIIJJ)V
.registers 39
const/4 v1, 0x7
move/from16 v0, p5
if-eq v0, v1, :cond_71
if-eqz p5, :cond_71
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z
move-result v1
if-nez v1, :cond_1b
if-eqz p12, :cond_16
const/4 v1, 0x3
move/from16 v0, p12
if-ne v0, v1, :cond_1b
:cond_16
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
:cond_1b
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
move-result v1
if-nez v1, :cond_28
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
:cond_28
:goto_28
const/4 v1, 0x1
move/from16 v0, p0
if-eq v0, v1, :cond_2f
if-nez p0, :cond_44
:cond_2f
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mContext:Landroid/content/Context;
sget-object v2, Lcom/rim/bbm/BbmMediaCallService;->mContext:Landroid/content/Context;
const-string v2, "audio"
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/media/AudioManager;
const/4 v2, 0x3
move/from16 v0, p5
if-ne v0, v2, :cond_8c
const/4 v2, 0x3
invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V
:goto_44
:cond_44
sget-object v20, Lcom/rim/bbm/BbmMediaCallService;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/rim/bbm/BbmMediaCallService$2;
move/from16 v2, p1
move-object/from16 v3, p2
move-object/from16 v4, p3
move/from16 v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move/from16 v9, p8
move/from16 v10, p9
move/from16 v11, p10
move/from16 v12, p11
move/from16 v13, p12
move/from16 v14, p13
move-wide/from16 v15, p14
move-wide/from16 v17, p16
move/from16 v19, p0
invoke-direct/range {v1 .. v19}, Lcom/rim/bbm/BbmMediaCallService$2;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIJJI)V
move-object/from16 v0, v20
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:cond_71
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z
move-result v1
if-eqz v1, :cond_7e
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
:cond_7e
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
move-result v1
if-eqz v1, :cond_28
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
goto :goto_28
:cond_8c
const/4 v2, 0x1
move/from16 v0, p5
if-eq v0, v2, :cond_96
const/4 v2, 0x5
move/from16 v0, p5
if-ne v0, v2, :cond_aa
:cond_96
sget-object v2, Lcom/rim/bbm/BbmMediaCallService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
const/4 v3, 0x0
const/4 v4, 0x1
invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
move-result v1
const/4 v2, 0x1
if-eq v1, v2, :cond_44
const-string v1, "Audio focus was not gained"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_44
:cond_aa
const/4 v2, 0x7
move/from16 v0, p5
if-ne v0, v2, :cond_44
invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I
move-result v2
const/4 v3, 0x3
if-ne v2, v3, :cond_ba
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V
:cond_ba
sget-object v2, Lcom/rim/bbm/BbmMediaCallService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
goto :goto_44
.end method
.method public answerCall(IZ)I
.registers 4
invoke-static {p1, p2}, Lcom/rim/bbm/BbmMediaCallService;->bbmv_answer_call(IZ)I
move-result v0
return v0
.end method
.method public enableSpeakerphone(IZ)I
.registers 6
const/4 v0, 0x0
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mContext:Landroid/content/Context;
if-eqz v1, :cond_28
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Setting speaker to "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v1, v0}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mContext:Landroid/content/Context;
const-string v1, "audio"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/AudioManager;
invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
const/4 v0, 0x1
:goto_27
return v0
:cond_28
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Ignore setting speaker to "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " as context has not been set"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-array v2, v0, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_27
.end method
.method public endCall(II)I
.registers 4
invoke-static {p1, p2}, Lcom/rim/bbm/BbmMediaCallService;->bbmv_end_call(II)I
move-result v0
return v0
.end method
.method public getLastCallInfo(Lcom/rim/bbm/BbmMediaCallService$CallResultDetails;)V
.registers 2
invoke-static {p1}, Lcom/rim/bbm/BbmMediaCallService;->bbmv_get_last_call_info(Lcom/rim/bbm/BbmMediaCallService$CallResultDetails;)V
return-void
.end method
.method public isServiceEnabled(I)Z
.registers 3
invoke-static {p1}, Lcom/rim/bbm/BbmMediaCallService;->bbmv_is_service_enabled(I)Z
move-result v0
return v0
.end method
.method public isServiceSupported(I)Z
.registers 3
invoke-static {p1}, Lcom/rim/bbm/BbmMediaCallService;->bbmv_is_service_supported(I)Z
move-result v0
return v0
.end method
.method public makeCall(Ljava/lang/String;Ljava/lang/String;Z)Lcom/rim/bbm/BbmMediaCallService$MakeCallResult;
.registers 7
new-instance v0, Lcom/rim/bbm/BbmMediaCallService$OuputCallId;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/rim/bbm/BbmMediaCallService$OuputCallId;-><init>(Lcom/rim/bbm/BbmMediaCallService$1;)V
invoke-static {p1, p2, p3, v0}, Lcom/rim/bbm/BbmMediaCallService;->bbmv_make_call(Ljava/lang/String;Ljava/lang/String;ZLcom/rim/bbm/BbmMediaCallService$OuputCallId;)I
move-result v1
new-instance v2, Lcom/rim/bbm/BbmMediaCallService$MakeCallResult;
invoke-direct {v2}, Lcom/rim/bbm/BbmMediaCallService$MakeCallResult;-><init>()V
iget v0, v0, Lcom/rim/bbm/BbmMediaCallService$OuputCallId;->id:I
iput v0, v2, Lcom/rim/bbm/BbmMediaCallService$MakeCallResult;->newCallId:I
iput v1, v2, Lcom/rim/bbm/BbmMediaCallService$MakeCallResult;->error:I
iget v0, v2, Lcom/rim/bbm/BbmMediaCallService$MakeCallResult;->error:I
if-nez v0, :cond_1e
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mBluetoothManager:Lcom/rim/bbm/a;
invoke-virtual {v0}, Lcom/rim/bbm/a;->a()V
:cond_1e
return-object v2
.end method
.method public muteAudio(IZ)I
.registers 4
invoke-static {p1, p2}, Lcom/rim/bbm/BbmMediaCallService;->bbmv_mute_audio(IZ)I
move-result v0
return v0
.end method
.method public setSetting(II)V
.registers 3
invoke-static {p1, p2}, Lcom/rim/bbm/BbmMediaCallService;->bbmv_set_setting(II)V
return-void
.end method
.method public setSetting(IZ)V
.registers 4
if-eqz p2, :cond_7
const/4 v0, 0x1
:goto_3
invoke-static {p1, v0}, Lcom/rim/bbm/BbmMediaCallService;->bbmv_set_setting(II)V
return-void
:cond_7
const/4 v0, 0x0
goto :goto_3
.end method
.method public start(Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;Ljava/lang/String;Landroid/content/Context;)Z
.registers 7
sput-object p1, Lcom/rim/bbm/BbmMediaCallService;->mListener:Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;
sput-object p3, Lcom/rim/bbm/BbmMediaCallService;->mContext:Landroid/content/Context;
new-instance v0, Lcom/rim/bbm/a;
new-instance v1, Lcom/rim/bbm/BbmMediaCallService$1;
invoke-direct {v1, p0}, Lcom/rim/bbm/BbmMediaCallService$1;-><init>(Lcom/rim/bbm/BbmMediaCallService;)V
invoke-direct {v0, p3, v1}, Lcom/rim/bbm/a;-><init>(Landroid/content/Context;Lcom/rim/bbm/d;)V
sput-object v0, Lcom/rim/bbm/BbmMediaCallService;->mBluetoothManager:Lcom/rim/bbm/a;
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mContext:Landroid/content/Context;
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mContext:Landroid/content/Context;
const-string v1, "wifi"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
const/4 v1, 0x3
const-string v2, "BbmMedia"
invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
move-result-object v0
sput-object v0, Lcom/rim/bbm/BbmMediaCallService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mContext:Landroid/content/Context;
sget-object v1, Lcom/rim/bbm/BbmMediaCallService;->mContext:Landroid/content/Context;
const-string v1, "power"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
const/4 v1, 0x1
const-string v2, "BbmMedia"
invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v0
sput-object v0, Lcom/rim/bbm/BbmMediaCallService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
invoke-static {p2}, Lcom/rim/bbm/BbmMediaCallService;->bbmv_start(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public stop()Z
.registers 2
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z
move-result v0
if-eqz v0, :cond_d
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
:cond_d
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
move-result v0
if-eqz v0, :cond_1a
sget-object v0, Lcom/rim/bbm/BbmMediaCallService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_1a
const/4 v0, 0x0
sput-object v0, Lcom/rim/bbm/BbmMediaCallService;->mContext:Landroid/content/Context;
invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->bbmv_stop()Z
move-result v0
return v0
.end method