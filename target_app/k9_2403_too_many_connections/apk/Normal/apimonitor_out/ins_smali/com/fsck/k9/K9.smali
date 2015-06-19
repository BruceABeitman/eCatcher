.class public Lcom/fsck/k9/K9;
.super Landroid/app/Application;
.source "K9.java"
.field public static final ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String; = null
.field public static final ACCEPTABLE_ATTACHMENT_SEND_TYPES:[Ljava/lang/String; = null
.field public static final ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String; = null
.field public static final BOOT_RECEIVER_WAKE_LOCK_TIMEOUT:I = 0xea60
.field public static final COLOR_CHIP_RES_IDS:[I = null
.field public static final CONNECTIVITY_ID:I = -0x3
.field public static DEBUG:Z = false
.field public static DEBUG_SENSITIVE:Z = false
.field public static DEFAULT_VISIBLE_LIMIT:I = 0x0
.field public static ENABLE_ERROR_FOLDER:Z = false
.field public static ERROR_FOLDER_NAME:Ljava/lang/String; = null
.field public static final FETCHING_EMAIL_NOTIFICATION_ID:I = -0x4
.field public static final FETCHING_EMAIL_NOTIFICATION_MULTI_ACCOUNT_ID:I = -0x1
.field public static final FETCHING_EMAIL_NOTIFICATION_NO_ACCOUNT:I = -0x2
.field public static final FOLDER_NONE:Ljava/lang/String; = "-NONE-"
.field public static final INBOX:Ljava/lang/String; = "INBOX"
.field public static final K9MAIL_IDENTITY:Ljava/lang/String; = "X-K9mail-Identity"
.field public static final LOCAL_UID_PREFIX:Ljava/lang/String; = "K9LOCAL:"
.field public static final LOG_TAG:Ljava/lang/String; = "k9"
.field public static final MAIL_SERVICE_WAKE_LOCK_TIMEOUT:I = 0x7530
.field public static final MANUAL_WAKE_LOCK_TIMEOUT:I = 0x1d4c0
.field public static final MAX_ATTACHMENT_DOWNLOAD_SIZE:I = 0x500000
.field public static MAX_SEND_ATTEMPTS:I = 0x0
.field public static final NOTIFICATION_LED_COLOR:I = -0xff01
.field public static final NOTIFICATION_LED_DIM_COLOR:I = 0x77770077
.field public static final NOTIFICATION_LED_FAST_OFF_TIME:I = 0x64
.field public static final NOTIFICATION_LED_FAST_ON_TIME:I = 0x64
.field public static final NOTIFICATION_LED_OFF_TIME:I = 0x7d0
.field public static final NOTIFICATION_LED_ON_TIME:I = 0x1f4
.field public static final NOTIFICATION_LED_SENDING_FAILURE_COLOR:I = -0x10000
.field public static final NOTIFICATION_LED_WHILE_SYNCING:Z = false
.field public static final PUSH_WAKE_LOCK_TIMEOUT:I = 0xea60
.field public static final REMOTE_UID_PREFIX:Ljava/lang/String; = "K9REMOTE:"
.field public static final UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String; = null
.field public static final UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String; = null
.field public static VISIBLE_LIMIT_INCREMENT:I = 0x0
.field public static final WAKE_LOCK_TIMEOUT:I = 0x927c0
.field public static app:Landroid/app/Application;
.field private static backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;
.field public static final logFile:Ljava/lang/String;
.field private static mAnimations:Z
.field private static mMessageListCheckboxes:Z
.field private static mMessageListStars:Z
.field private static mMessageListTouchable:Z
.field public static tempDirectory:Ljava/io/File;
.field private static theme:I
.method static constructor <clinit>()V
.registers 6
const/4 v1, 0x0
const/16 v5, 0x19
const/4 v3, 0x1
const/4 v2, 0x0
const-string v4, "*/*"
sput-object v1, Lcom/fsck/k9/K9;->app:Landroid/app/Application;
const v0, 0x103000c
sput v0, Lcom/fsck/k9/K9;->theme:I
sget-object v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED:Lcom/fsck/k9/K9$BACKGROUND_OPS;
sput-object v0, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;
sput-object v1, Lcom/fsck/k9/K9;->logFile:Ljava/lang/String;
sput-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z
sput-boolean v2, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z
sput-boolean v3, Lcom/fsck/k9/K9;->ENABLE_ERROR_FOLDER:Z
const-string v0, "K9mail-errors"
sput-object v0, Lcom/fsck/k9/K9;->ERROR_FOLDER_NAME:Ljava/lang/String;
sput-boolean v3, Lcom/fsck/k9/K9;->mAnimations:Z
sput-boolean v3, Lcom/fsck/k9/K9;->mMessageListStars:Z
sput-boolean v2, Lcom/fsck/k9/K9;->mMessageListCheckboxes:Z
sput-boolean v2, Lcom/fsck/k9/K9;->mMessageListTouchable:Z
new-array v0, v3, [Ljava/lang/String;
const-string v1, "*/*"
aput-object v4, v0, v2
sput-object v0, Lcom/fsck/k9/K9;->ACCEPTABLE_ATTACHMENT_SEND_TYPES:[Ljava/lang/String;
new-array v0, v3, [Ljava/lang/String;
const-string v1, "*/*"
aput-object v4, v0, v2
sput-object v0, Lcom/fsck/k9/K9;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;
new-array v0, v2, [Ljava/lang/String;
sput-object v0, Lcom/fsck/k9/K9;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;
new-array v0, v3, [Ljava/lang/String;
const-string v1, "*/*"
aput-object v4, v0, v2
sput-object v0, Lcom/fsck/k9/K9;->ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;
new-array v0, v2, [Ljava/lang/String;
sput-object v0, Lcom/fsck/k9/K9;->UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;
sput v5, Lcom/fsck/k9/K9;->DEFAULT_VISIBLE_LIMIT:I
sput v5, Lcom/fsck/k9/K9;->VISIBLE_LIMIT_INCREMENT:I
const/4 v0, 0x5
sput v0, Lcom/fsck/k9/K9;->MAX_SEND_ATTEMPTS:I
const/16 v0, 0x15
new-array v0, v0, [I
fill-array-data v0, :array_58
sput-object v0, Lcom/fsck/k9/K9;->COLOR_CHIP_RES_IDS:[I
return-void
nop
:array_58
.array-data 0x4
0x0t 0x0t 0x2t 0x7ft
0xbt 0x0t 0x2t 0x7ft
0xet 0x0t 0x2t 0x7ft
0xft 0x0t 0x2t 0x7ft
0x10t 0x0t 0x2t 0x7ft
0x11t 0x0t 0x2t 0x7ft
0x12t 0x0t 0x2t 0x7ft
0x13t 0x0t 0x2t 0x7ft
0x14t 0x0t 0x2t 0x7ft
0x1t 0x0t 0x2t 0x7ft
0x2t 0x0t 0x2t 0x7ft
0x3t 0x0t 0x2t 0x7ft
0x4t 0x0t 0x2t 0x7ft
0x5t 0x0t 0x2t 0x7ft
0x6t 0x0t 0x2t 0x7ft
0x7t 0x0t 0x2t 0x7ft
0x8t 0x0t 0x2t 0x7ft
0x9t 0x0t 0x2t 0x7ft
0xat 0x0t 0x2t 0x7ft
0xct 0x0t 0x2t 0x7ft
0xdt 0x0t 0x2t 0x7ft
.end array-data
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Application;-><init>()V
return-void
.end method
.method public static getBackgroundOps()Lcom/fsck/k9/K9$BACKGROUND_OPS;
.registers 1
sget-object v0, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;
return-object v0
.end method
.method public static getK9Theme()I
.registers 1
sget v0, Lcom/fsck/k9/K9;->theme:I
return v0
.end method
.method public static isAnimations()Z
.registers 1
sget-boolean v0, Lcom/fsck/k9/K9;->mAnimations:Z
return v0
.end method
.method public static messageListCheckboxes()Z
.registers 1
sget-boolean v0, Lcom/fsck/k9/K9;->mMessageListCheckboxes:Z
return v0
.end method
.method public static messageListStars()Z
.registers 1
sget-boolean v0, Lcom/fsck/k9/K9;->mMessageListStars:Z
return v0
.end method
.method public static messageListTouchable()Z
.registers 1
sget-boolean v0, Lcom/fsck/k9/K9;->mMessageListTouchable:Z
return v0
.end method
.method public static save(Landroid/content/SharedPreferences$Editor;)V
.registers 3
const-string v0, "enableDebugLogging"
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "enableSensitiveLogging"
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z
invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "backgroundOperations"
sget-object v1, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;
invoke-virtual {v1}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v0, "animations"
sget-boolean v1, Lcom/fsck/k9/K9;->mAnimations:Z
invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "messageListStars"
sget-boolean v1, Lcom/fsck/k9/K9;->mMessageListStars:Z
invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "messageListCheckboxes"
sget-boolean v1, Lcom/fsck/k9/K9;->mMessageListCheckboxes:Z
invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "messageListTouchable"
sget-boolean v1, Lcom/fsck/k9/K9;->mMessageListTouchable:Z
invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "theme"
sget v1, Lcom/fsck/k9/K9;->theme:I
invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
return-void
.end method
.method public static setAnimations(Z)V
.registers 1
sput-boolean p0, Lcom/fsck/k9/K9;->mAnimations:Z
return-void
.end method
.method public static setBackgroundOps(Lcom/fsck/k9/K9$BACKGROUND_OPS;)V
.registers 1
sput-object p0, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;
return-void
.end method
.method public static setBackgroundOps(Ljava/lang/String;)V
.registers 2
invoke-static {p0}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$BACKGROUND_OPS;
move-result-object v0
sput-object v0, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;
return-void
.end method
.method public static setK9Theme(I)V
.registers 1
sput p0, Lcom/fsck/k9/K9;->theme:I
return-void
.end method
.method public static setMessageListCheckboxes(Z)V
.registers 1
sput-boolean p0, Lcom/fsck/k9/K9;->mMessageListCheckboxes:Z
return-void
.end method
.method public static setMessageListStars(Z)V
.registers 1
sput-boolean p0, Lcom/fsck/k9/K9;->mMessageListStars:Z
return-void
.end method
.method public static setMessageListTouchable(Z)V
.registers 1
sput-boolean p0, Lcom/fsck/k9/K9;->mMessageListTouchable:Z
return-void
.end method
.method public static setServicesEnabled(Landroid/content/Context;)V
.registers 4
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v1
invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;
move-result-object v1
array-length v0, v1
if-lez v0, :cond_11
const/4 v1, 0x1
:goto_c
const/4 v2, 0x0
invoke-static {p0, v1, v2}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;ZLjava/lang/Integer;)V
return-void
:cond_11
const/4 v1, 0x0
goto :goto_c
.end method
.method public static setServicesEnabled(Landroid/content/Context;Ljava/lang/Integer;)V
.registers 3
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;
move-result-object v0
array-length v0, v0
if-lez v0, :cond_10
const/4 v0, 0x1
:goto_c
invoke-static {p0, v0, p1}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;ZLjava/lang/Integer;)V
return-void
:cond_10
const/4 v0, 0x0
goto :goto_c
.end method
.method public static setServicesEnabled(Landroid/content/Context;ZLjava/lang/Integer;)V
.registers 16
const/4 v12, 0x2
const/4 v11, 0x0
const/4 v9, 0x1
const-class v10, Lcom/fsck/k9/service/MailService;
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v6
if-nez p1, :cond_1b
new-instance v7, Landroid/content/ComponentName;
const-class v8, Lcom/fsck/k9/service/MailService;
invoke-direct {v7, p0, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
move-result v7
if-ne v7, v9, :cond_1b
invoke-static {p0, p2}, Lcom/fsck/k9/service/MailService;->actionReschedule(Landroid/content/Context;Ljava/lang/Integer;)V
:cond_1b
const/4 v7, 0x3
new-array v2, v7, [Ljava/lang/Class;
const-class v7, Lcom/fsck/k9/activity/MessageCompose;
aput-object v7, v2, v11
const-class v7, Lcom/fsck/k9/service/BootReceiver;
aput-object v7, v2, v9
const-class v7, Lcom/fsck/k9/service/MailService;
aput-object v10, v2, v12
move-object v1, v2
array-length v5, v1
const/4 v4, 0x0
:goto_2d
if-ge v4, v5, :cond_51
aget-object v3, v1, v4
new-instance v7, Landroid/content/ComponentName;
invoke-direct {v7, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
move-result v7
if-ne v7, v9, :cond_4d
move v0, v9
:goto_3d
if-eq p1, v0, :cond_4a
new-instance v7, Landroid/content/ComponentName;
invoke-direct {v7, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
if-eqz p1, :cond_4f
move v8, v9
:goto_47
invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
:cond_4a
add-int/lit8 v4, v4, 0x1
goto :goto_2d
:cond_4d
move v0, v11
goto :goto_3d
:cond_4f
move v8, v12
goto :goto_47
:cond_51
if-eqz p1, :cond_63
new-instance v7, Landroid/content/ComponentName;
const-class v8, Lcom/fsck/k9/service/MailService;
invoke-direct {v7, p0, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
move-result v7
if-ne v7, v9, :cond_63
invoke-static {p0, p2}, Lcom/fsck/k9/service/MailService;->actionReschedule(Landroid/content/Context;Ljava/lang/Integer;)V
:cond_63
return-void
.end method
.method public onCreate()V
.registers 7
const-string v1, " + Lcom/fsck/k9/K9; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
const/4 v4, 0x0
invoke-super {p0}, Landroid/app/Application;->onCreate()V
sput-object p0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v1
invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;
move-result-object v2
const-string v3, "enableDebugLogging"
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
sput-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z
const-string v3, "enableSensitiveLogging"
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
sput-boolean v3, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z
const-string v3, "animations"
invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
sput-boolean v3, Lcom/fsck/k9/K9;->mAnimations:Z
const-string v3, "messageListStars"
invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
sput-boolean v3, Lcom/fsck/k9/K9;->mMessageListStars:Z
const-string v3, "messageListCheckboxes"
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
sput-boolean v3, Lcom/fsck/k9/K9;->mMessageListCheckboxes:Z
const-string v3, "messageListTouchable"
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
sput-boolean v3, Lcom/fsck/k9/K9;->mMessageListTouchable:Z
:try_start_3f
const-string v3, "backgroundOperations"
const-string v4, "WHEN_CHECKED"
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$BACKGROUND_OPS;
move-result-object v3
invoke-static {v3}, Lcom/fsck/k9/K9;->setBackgroundOps(Lcom/fsck/k9/K9$BACKGROUND_OPS;)V
:goto_4e
:try_end_4e
.catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4e} :catch_7c
const-string v3, "theme"
const v4, 0x103000c
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v3
invoke-static {v3}, Lcom/fsck/k9/K9;->setK9Theme(I)V
invoke-static {p0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v3
invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/fsck/k9/MessagingController;->resetVisibleLimits([Lcom/fsck/k9/Account;)V
invoke-virtual {p0}, Lcom/fsck/k9/K9;->getCacheDir()Ljava/io/File;
move-result-object v3
invoke-static {v3}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->setTempDirectory(Ljava/io/File;)V
invoke-static {p0}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V
invoke-static {p0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v3
new-instance v4, Lcom/fsck/k9/K9$1;
invoke-direct {v4, p0}, Lcom/fsck/k9/K9$1;-><init>(Lcom/fsck/k9/K9;)V
invoke-virtual {v3, v4}, Lcom/fsck/k9/MessagingController;->addListener(Lcom/fsck/k9/MessagingListener;)V
const-string v1, " - Lcom/fsck/k9/K9; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_7c
move-exception v3
move-object v0, v3
sget-object v3, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED:Lcom/fsck/k9/K9$BACKGROUND_OPS;
invoke-static {v3}, Lcom/fsck/k9/K9;->setBackgroundOps(Lcom/fsck/k9/K9$BACKGROUND_OPS;)V
goto :goto_4e
.end method