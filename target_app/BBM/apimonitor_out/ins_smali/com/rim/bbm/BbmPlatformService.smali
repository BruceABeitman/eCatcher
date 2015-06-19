.class public Lcom/rim/bbm/BbmPlatformService;
.super Ljava/lang/Object;
.source "BbmPlatformService.java"
.field private static final ACTION_PLATFORM_WAKEUP_ALARM:Ljava/lang/String; = "com.rim.bbm.ACTION_PLATFORM_WAKEUP_ALARM"
.field private static final ALARM_RESULT_CODE:I = 0x8a5
.field public static final IDS_AUTH_ERROR:I = 0x2
.field public static final IDS_CONTACTING_SERVICE_ERROR:I = 0x3
.field public static final IDS_GENERIC_ERROR:I = 0x1
.field public static final IDS_NO_FAILURE:I = -0x1
.field public static final IDS_USER_NO_LONGER_VALID:I = 0x4
.field public static MSDP_STATUS_CONNECTED:I = 0x0
.field public static MSDP_STATUS_DISCONNECTED:I = 0x0
.field public static MSDP_STATUS_UNKNOWN:I = 0x0
.field private static final PLATFORM_WAKEUP_ALARM_ID:I = 0x0
.field private static final WAKE_LOCK_DEFAULT_TIME:I = 0x7d0
.field private static last_error:I
.field private static mBbid:Ljava/lang/String;
.field private static mConnected:Z
.field private static mContext:Landroid/content/Context;
.field private static mEcoid:Ljava/lang/String;
.field static final mHandler:Landroid/os/Handler;
.field private static mIDSDelegate:Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
.field private static mInstance:Lcom/rim/bbm/BbmPlatformService;
.field private static mNetworkBR:Landroid/content/BroadcastReceiver;
.field private static mPin:Ljava/lang/String;
.field private static mPlatformDelegate:Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;
.field private static mPlatformWakeUpBR:Landroid/content/BroadcastReceiver;
.field private static mPowerLock:Landroid/os/PowerManager$WakeLock;
.field private static mScreenActionBR:Landroid/content/BroadcastReceiver;
.field private static mSecret:Ljava/lang/String;
.field private static mToken:Ljava/lang/String;
.field private static registerIntentOnBbidLogin:Z
.field private static releasePowerWakeLock:Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v0, -0x1
sput v0, Lcom/rim/bbm/BbmPlatformService;->MSDP_STATUS_DISCONNECTED:I
sput v2, Lcom/rim/bbm/BbmPlatformService;->MSDP_STATUS_CONNECTED:I
sput v3, Lcom/rim/bbm/BbmPlatformService;->MSDP_STATUS_UNKNOWN:I
sput-boolean v2, Lcom/rim/bbm/BbmPlatformService;->mConnected:Z
sput-boolean v3, Lcom/rim/bbm/BbmPlatformService;->registerIntentOnBbidLogin:Z
sput-object v1, Lcom/rim/bbm/BbmPlatformService;->mPin:Ljava/lang/String;
sput-object v1, Lcom/rim/bbm/BbmPlatformService;->mToken:Ljava/lang/String;
sput-object v1, Lcom/rim/bbm/BbmPlatformService;->mSecret:Ljava/lang/String;
sput-object v1, Lcom/rim/bbm/BbmPlatformService;->mEcoid:Ljava/lang/String;
sput-object v1, Lcom/rim/bbm/BbmPlatformService;->mBbid:Ljava/lang/String;
sput v2, Lcom/rim/bbm/BbmPlatformService;->last_error:I
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
sput-object v0, Lcom/rim/bbm/BbmPlatformService;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/rim/bbm/BbmPlatformService$8;
invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$8;-><init>()V
sput-object v0, Lcom/rim/bbm/BbmPlatformService;->releasePowerWakeLock:Ljava/lang/Runnable;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000()Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
.registers 1
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mIDSDelegate:Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
return-object v0
.end method
.method static synthetic access$100()Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;
.registers 1
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPlatformDelegate:Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;
return-object v0
.end method
.method static synthetic access$200(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/rim/bbm/BbmPlatformService;->cancelAlarm(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$300()Z
.registers 1
sget-boolean v0, Lcom/rim/bbm/BbmPlatformService;->mConnected:Z
return v0
.end method
.method static synthetic access$302(Z)Z
.registers 1
sput-boolean p0, Lcom/rim/bbm/BbmPlatformService;->mConnected:Z
return p0
.end method
.method static synthetic access$400(JLjava/lang/String;)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/rim/bbm/BbmPlatformService;->scheduleAlarm(JLjava/lang/String;)V
return-void
.end method
.method static synthetic access$500()Landroid/os/PowerManager$WakeLock;
.registers 1
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
return-object v0
.end method
.method private static cancelAlarm(Ljava/lang/String;)V
.registers 4
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
invoke-static {v0, p0}, Lcom/rim/bbm/BbmPlatformService;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
move-result-object v1
if-eqz v1, :cond_1a
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
const-string v2, "alarm"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
check-cast v0, Landroid/app/AlarmManager;
invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V
:cond_1a
return-void
.end method
.method public static clearIdentity()I
.registers 1
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->ids_clear_identity()I
move-result v0
return v0
.end method
.method private static createNetworkBroadcastReceiver()Landroid/content/BroadcastReceiver;
.registers 1
new-instance v0, Lcom/rim/bbm/BbmPlatformService$5;
invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$5;-><init>()V
return-object v0
.end method
.method private static createPlatformWakeUpAlarmReceiver()Landroid/content/BroadcastReceiver;
.registers 1
new-instance v0, Lcom/rim/bbm/BbmPlatformService$7;
invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$7;-><init>()V
return-object v0
.end method
.method private static createScreenBroadcastReceiver()Landroid/content/BroadcastReceiver;
.registers 1
new-instance v0, Lcom/rim/bbm/BbmPlatformService$6;
invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$6;-><init>()V
return-object v0
.end method
.method public static getBbidPropertiesState()Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;
.registers 5
const/4 v4, 0x0
new-instance v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;
invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;-><init>()V
invoke-static {v0}, Lcom/rim/bbm/BbmPlatformService;->get_bbid_properties_state(Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;)I
move-result v1
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->countrycode:Ljava/lang/String;
if-nez v2, :cond_12
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->countrycode:Ljava/lang/String;
:cond_12
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->dateofbirth:Ljava/lang/String;
if-nez v2, :cond_1a
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->dateofbirth:Ljava/lang/String;
:cond_1a
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->ecoid:Ljava/lang/String;
if-nez v2, :cond_22
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->ecoid:Ljava/lang/String;
:cond_22
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->email:Ljava/lang/String;
if-nez v2, :cond_2a
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->email:Ljava/lang/String;
:cond_2a
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->firstname:Ljava/lang/String;
if-nez v2, :cond_32
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->firstname:Ljava/lang/String;
:cond_32
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->lastname:Ljava/lang/String;
if-nez v2, :cond_3a
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->lastname:Ljava/lang/String;
:cond_3a
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->screenname:Ljava/lang/String;
if-nez v2, :cond_42
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->screenname:Ljava/lang/String;
:cond_42
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->swguid:Ljava/lang/String;
if-nez v2, :cond_4a
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->swguid:Ljava/lang/String;
:cond_4a
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->username:Ljava/lang/String;
if-nez v2, :cond_52
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->username:Ljava/lang/String;
:cond_52
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbid_properties_state countrycode -> "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->countrycode:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbid_properties_state dateofbirth ->"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->dateofbirth:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbid_properties_state ecoid ->"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->ecoid:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbid_properties_state email ->"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->email:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbid_properties_state firstname ->"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->firstname:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbid_properties_state lastname ->"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->lastname:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbid_properties_state screenname ->"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->screenname:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbid_properties_state swguid ->"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->swguid:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbid_properties_state username ->"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->username:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbid_properties_state rc ->"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
if-nez v1, :cond_133
sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_SUCCESS:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
:cond_132
:goto_132
return-object v0
:cond_133
const/4 v2, 0x1
if-ne v1, v2, :cond_13b
sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_PENDING:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
goto :goto_132
:cond_13b
const/4 v2, 0x2
if-ne v1, v2, :cond_132
sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_FAILURE:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
goto :goto_132
.end method
.method public static getBbmTokenState()Lcom/rim/bbm/BbmPlatformService$BbmTokenState;
.registers 5
const/4 v4, 0x0
new-instance v0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;
invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;-><init>()V
invoke-static {v0}, Lcom/rim/bbm/BbmPlatformService;->get_bbm_token_state(Lcom/rim/bbm/BbmPlatformService$BbmTokenState;)I
move-result v1
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->secret:Ljava/lang/String;
if-nez v2, :cond_12
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->secret:Ljava/lang/String;
:cond_12
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->value:Ljava/lang/String;
if-nez v2, :cond_1a
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->value:Ljava/lang/String;
:cond_1a
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbm_token_state secret -> "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->secret:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbm_token_state value ->"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->value:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_bbm_token_state state ->"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
if-nez v1, :cond_61
sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_SUCCESS:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
:cond_60
:goto_60
return-object v0
:cond_61
const/4 v2, 0x1
if-ne v1, v2, :cond_69
sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_PENDING:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
goto :goto_60
:cond_69
const/4 v2, 0x2
if-ne v1, v2, :cond_60
sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_FAILURE:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
goto :goto_60
.end method
.method public static getConnectionStatus()Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;
.registers 3
new-instance v0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;
invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;-><init>()V
invoke-static {v0}, Lcom/rim/bbm/BbmPlatformService;->get_connection_status(Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "getConnectionStatus status -> "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, v0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;->status:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
return-object v0
.end method
.method public static getInstance()Lcom/rim/bbm/BbmPlatformService;
.registers 1
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mInstance:Lcom/rim/bbm/BbmPlatformService;
if-nez v0, :cond_b
new-instance v0, Lcom/rim/bbm/BbmPlatformService;
invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService;-><init>()V
sput-object v0, Lcom/rim/bbm/BbmPlatformService;->mInstance:Lcom/rim/bbm/BbmPlatformService;
:cond_b
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mInstance:Lcom/rim/bbm/BbmPlatformService;
return-object v0
.end method
.method private static getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
.registers 5
const/16 v0, 0x8a5
new-instance v1, Landroid/content/Intent;
invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v2, 0x4000
invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method
.method public static getPinState()Lcom/rim/bbm/BbmPlatformService$PinState;
.registers 5
const/4 v4, 0x0
new-instance v0, Lcom/rim/bbm/BbmPlatformService$PinState;
invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$PinState;-><init>()V
invoke-static {v0}, Lcom/rim/bbm/BbmPlatformService;->get_pin_state(Lcom/rim/bbm/BbmPlatformService$PinState;)I
move-result v1
iget-object v2, v0, Lcom/rim/bbm/BbmPlatformService$PinState;->pin:Ljava/lang/String;
if-nez v2, :cond_12
const-string v2, ""
iput-object v2, v0, Lcom/rim/bbm/BbmPlatformService$PinState;->pin:Ljava/lang/String;
:cond_12
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_pin_state getter_state -> "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_pin_state pin -> "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/rim/bbm/BbmPlatformService$PinState;->pin:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
if-nez v1, :cond_43
sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_SUCCESS:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$PinState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
:cond_42
:goto_42
return-object v0
:cond_43
const/4 v2, 0x1
if-ne v1, v2, :cond_4b
sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_PENDING:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$PinState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
goto :goto_42
:cond_4b
const/4 v2, 0x2
if-ne v1, v2, :cond_42
sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_FAILURE:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$PinState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
goto :goto_42
.end method
.method public static getPlatformIdsErrorState()Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;
.registers 4
new-instance v0, Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;
invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;-><init>()V
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->ids_get_last_result()I
move-result v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "get_last_ids_result: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iput v1, v0, Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;->ids_error:I
return-object v0
.end method
.method private static native get_bbid_properties_state(Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;)I
.end method
.method private static native get_bbm_token_state(Lcom/rim/bbm/BbmPlatformService$BbmTokenState;)I
.end method
.method private static native get_connection_status(Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;)V
.end method
.method private static native get_pin_state(Lcom/rim/bbm/BbmPlatformService$PinState;)I
.end method
.method private static native ids_clear_identity()I
.end method
.method private static native ids_get_device_id()Ljava/lang/String;
.end method
.method private static native ids_get_last_result()I
.end method
.method private static native ids_get_pin()Ljava/lang/String;
.end method
.method private static native ids_refresh_properties()V
.end method
.method private static native ids_register()V
.end method
.method private static native ids_start(Landroid/content/Context;)I
.end method
.method private static native msdp_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
.method private static native msdp_stop()V
.end method
.method public static onConnectionStatusChanged(II)V
.registers 4
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPlatformDelegate:Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;
if-eqz v0, :cond_e
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/rim/bbm/BbmPlatformService$4;
invoke-direct {v1, p0, p1}, Lcom/rim/bbm/BbmPlatformService$4;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_e
return-void
.end method
.method public static onTimerExpired(I)J
.registers 3
invoke-static {p0}, Lcom/rim/bbm/BbmPlatformService;->on_timer_expired(I)J
move-result-wide v0
return-wide v0
.end method
.method public static onUpdateBbidProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.registers 22
sget v1, Lcom/rim/bbm/BbmPlatformService;->last_error:I
move/from16 v0, p8
if-eq v0, v1, :cond_13
sput p8, Lcom/rim/bbm/BbmPlatformService;->last_error:I
sget-object v1, Lcom/rim/bbm/BbmPlatformService;->mIDSDelegate:Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
invoke-interface {v1}, Lcom/rim/bbm/BbmPlatformService$IDSDelegate;->onIdsErrorStateChange()V
const/4 v1, -0x1
move/from16 v0, p8
if-eq v0, v1, :cond_13
:goto_12
return-void
:cond_13
if-eqz p1, :cond_23
if-eqz p0, :cond_23
const/4 v1, -0x1
move/from16 v0, p8
if-ne v0, v1, :cond_23
sput-object p1, Lcom/rim/bbm/BbmPlatformService;->mEcoid:Ljava/lang/String;
sput-object p0, Lcom/rim/bbm/BbmPlatformService;->mBbid:Ljava/lang/String;
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->registerBradcastReceiversIfLoggedInForTheFirstTime()V
:cond_23
sget-object v11, Lcom/rim/bbm/BbmPlatformService;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/rim/bbm/BbmPlatformService$3;
move-object v2, p0
move-object v3, p1
move-object v4, p2
move-object v5, p3
move-object/from16 v6, p4
move-object/from16 v7, p5
move-object/from16 v8, p6
move-object/from16 v9, p7
move/from16 v10, p8
invoke-direct/range {v1 .. v10}, Lcom/rim/bbm/BbmPlatformService$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
invoke-virtual {v11, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_12
.end method
.method public static onUpdateBbmToken(Ljava/lang/String;ILjava/lang/String;II)V
.registers 7
const/4 v1, -0x1
sget v0, Lcom/rim/bbm/BbmPlatformService;->last_error:I
if-eq p3, v0, :cond_f
sput p3, Lcom/rim/bbm/BbmPlatformService;->last_error:I
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mIDSDelegate:Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
invoke-interface {v0}, Lcom/rim/bbm/BbmPlatformService$IDSDelegate;->onIdsErrorStateChange()V
if-eq p3, v1, :cond_f
:goto_e
return-void
:cond_f
if-eqz p0, :cond_1c
if-eqz p2, :cond_1c
if-ne p3, v1, :cond_1c
sput-object p0, Lcom/rim/bbm/BbmPlatformService;->mToken:Ljava/lang/String;
sput-object p2, Lcom/rim/bbm/BbmPlatformService;->mSecret:Ljava/lang/String;
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->registerBradcastReceiversIfLoggedInForTheFirstTime()V
:cond_1c
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/rim/bbm/BbmPlatformService$2;
invoke-direct {v1, p0, p2, p3}, Lcom/rim/bbm/BbmPlatformService$2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_e
.end method
.method public static onUpdatePin(Ljava/lang/String;Ljava/lang/String;II)V
.registers 6
const/4 v1, -0x1
sget v0, Lcom/rim/bbm/BbmPlatformService;->last_error:I
if-eq p2, v0, :cond_f
sput p2, Lcom/rim/bbm/BbmPlatformService;->last_error:I
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mIDSDelegate:Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
invoke-interface {v0}, Lcom/rim/bbm/BbmPlatformService$IDSDelegate;->onIdsErrorStateChange()V
if-eq p2, v1, :cond_f
:goto_e
return-void
:cond_f
if-eqz p0, :cond_18
if-ne p2, v1, :cond_18
sput-object p0, Lcom/rim/bbm/BbmPlatformService;->mPin:Ljava/lang/String;
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->registerBradcastReceiversIfLoggedInForTheFirstTime()V
:cond_18
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/rim/bbm/BbmPlatformService$1;
invoke-direct {v1, p0, p2}, Lcom/rim/bbm/BbmPlatformService$1;-><init>(Ljava/lang/String;I)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_e
.end method
.method private static native on_timer_expired(I)J
.end method
.method public static powerWakeLockAcquire()V
.registers 4
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
if-nez v0, :cond_d
const-string v0, "Power Wake Lock is not initialized  Cannot acquire."
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_c
return-void
:cond_d
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mHandler:Landroid/os/Handler;
sget-object v1, Lcom/rim/bbm/BbmPlatformService;->releasePowerWakeLock:Ljava/lang/Runnable;
const-wide/16 v2, 0x7d0
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_c
.end method
.method public static refreshProperties()V
.registers 0
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->ids_refresh_properties()V
return-void
.end method
.method private static registerBradcastReceiversIfLoggedInForTheFirstTime()V
.registers 3
const/4 v2, 0x0
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPin:Ljava/lang/String;
if-eqz v0, :cond_27
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mToken:Ljava/lang/String;
if-eqz v0, :cond_27
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mSecret:Ljava/lang/String;
if-eqz v0, :cond_27
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mBbid:Ljava/lang/String;
if-eqz v0, :cond_27
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mEcoid:Ljava/lang/String;
if-eqz v0, :cond_27
const-string v0, "Registering bradcast receivers for the first time"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-boolean v0, Lcom/rim/bbm/BbmPlatformService;->registerIntentOnBbidLogin:Z
if-eqz v0, :cond_27
sput-boolean v2, Lcom/rim/bbm/BbmPlatformService;->registerIntentOnBbidLogin:Z
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/rim/bbm/BbmPlatformService;->registerBroadcastReceivers(Landroid/content/Context;)V
:cond_27
return-void
.end method
.method private static registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
.registers 4
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method private static registerBroadcastReceivers(Landroid/content/Context;)V
.registers 3
const-string v0, "Registering broadcast receivers for platform KA"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->createScreenBroadcastReceiver()Landroid/content/BroadcastReceiver;
move-result-object v0
sput-object v0, Lcom/rim/bbm/BbmPlatformService;->mScreenActionBR:Landroid/content/BroadcastReceiver;
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mScreenActionBR:Landroid/content/BroadcastReceiver;
invoke-static {p0, v0}, Lcom/rim/bbm/BbmPlatformService;->registerScreenBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->createPlatformWakeUpAlarmReceiver()Landroid/content/BroadcastReceiver;
move-result-object v0
sput-object v0, Lcom/rim/bbm/BbmPlatformService;->mPlatformWakeUpBR:Landroid/content/BroadcastReceiver;
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPlatformWakeUpBR:Landroid/content/BroadcastReceiver;
const-string v1, "com.rim.bbm.ACTION_PLATFORM_WAKEUP_ALARM"
invoke-static {p0, v0, v1}, Lcom/rim/bbm/BbmPlatformService;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->createNetworkBroadcastReceiver()Landroid/content/BroadcastReceiver;
move-result-object v0
sput-object v0, Lcom/rim/bbm/BbmPlatformService;->mNetworkBR:Landroid/content/BroadcastReceiver;
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mNetworkBR:Landroid/content/BroadcastReceiver;
const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-static {p0, v0, v1}, Lcom/rim/bbm/BbmPlatformService;->registerNetworkBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
return-void
.end method
.method private static registerNetworkBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
.registers 4
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method private static registerScreenBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
.registers 4
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "android.intent.action.SCREEN_ON"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "android.intent.action.SCREEN_OFF"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method private static scheduleAlarm(JLjava/lang/String;)V
.registers 8
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Scheduling timer "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " for "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " ms"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-wide/16 v0, 0x0
cmp-long v0, p0, v0
if-lez v0, :cond_4a
if-eqz p2, :cond_4a
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
invoke-static {v0, p2}, Lcom/rim/bbm/BbmPlatformService;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
move-result-object v1
if-eqz v1, :cond_4a
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
const-string v2, "alarm"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
check-cast v0, Landroid/app/AlarmManager;
const/4 v2, 0x2
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v3
add-long/2addr v3, p0
invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
:cond_4a
return-void
.end method
.method public static setPlatformDelegate(Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;)V
.registers 1
sput-object p0, Lcom/rim/bbm/BbmPlatformService;->mPlatformDelegate:Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;
return-void
.end method
.method public static native set_network_interface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public static native set_network_interface_with_details(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public static startBBID(Lcom/rim/bbm/BbmPlatformService$IDSDelegate;)I
.registers 2
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
if-eqz v0, :cond_15
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/blackberry/ids/IDS;->init(Landroid/content/Context;)V
sput-object p0, Lcom/rim/bbm/BbmPlatformService;->mIDSDelegate:Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->ids_register()V
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/rim/bbm/BbmPlatformService;->ids_start(Landroid/content/Context;)I
move-result v0
:goto_14
return v0
:cond_15
const/4 v0, 0x1
goto :goto_14
.end method
.method public static startBBID(Lcom/rim/bbm/BbmPlatformService$IDSDelegate;Ljava/lang/String;)I
.registers 4
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
if-eqz v0, :cond_2a
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "ecosystem from UI :: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/blackberry/ids/IDS;->init_with_ecosystem(Landroid/content/Context;Ljava/lang/String;)V
sput-object p0, Lcom/rim/bbm/BbmPlatformService;->mIDSDelegate:Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->ids_register()V
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/rim/bbm/BbmPlatformService;->ids_start(Landroid/content/Context;)I
move-result v0
:goto_29
return v0
:cond_2a
const/4 v0, 0x1
goto :goto_29
.end method
.method public static startPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-static {p0, p1, p2, p3, v0}, Lcom/rim/bbm/BbmPlatformService;->startPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
return-void
.end method
.method public static startPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
.registers 14
const/4 v2, 0x1
sput-object p0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
if-nez v0, :cond_1e
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
sget-object v1, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
const-string v1, "power"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
const-string v1, "BbmPlatform"
invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v0
sput-object v0, Lcom/rim/bbm/BbmPlatformService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
:cond_1e
sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
const-string v3, "BBM Android 1.0.0"
const-string v4, "Blackberry Messenger"
const-string v5, "WIFI,3G"
move-object v6, p1
move-object v7, p2
move-object v8, p3
invoke-static/range {v0 .. v8}, Lcom/rim/bbm/BbmPlatformService;->msdp_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static stopPlatform()V
.registers 2
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mHandler:Landroid/os/Handler;
sget-object v1, Lcom/rim/bbm/BbmPlatformService;->releasePowerWakeLock:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
if-eqz v0, :cond_1c
:goto_b
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
move-result v0
if-eqz v0, :cond_19
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
goto :goto_b
:cond_19
const/4 v0, 0x0
sput-object v0, Lcom/rim/bbm/BbmPlatformService;->mPowerLock:Landroid/os/PowerManager$WakeLock;
:cond_1c
const-string v0, "Cancelling timer because platform is being shutdown"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "com.rim.bbm.ACTION_PLATFORM_WAKEUP_ALARM"
invoke-static {v0}, Lcom/rim/bbm/BbmPlatformService;->cancelAlarm(Ljava/lang/String;)V
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/rim/bbm/BbmPlatformService;->unregisterBroadcastReceivers(Landroid/content/Context;)V
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->msdp_stop()V
return-void
.end method
.method private static unregisterBroadcastReceivers(Landroid/content/Context;)V
.registers 1
invoke-static {p0}, Lcom/rim/bbm/BbmPlatformService;->unregisterScreenBroadcastReceiver(Landroid/content/Context;)V
invoke-static {p0}, Lcom/rim/bbm/BbmPlatformService;->unregisterPlatformWakeUpBroacastReceiver(Landroid/content/Context;)V
invoke-static {p0}, Lcom/rim/bbm/BbmPlatformService;->unregisterNetworkBroadcastReceiver(Landroid/content/Context;)V
return-void
.end method
.method private static unregisterNetworkBroadcastReceiver(Landroid/content/Context;)V
.registers 3
:try_start_0
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mNetworkBR:Landroid/content/BroadcastReceiver;
if-eqz v0, :cond_c
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mNetworkBR:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
sput-object v0, Lcom/rim/bbm/BbmPlatformService;->mNetworkBR:Landroid/content/BroadcastReceiver;
:cond_c
:goto_c
:try_end_c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d
return-void
:catch_d
move-exception v0
const-string v0, "Unregister of broadcast receivers failed-3"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_c
.end method
.method private static unregisterPlatformWakeUpBroacastReceiver(Landroid/content/Context;)V
.registers 3
:try_start_0
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPlatformWakeUpBR:Landroid/content/BroadcastReceiver;
if-eqz v0, :cond_c
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mPlatformWakeUpBR:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
sput-object v0, Lcom/rim/bbm/BbmPlatformService;->mPlatformWakeUpBR:Landroid/content/BroadcastReceiver;
:cond_c
:goto_c
:try_end_c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d
return-void
:catch_d
move-exception v0
const-string v0, "Unregister of broadcast receivers failed-1"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_c
.end method
.method private static unregisterScreenBroadcastReceiver(Landroid/content/Context;)V
.registers 3
:try_start_0
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mScreenActionBR:Landroid/content/BroadcastReceiver;
if-eqz v0, :cond_c
sget-object v0, Lcom/rim/bbm/BbmPlatformService;->mScreenActionBR:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
sput-object v0, Lcom/rim/bbm/BbmPlatformService;->mScreenActionBR:Landroid/content/BroadcastReceiver;
:cond_c
:goto_c
:try_end_c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d
return-void
:catch_d
move-exception v0
const-string v0, "Unregister of broadcast receivers failed-2"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_c
.end method