.class public Lco/vine/android/client/AppController;
.super Ljava/lang/Object;
.source "AppController.java"
.implements Lco/vine/android/util/image/PhotoImagesListener;
.implements Lco/vine/android/util/video/VideoListener;
.implements Lcom/facebook/Session$StatusCallback;
.implements Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;
.field public static final ACTION_ABORT_ALL_REQUESTS:Ljava/lang/String; = "abort_all_requests"
.field private static final ACTION_EDITION_UPDATED:Ljava/lang/String; = "action_edition_updated"
.field public static final ACTION_UPDATED_FILTER:Landroid/content/IntentFilter; = null
.field private static final CLEANUP_INTERVAL:J = 0x36ee80L
.field private static final INVALIDATE_CACHE_FILTER:Landroid/content/IntentFilter; = null
.field private static final KEY_FACEBOOK_TOKEN:Ljava/lang/String; = "KEY_FACEBOOK_TOKEN"
.field private static final MIN_LOOP_COUNT_INTERVAL:J = 0xea60L
.field private static final PREF_LAST_USER_ID:Ljava/lang/String; = "last_user_id"
.field public static final PUBLISH_ACTIONS:Ljava/lang/String; = "publish_actions"
.field public static final REQUEST_CODE_TWITTER_SDK:I = 0x1
.field public static final REQUEST_CODE_TWITTER_XAUTH:I = 0x2
.field private static final SERVER_REFRESH_INTERVAL:J = 0x36ee80L
.field public static final SINGLE_FACEBOOK_DIALOG:Z = false
.field public static final STATUS_CODE_CAPTCHA_FAIL:I = 0x1c7
.field private static final TYPEAHEAD_DEFAULT_FETCH_THRESHOLD:I = 0x2
.field private static final TYPEAHEAD_DEFAULT_MAX_COMPOSE:I = 0x32
.field public static final TYPEAHEAD_DEFAULT_THROTTLE:J = 0x12cL
.field private static final TYPEAHEAD_TAGS_FETCH_THRESHOLD:I = 0x3
.field private static sInstance:Lco/vine/android/client/AppController;
.field final mContext:Landroid/content/Context;
.field private final mHandler:Landroid/os/Handler;
.field private final mInvalidateCacheReceiver:Landroid/content/BroadcastReceiver;
.field private mListeners:Ljava/util/ArrayList;
.field private mLoopCountRunnable:Lco/vine/android/client/AppController$LoopCountRunnable;
.field private mLoopCountSubmissionInterval:J
.field private final mPhotoImagesCache:Lco/vine/android/util/image/PhotoImagesCache;
.field private mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;
.field private final mServiceConnection:Lco/vine/android/service/VineServiceConnection;
.field private final mTwitter:Lcom/twitter/android/sdk/Twitter;
.field private final mVideoCache:Lco/vine/android/util/video/VideoCache;
.method static constructor <clinit>()V
.registers 2
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const-string v1, "SM-C115"
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-ne v0, v1, :cond_41
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v1, "SM-C11"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_41
const/4 v0, 0x1
:goto_19
sput-boolean v0, Lco/vine/android/client/AppController;->SINGLE_FACEBOOK_DIALOG:Z
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "action_edition_updated"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
sput-object v0, Lco/vine/android/client/AppController;->ACTION_UPDATED_FILTER:Landroid/content/IntentFilter;
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
sput-object v0, Lco/vine/android/client/AppController;->INVALIDATE_CACHE_FILTER:Landroid/content/IntentFilter;
sget-object v0, Lco/vine/android/client/AppController;->INVALIDATE_CACHE_FILTER:Landroid/content/IntentFilter;
const-string v1, "co.vine.android.invalidateCache"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
sget-boolean v0, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v0, :cond_40
sget-object v0, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_DIRECT_UPLOAD:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
sget-object v0, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_DIRECT_UPLOAD:Ljava/io/File;
invoke-static {v0}, Lco/vine/android/player/SaveVideoClicker;->setLongPressSaveDir(Ljava/io/File;)V
:cond_40
return-void
:cond_41
const/4 v0, 0x0
goto :goto_19
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v2, Lco/vine/android/client/AppController$1;
invoke-direct {v2, p0}, Lco/vine/android/client/AppController$1;-><init>(Lco/vine/android/client/AppController;)V
iput-object v2, p0, Lco/vine/android/client/AppController;->mInvalidateCacheReceiver:Landroid/content/BroadcastReceiver;
iput-object p1, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
const-wide/32 v2, 0xea60
iput-wide v2, p0, Lco/vine/android/client/AppController;->mLoopCountSubmissionInterval:J
new-instance v2, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v3
invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v2, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-static {p1}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
move-result-object v1
iget v2, v1, Landroid/graphics/Point;->x:I
iget v3, v1, Landroid/graphics/Point;->y:I
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v0
new-instance v2, Lco/vine/android/util/image/PhotoImagesCache;
const/high16 v3, 0x1e0
invoke-direct {v2, p1, v0, v3}, Lco/vine/android/util/image/PhotoImagesCache;-><init>(Landroid/content/Context;II)V
iput-object v2, p0, Lco/vine/android/client/AppController;->mPhotoImagesCache:Lco/vine/android/util/image/PhotoImagesCache;
iget-object v2, p0, Lco/vine/android/client/AppController;->mPhotoImagesCache:Lco/vine/android/util/image/PhotoImagesCache;
invoke-virtual {v2, p0}, Lco/vine/android/util/image/PhotoImagesCache;->addListener(Lco/vine/android/util/image/PhotoImagesListener;)V
new-instance v2, Lco/vine/android/util/video/VideoCache;
const/4 v3, 0x0
invoke-direct {v2, p1, v3}, Lco/vine/android/util/video/VideoCache;-><init>(Landroid/content/Context;I)V
iput-object v2, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;
iget-object v2, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;
invoke-virtual {v2, p0}, Lco/vine/android/util/video/VideoCache;->addListener(Lco/vine/android/util/video/VideoListener;)V
new-instance v2, Lcom/twitter/android/sdk/Twitter;
sget-object v3, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;
sget-object v4, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;
invoke-direct {v2, v3, v4}, Lcom/twitter/android/sdk/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v2, p0, Lco/vine/android/client/AppController;->mTwitter:Lcom/twitter/android/sdk/Twitter;
new-instance v2, Lco/vine/android/client/AppController$ServerStatusRunnable;
invoke-direct {v2, p0}, Lco/vine/android/client/AppController$ServerStatusRunnable;-><init>(Lco/vine/android/client/AppController;)V
iput-object v2, p0, Lco/vine/android/client/AppController;->mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;
new-instance v2, Lco/vine/android/client/AppController$LoopCountRunnable;
invoke-direct {v2, p0}, Lco/vine/android/client/AppController$LoopCountRunnable;-><init>(Lco/vine/android/client/AppController;)V
iput-object v2, p0, Lco/vine/android/client/AppController;->mLoopCountRunnable:Lco/vine/android/client/AppController$LoopCountRunnable;
const-string v2, "App Controller pid: {}"
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
new-instance v2, Lco/vine/android/service/VineServiceConnection;
iget-object v3, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-direct {v2, v3, p0}, Lco/vine/android/service/VineServiceConnection;-><init>(Landroid/content/Context;Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;)V
iput-object v2, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/service/VineServiceConnection;
new-instance v2, Landroid/content/Intent;
const-class v3, Lco/vine/android/service/VineService;
invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v3, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/service/VineServiceConnection;
const/4 v4, 0x1
invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
iget-object v2, p0, Lco/vine/android/client/AppController;->mInvalidateCacheReceiver:Landroid/content/BroadcastReceiver;
sget-object v3, Lco/vine/android/client/AppController;->INVALIDATE_CACHE_FILTER:Landroid/content/IntentFilter;
const-string v4, "co.vine.android.BROADCAST"
const/4 v5, 0x0
invoke-virtual {p1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
return-void
.end method
.method public static clearFileCache(Landroid/content/Context;)V
.registers 1
invoke-static {p0}, Lco/vine/android/util/Util;->removeCache(Landroid/content/Context;)V
invoke-static {p0}, Lco/vine/android/util/image/ImageUtils;->removeFiles(Landroid/content/Context;)V
return-void
.end method
.method private createServiceBundle()Landroid/os/Bundle;
.registers 2
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v0
invoke-direct {p0, v0}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method private createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-static {v0, p1}, Lco/vine/android/client/AppController;->injectServiceBundle(Landroid/os/Bundle;Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v1
return-object v1
.end method
.method private createServiceBundleReadOnly()Landroid/os/Bundle;
.registers 2
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;
move-result-object v0
invoke-direct {p0, v0}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method private executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
.registers 4
const-string v0, "Last Service Action Code"
invoke-static {v0, p1}, Lco/vine/android/util/CrashUtil;->set(Ljava/lang/String;I)V
iget-object v0, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/service/VineServiceConnection;
invoke-virtual {v0, p1, p2}, Lco/vine/android/service/VineServiceConnection;->queueAndExecute(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private getActiveSession(Z)Lco/vine/android/client/Session;
.registers 3
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v0, p1}, Lco/vine/android/client/VineAccountHelper;->getActiveSession(Landroid/content/Context;Z)Lco/vine/android/client/Session;
move-result-object v0
return-object v0
.end method
.method public static declared-synchronized getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
.registers 4
const-class v1, Lco/vine/android/client/AppController;
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/client/AppController;->sInstance:Lco/vine/android/client/AppController;
if-nez v0, :cond_12
new-instance v0, Lco/vine/android/client/AppController;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v0, v2}, Lco/vine/android/client/AppController;-><init>(Landroid/content/Context;)V
sput-object v0, Lco/vine/android/client/AppController;->sInstance:Lco/vine/android/client/AppController;
:cond_12
sget-object v0, Lco/vine/android/client/AppController;->sInstance:Lco/vine/android/client/AppController;
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_16
monitor-exit v1
return-object v0
:catchall_16
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static injectServiceBundle(Landroid/os/Bundle;Lco/vine/android/client/Session;)Landroid/os/Bundle;
.registers 5
const-string v0, "s_key"
invoke-virtual {p1}, Lco/vine/android/client/Session;->getSessionKey()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "s_owner_id"
invoke-virtual {p1}, Lco/vine/android/client/Session;->getUserId()J
move-result-wide v1
invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "a_name"
invoke-virtual {p1}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "email"
invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method private onLogout()V
.registers 10
const/4 v8, 0x0
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getLoginStatus()Lco/vine/android/client/Session$LoginStatus;
move-result-object v4
sget-object v5, Lco/vine/android/client/Session$LoginStatus;->LOGGED_OUT:Lco/vine/android/client/Session$LoginStatus;
invoke-virtual {v4, v5}, Lco/vine/android/client/Session$LoginStatus;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_e
:goto_d
return-void
:cond_e
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v4
invoke-virtual {v4}, Lco/vine/android/client/Session;->getSessionKey()Ljava/lang/String;
move-result-object v1
iget-object v4, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v4}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-virtual {p0}, Lco/vine/android/client/AppController;->clearDbAll()Ljava/lang/String;
invoke-virtual {p0}, Lco/vine/android/client/AppController;->clearFileCache()V
iget-object v4, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
iget-object v5, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v6
invoke-static {v5, v6, v7, v1}, Lco/vine/android/service/GCMRegistrationService;->getUnregisterIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
iget-object v4, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v4}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v4
const-string v5, "last_user_id"
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v6
invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v4, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
const-wide/16 v5, 0x0
invoke-static {v4, v8, v8, v5, v6}, Lco/vine/android/provider/SettingsManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
invoke-static {}, Lco/vine/android/client/VineAccountHelper;->getCachedActiveSession()Lco/vine/android/client/Session;
move-result-object v0
iget-object v4, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lco/vine/android/client/VineAccountHelper;->removeAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;
if-eqz v0, :cond_6c
invoke-virtual {v0}, Lco/vine/android/client/Session;->logout()V
:cond_6c
new-instance v3, Landroid/content/Intent;
const-string v4, "co.vine.android.session.logout"
invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
const-string v5, "co.vine.android.BROADCAST"
invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
invoke-static {}, Lco/vine/android/AppImpl;->getInstance()Lco/vine/android/AppImpl;
move-result-object v4
iget-object v5, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-virtual {v4, v5}, Lco/vine/android/AppImpl;->getClearNotificationsIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v2
if-eqz v2, :cond_8b
iget-object v4, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:cond_8b
iget-object v4, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v4}, Lco/vine/android/StartActivity;->toStart(Landroid/content/Context;)V
goto/16 :goto_d
.end method
.method private performCleanup(Lco/vine/android/client/Session;J)Ljava/lang/String;
.registers 6
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "time"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x1d
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static setPendingFacebookToken(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "KEY_FACEBOOK_TOKEN"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public static startTwitterAuthWithFinish(Lcom/twitter/android/sdk/Twitter;Landroid/app/Activity;)V
.registers 6
const/4 v3, 0x2
const/4 v1, 0x1
:try_start_2
invoke-virtual {p0, p1, v1}, Lcom/twitter/android/sdk/Twitter;->startAuthActivityForResult(Landroid/app/Activity;I)Z
move-result v1
if-nez v1, :cond_10
invoke-static {p1}, Lco/vine/android/LoginTwitterActivity;->getIntentWithFinish(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v1
const/4 v2, 0x2
invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
:goto_10
:try_end_10
.catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_10} :catch_11
:cond_10
return-void
:catch_11
move-exception v0
invoke-static {p1}, Lco/vine/android/LoginTwitterActivity;->getIntentWithFinish(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_10
.end method
.method public abortAllRequests()V
.registers 3
iget-object v0, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/service/VineServiceConnection;
invoke-virtual {v0}, Lco/vine/android/service/VineServiceConnection;->cancelAll()V
const/16 v0, 0x70
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v1
invoke-direct {p0, v0, v1}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public acceptFollowRequest(Lco/vine/android/client/Session;J)Ljava/lang/String;
.registers 7
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "accept"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x32
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public acceptRejectRequest(Lco/vine/android/client/Session;J)Ljava/lang/String;
.registers 7
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "accept"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x32
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public addListener(Lco/vine/android/client/AppSessionListener;)V
.registers 3
iget-object v0, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_8
.end method
.method public attemptCancelVideoFetchRequest(Lco/vine/android/util/video/VideoKey;)Z
.registers 3
iget-object v0, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;
invoke-virtual {v0, p1}, Lco/vine/android/util/video/VideoCache;->cancel(Ljava/lang/Object;)I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public blockUser(J)Ljava/lang/String;
.registers 7
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "block_user_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x2f
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public bulkFollowUsers(Lco/vine/android/client/Session;Ljava/util/ArrayList;)Ljava/lang/String;
.registers 5
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-static {v1, p1}, Lco/vine/android/client/AppController;->injectServiceBundle(Landroid/os/Bundle;Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "follow_ids"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const/16 v1, 0x6b
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.registers 8
const-string v2, "Session state has changed: {}."
invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/SessionState;->name()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, p3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_15
if-ltz v0, :cond_23
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/client/AppSessionListener;
invoke-virtual {v2, p1, p2, p3}, Lco/vine/android/client/AppSessionListener;->onFacebookSessionChanged(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
add-int/lit8 v0, v0, -0x1
goto :goto_15
:cond_23
return-void
.end method
.method public clearDbAll()Ljava/lang/String;
.registers 3
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const/16 v1, 0x3b
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public clearDbCache(Z)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "notify"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x3a
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public clearFacebookToken()V
.registers 3
invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;
move-result-object v0
if-nez v0, :cond_c
iget-object v1, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/facebook/Session;->openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;
move-result-object v0
:cond_c
if-eqz v0, :cond_11
invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V
:cond_11
return-void
.end method
.method public clearFileCache()V
.registers 2
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v0}, Lco/vine/android/client/AppController;->clearFileCache(Landroid/content/Context;)V
return-void
.end method
.method public clearGcmRegId(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
.registers 7
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "gcmRegId"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "user_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "s_key"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x3d
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public clearImageCacheFromMemory()V
.registers 2
iget-object v0, p0, Lco/vine/android/client/AppController;->mPhotoImagesCache:Lco/vine/android/util/image/PhotoImagesCache;
invoke-virtual {v0}, Lco/vine/android/util/image/PhotoImagesCache;->clearMemory()V
return-void
.end method
.method public clearInboxPageCursors()V
.registers 3
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const/16 v1, 0x68
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public clearPushNotifications(I)V
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "notification_display_id"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/16 v1, 0x3e
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public clearUnreadMessageCount(J)V
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "conversation_row_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x5e
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
invoke-virtual {p0}, Lco/vine/android/client/AppController;->fetchActivityCounts()Ljava/lang/String;
return-void
.end method
.method public connectToFacebookInitialize(Landroid/support/v4/app/Fragment;)V
.registers 8
sget-boolean v4, Lco/vine/android/client/AppController;->SINGLE_FACEBOOK_DIALOG:Z
if-eqz v4, :cond_8
invoke-virtual {p0, p1}, Lco/vine/android/client/AppController;->connectToFacebookPublish(Landroid/support/v4/app/Fragment;)V
:cond_7
:goto_7
return-void
:cond_8
const/4 v4, 0x1
sput-boolean v4, Lcom/facebook/AuthorizationClient;->CLEAR_COOKIE:Z
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
new-instance v4, Lcom/facebook/Session$Builder;
invoke-direct {v4, v0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V
const v5, 0x7f0e00d6
invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;
move-result-object v4
new-instance v5, Lcom/facebook/SharedPreferencesTokenCachingStrategy;
invoke-direct {v5, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V
invoke-virtual {v4, v5}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;
move-result-object v3
invoke-static {v3}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V
invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z
move-result v4
if-nez v4, :cond_7
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v4, "basic_info"
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/facebook/Session$OpenRequest;
invoke-direct {v1, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V
invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;
sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;
invoke-virtual {v1, v4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;
invoke-virtual {v3, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V
goto :goto_7
.end method
.method public connectToFacebookPublish(Landroid/support/v4/app/Fragment;)V
.registers 8
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
new-instance v4, Lcom/facebook/Session$Builder;
invoke-direct {v4, v0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V
const v5, 0x7f0e00d6
invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;
move-result-object v4
new-instance v5, Lcom/facebook/SharedPreferencesTokenCachingStrategy;
invoke-direct {v5, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V
invoke-virtual {v4, v5}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;
move-result-object v3
invoke-static {v3}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V
invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z
move-result v4
if-nez v4, :cond_47
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v4, "publish_actions"
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/facebook/Session$OpenRequest;
invoke-direct {v1, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V
sget-object v4, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;
invoke-virtual {v1, v4}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;
invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;
sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;
invoke-virtual {v1, v4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;
invoke-virtual {v3, v1}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V
:cond_47
return-void
.end method
.method public connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
.registers 9
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "username"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "key"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "secret"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "user_id"
invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x20
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public deactivateAccount()Ljava/lang/String;
.registers 3
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const/16 v1, 0x43
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public deleteComment(JLjava/lang/String;)Ljava/lang/String;
.registers 6
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "comment_id"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x1e
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public deleteConversation(J)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "conversation_row_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x50
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public deleteMessage(J)V
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "message_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x5f
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public deletePost(Lco/vine/android/client/Session;J)Ljava/lang/String;
.registers 6
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x1f
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public deleteSession(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "s_key"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x40
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public determineCleanup(Lco/vine/android/client/Session;)V
.registers 12
const-wide/16 v8, 0x0
iget-object v6, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
const-string v7, "last_cleanup"
invoke-static {v6, v7}, Lco/vine/android/util/Util;->getSharedPrefs(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v5
const-string v6, "last_cleanup"
invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v3
cmp-long v6, v3, v8
if-lez v6, :cond_24
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long/2addr v6, v3
const-wide/32 v8, 0x36ee80
cmp-long v6, v6, v8
if-lez v6, :cond_23
invoke-direct {p0, p1, v3, v4}, Lco/vine/android/client/AppController;->performCleanup(Lco/vine/android/client/Session;J)Ljava/lang/String;
:cond_23
:goto_23
return-void
:cond_24
invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-string v6, "last_cleanup"
invoke-interface {v2, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_23
.end method
.method public determineServerStatus()V
.registers 14
const-wide/32 v7, 0x36ee80
const-wide/16 v11, 0x0
iget-object v9, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v9}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v4
const-string v9, "server_upload_last_refresh"
invoke-interface {v4, v9, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
sub-long v0, v9, v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
sub-long v5, v9, v0
cmp-long v9, v2, v11
if-lez v9, :cond_25
cmp-long v9, v0, v7
if-lez v9, :cond_4c
:cond_25
invoke-virtual {p0}, Lco/vine/android/client/AppController;->fetchServerStatus()Ljava/lang/String;
invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v9
const-string v10, "server_upload_last_refresh"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v9
invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;
if-eqz v9, :cond_4b
iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;
iget-object v10, p0, Lco/vine/android/client/AppController;->mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;
invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;
iget-object v10, p0, Lco/vine/android/client/AppController;->mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;
invoke-virtual {v9, v10, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_4b
:cond_4b
return-void
:cond_4c
iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;
if-eqz v9, :cond_4b
iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;
iget-object v10, p0, Lco/vine/android/client/AppController;->mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;
invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v9, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;
iget-object v10, p0, Lco/vine/android/client/AppController;->mServerStatusRunnable:Lco/vine/android/client/AppController$ServerStatusRunnable;
cmp-long v11, v5, v11
if-lez v11, :cond_63
:goto_5f
invoke-virtual {v9, v10, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_4b
:cond_63
move-wide v5, v7
goto :goto_5f
.end method
.method public disableReposts(J)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x45
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public disconnectTwitter(Lco/vine/android/client/Session;)Ljava/lang/String;
.registers 4
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const/16 v1, 0x21
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public enableReposts(J)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x44
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public executeServiceRequest(ILandroid/os/Bundle;)V
.registers 3
invoke-direct {p0, p1, p2}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public expireTimeline(ZILjava/lang/String;)Ljava/lang/String;
.registers 6
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "also_fetch_posts"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "type"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "tag_name"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x2d
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public failRequest(Ljava/lang/String;ILandroid/os/Bundle;)V
.registers 10
const-string v0, "rid"
invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v3, 0x1c7
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move v2, p2
move-object v5, p3
invoke-virtual/range {v0 .. v5}, Lco/vine/android/client/AppController;->notifyListeners(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public fetchActivity(Lco/vine/android/client/Session;IJZZ)Ljava/lang/String;
.registers 9
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "page"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "follow_reqs"
invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "clear"
invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "time"
invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x14
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchActivityCounts()Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "s_owner_id"
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x51
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchAddressFriends(Lco/vine/android/client/Session;)Ljava/lang/String;
.registers 4
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const/16 v1, 0x10
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchChannels(I)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "page_type"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/16 v1, 0x35
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchClientFlags(Z)V
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "abort_requests"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x6f
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v2
invoke-direct {p0, v1, v2}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public fetchComments(JIJI)Ljava/lang/String;
.registers 9
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "page"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "time"
invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "size"
invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/16 v1, 0xc
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchConversation(IZJJZ)Ljava/lang/String;
.registers 10
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundleReadOnly()Landroid/os/Bundle;
move-result-object v0
const-string v1, "page_type"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "user_init"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "conversation_id"
invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "conversation_row_id"
invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "prefetch"
invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x4c
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchConversationRowIdFromSingleRecipient(Lco/vine/android/api/VineRecipient;I)V
.registers 7
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "network"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "recipient"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, "recipient_id"
iget-wide v2, p1, Lco/vine/android/api/VineRecipient;->contactId:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x5b
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public fetchConversationRowIdFromUserRemoteId(JI)V
.registers 7
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "network"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "recipient"
invoke-static {p1, p2}, Lco/vine/android/api/VineRecipient;->fromUser(J)Lco/vine/android/api/VineRecipient;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, "recipient_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x5b
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public fetchConversations(IZI)Ljava/lang/String;
.registers 6
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundleReadOnly()Landroid/os/Bundle;
move-result-object v0
const-string v1, "page_type"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "user_init"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "network"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/16 v1, 0x4a
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchFollowers(JIJ)Ljava/lang/String;
.registers 8
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "profile_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "page"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "time"
invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x16
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchFollowing(JIJ)Ljava/lang/String;
.registers 8
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "profile_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "page"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "time"
invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x17
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchFriends(II)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "page_type"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "type"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/16 v1, 0x52
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchFriendsTypeAhead(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "q"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x63
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchNotificationSettings()Ljava/lang/String;
.registers 3
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const/16 v1, 0x71
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchNotificationUsers(Lco/vine/android/client/Session;JIJ)Ljava/lang/String;
.registers 9
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "notification_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "page"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "time"
invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x6e
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchPendingNotificationCount(Lco/vine/android/client/Session;)Ljava/lang/String;
.registers 4
const/16 v0, 0x41
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v1
invoke-direct {p0, v0, v1}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public fetchPost(Lco/vine/android/client/Session;J)Ljava/lang/String;
.registers 6
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x1c
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchPostId(Lco/vine/android/client/Session;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_share_id"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x24
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchPostLikers(Lco/vine/android/client/Session;JIJ)Ljava/lang/String;
.registers 9
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "page"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "time"
invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0xb
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchPosts(Lco/vine/android/client/Session;IJIIJZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
.registers 15
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "size"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "type"
invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "page"
invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "time"
invoke-virtual {v0, v1, p7, p8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "profile_id"
invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "user_init"
invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
if-eqz p10, :cond_29
const-string v1, "tag_name"
invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_29
if-eqz p11, :cond_30
const-string v1, "sort"
invoke-virtual {v0, v1, p11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_30
const-string v1, "data"
invoke-virtual {v0, v1, p12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const/16 v1, 0xd
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchReviners(Lco/vine/android/client/Session;JIJ)Ljava/lang/String;
.registers 9
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "page"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "time"
invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x38
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchServerStatus()Ljava/lang/String;
.registers 3
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const/16 v1, 0x26
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchTagTypeahead(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "q"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x28
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchTwitterFriends(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "key"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "secret"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0xf
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchTwitterUser(Lco/vine/android/api/VineLogin;)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "login"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const/4 v1, 0x7
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchUser(J)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x15
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchUserId(Ljava/util/ArrayList;)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "vanity_url"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const/16 v1, 0x56
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchUserTypeahead(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "q"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x27
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public fetchUsersMe(J)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "s_owner_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0xa
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public followEditorsPicks(Z)V
.registers 6
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v2
invoke-direct {p0, v2}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
if-eqz p1, :cond_16
const/4 v1, 0x1
:goto_b
const-string v3, "should_follow_editors_picks"
invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/16 v3, 0x2c
invoke-direct {p0, v3, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
:cond_16
const/4 v1, 0x0
goto :goto_b
.end method
.method public followUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;
.registers 7
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "follow_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "notify"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x12
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public generateReqIdForCanceledCaptcha()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/service/VineServiceConnection;
invoke-virtual {v0}, Lco/vine/android/service/VineServiceConnection;->generateRequestId()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getActiveId()J
.registers 3
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/client/Session;->getUserId()J
move-result-wide v0
return-wide v0
.end method
.method public getActiveSession()Lco/vine/android/client/Session;
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lco/vine/android/client/AppController;->getActiveSession(Z)Lco/vine/android/client/Session;
move-result-object v0
return-object v0
.end method
.method public getActiveSessionReadOnly()Lco/vine/android/client/Session;
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lco/vine/android/client/AppController;->getActiveSession(Z)Lco/vine/android/client/Session;
move-result-object v0
return-object v0
.end method
.method public getBlockedUsers()Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x2e
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getConversationRemoteId(J)Ljava/lang/String;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "conversation_row_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x4d
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getEditions()V
.registers 3
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const/16 v1, 0x46
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public getLoginStatus()Lco/vine/android/client/Session$LoginStatus;
.registers 2
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/client/Session;->getLoginStatus()Lco/vine/android/client/Session$LoginStatus;
move-result-object v0
return-object v0
.end method
.method public getPendingFacebookToken()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "KEY_FACEBOOK_TOKEN"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
.registers 6
iget-object v1, p1, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;
invoke-static {v1}, Lco/vine/android/util/Util;->isUrlLocal(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_13
iget-object v1, p0, Lco/vine/android/client/AppController;->mPhotoImagesCache:Lco/vine/android/util/image/PhotoImagesCache;
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v2
invoke-virtual {v1, v2, v3, p1}, Lco/vine/android/util/image/PhotoImagesCache;->getBitmap(JLco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v1
:goto_12
return-object v1
:cond_13
iget-object v1, p1, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_12
.end method
.method public getSession(Ljava/lang/String;)Lco/vine/android/client/Session;
.registers 3
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v0, p1}, Lco/vine/android/client/VineAccountHelper;->getSession(Landroid/content/Context;Ljava/lang/String;)Lco/vine/android/client/Session;
move-result-object v0
return-object v0
.end method
.method public getTwitter()Lcom/twitter/android/sdk/Twitter;
.registers 2
iget-object v0, p0, Lco/vine/android/client/AppController;->mTwitter:Lcom/twitter/android/sdk/Twitter;
return-object v0
.end method
.method public getTwitterAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "uri"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "key"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "secret"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x5
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getTypeaheadFetchThreshold(Ljava/lang/String;)I
.registers 3
const-string v0, "tag"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x3
:goto_9
return v0
:cond_a
const/4 v0, 0x2
goto :goto_9
.end method
.method public getTypeaheadMaxCompose()I
.registers 2
const/16 v0, 0x32
return v0
.end method
.method public getTypeaheadThrottle()J
.registers 3
const-wide/16 v0, 0x12c
return-wide v0
.end method
.method public getValidFacebookSession(Landroid/app/Activity;Z)Lcom/facebook/Session;
.registers 9
const/4 v4, 0x0
const/4 v3, 0x0
invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_22
const/4 v2, 0x1
:goto_9
if-nez v2, :cond_f
invoke-static {p1, v4, p0}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
move-result-object v0
:cond_f
if-eqz v0, :cond_1b
invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/SessionState;->isClosed()Z
move-result v4
if-eqz v4, :cond_24
:cond_1b
const-string v4, "There were no Facebook session."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move-object v0, v3
:goto_21
:cond_21
return-object v0
:cond_22
move v2, v4
goto :goto_9
:cond_24
invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V
invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;
move-result-object v1
const-string v4, "Old Facebook Session state : {}"
invoke-static {v4, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
sget-object v4, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;
if-eq v1, v4, :cond_3a
invoke-virtual {v1}, Lcom/facebook/SessionState;->isOpened()Z
move-result v4
if-eqz v4, :cond_62
:cond_3a
const-string v4, "State is created or opened."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;
move-result-object v4
const-string v5, "publish_actions"
invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_58
const-string v3, "Permission is good."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
if-nez v2, :cond_21
if-eqz p2, :cond_21
invoke-virtual {v0}, Lcom/facebook/Session;->close()V
goto :goto_21
:cond_58
invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V
const-string v4, "Permission missing."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move-object v0, v3
goto :goto_21
:cond_62
invoke-virtual {v0}, Lcom/facebook/Session;->close()V
const-string v4, "Session state is invalid."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move-object v0, v3
goto :goto_21
.end method
.method public getVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
.registers 6
iget-object v0, p1, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
invoke-static {v0}, Lco/vine/android/util/Util;->isUrlLocal(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v1
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, p1, v3}, Lco/vine/android/util/video/VideoCache;->getFile(JLco/vine/android/util/video/VideoKey;Z)Ljava/lang/String;
move-result-object v0
:goto_13
return-object v0
:cond_14
iget-object v0, p1, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
goto :goto_13
.end method
.method public handleServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V
.registers 15
const-string v0, "rid"
invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/service/VineServiceConnection;
invoke-virtual {v0, v1}, Lco/vine/android/service/VineServiceConnection;->remove(Ljava/lang/String;)Lco/vine/android/service/PendingAction;
move-result-object v6
const-string v0, "logged_out"
invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
const/4 v0, 0x6
if-eq p1, v0, :cond_1b
invoke-direct {p0}, Lco/vine/android/client/AppController;->onLogout()V
:goto_1a
:cond_1a
return-void
:cond_1b
const-string v0, "refresh_session"
const/4 v2, 0x0
invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_2d
const-string v0, "s_key"
invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/client/AppController;->refreshSessionKey(Ljava/lang/String;)V
:cond_2d
const-string v0, "captcha_url"
invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string v0, "captcha_url"
invoke-virtual {p4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
if-eqz v7, :cond_50
iget-object v0, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_40
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v9
check-cast v9, Lco/vine/android/client/AppSessionListener;
invoke-virtual {v9, v1, v7, v6}, Lco/vine/android/client/AppSessionListener;->onCaptchaRequired(Ljava/lang/String;Ljava/lang/String;Lco/vine/android/service/PendingAction;)V
goto :goto_40
:cond_50
move-object v0, p0
move v2, p1
move v3, p2
move-object v4, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lco/vine/android/client/AppController;->notifyListeners(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
goto :goto_1a
.end method
.method public ignoreConversation(J)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "conversation_row_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x4f
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public isConnectedToFacebook(Landroid/app/Activity;)Z
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lco/vine/android/client/AppController;->getValidFacebookSession(Landroid/app/Activity;Z)Lcom/facebook/Session;
move-result-object v1
if-eqz v1, :cond_8
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isLoggedIn()Z
.registers 3
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
const/4 v1, 0x0
invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->isLoggedIn(Landroid/content/Context;Z)Z
move-result v0
return v0
.end method
.method public isLoggedInReadOnly()Z
.registers 3
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
const/4 v1, 0x1
invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->isLoggedIn(Landroid/content/Context;Z)Z
move-result v0
return v0
.end method
.method public isPendingRequest(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lco/vine/android/client/AppController;->mServiceConnection:Lco/vine/android/service/VineServiceConnection;
invoke-virtual {v0, p1}, Lco/vine/android/service/VineServiceConnection;->isPending(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public likePost(Ljava/lang/String;Lco/vine/android/client/Session;JJLjava/lang/String;Z)Ljava/lang/String;
.registers 11
invoke-direct {p0, p2}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "user_id"
invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "username"
invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "notify"
invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-static {p3, p4, p1}, Lco/vine/android/util/FlurryUtils;->trackLikePost(JLjava/lang/String;)V
const/16 v1, 0x18
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public login(Lco/vine/android/client/Session;Lco/vine/android/api/VineLogin;Ljava/lang/String;Z)Ljava/lang/String;
.registers 7
sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGING_IN:Lco/vine/android/client/Session$LoginStatus;
invoke-virtual {p1, v1}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "login"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, "pass"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "reactivate"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/4 v1, 0x2
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public loginCheckTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;
.registers 9
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "username"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "key"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "secret"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "t_id"
invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "reactivate"
invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/4 v1, 0x6
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public loginComplete(Lco/vine/android/client/Session;ILandroid/os/Bundle;)Lco/vine/android/api/VineLogin;
.registers 12
const-string v0, "login"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v7
check-cast v7, Lco/vine/android/api/VineLogin;
if-eqz v7, :cond_2c
const-string v0, "a_name"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v0, "pass"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v0, "login"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v5
check-cast v5, Lco/vine/android/api/VineLogin;
const-string v0, "avatar_url"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
move-object v0, p0
move-object v1, p1
move v2, p2
invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Lco/vine/android/api/VineLogin;
move-result-object v0
:goto_2b
return-object v0
:cond_2c
const/4 v0, 0x0
goto :goto_2b
.end method
.method public loginComplete(Lco/vine/android/client/Session;ILjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Lco/vine/android/api/VineLogin;
.registers 14
const/16 v0, 0xc8
if-ne p2, v0, :cond_88
sget-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;
invoke-virtual {p1, v0}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V
iget v0, p5, Lco/vine/android/api/VineLogin;->loginType:I
packed-switch v0, :pswitch_data_8a
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v2, "Unsupported login type."
invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_16
move-object v1, p3
:goto_17
iget-wide v2, p5, Lco/vine/android/api/VineLogin;->userId:J
invoke-virtual {p1, v2, v3}, Lco/vine/android/client/Session;->setUserId(J)V
invoke-virtual {p1, p3}, Lco/vine/android/client/Session;->setName(Ljava/lang/String;)V
iget-object v0, p5, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;
invoke-virtual {p1, v0}, Lco/vine/android/client/Session;->setSessionKey(Ljava/lang/String;)V
invoke-virtual {p1, v1}, Lco/vine/android/client/Session;->setLoginEmail(Ljava/lang/String;)V
invoke-virtual {p1, p6}, Lco/vine/android/client/Session;->setAvatarUrl(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
move-object v2, p5
move-object v3, p4
move-object v4, p6
move-object v5, p3
invoke-static/range {v0 .. v5}, Lco/vine/android/client/VineAccountHelper;->createAccount(Landroid/content/Context;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
iget-wide v2, p5, Lco/vine/android/api/VineLogin;->userId:J
invoke-static {v0, v1, p3, v2, v3}, Lco/vine/android/provider/SettingsManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v2, "last_user_id"
const-wide/16 v3, 0x0
invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v2
iget-wide v4, p5, Lco/vine/android/api/VineLogin;->userId:J
cmp-long v0, v2, v4
if-eqz v0, :cond_62
invoke-virtual {p0}, Lco/vine/android/client/AppController;->clearFacebookToken()V
invoke-static {}, Lco/vine/android/AppImpl;->getInstance()Lco/vine/android/AppImpl;
move-result-object v0
iget-object v2, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-virtual {v0, v2}, Lco/vine/android/AppImpl;->getDiscardAllIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v6
if-eqz v6, :cond_62
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:cond_62
iget-object v0, p5, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;
if-eqz v0, :cond_7b
iget-object v0, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v2, "settings_edition"
iget-object v3, p5, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;
invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_7b
iget-wide v2, p5, Lco/vine/android/api/VineLogin;->userId:J
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setUserId(Ljava/lang/String;)V
:goto_84
return-object p5
:pswitch_85
iget-object v1, p5, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;
goto :goto_17
:cond_88
const/4 p5, 0x0
goto :goto_84
:pswitch_data_8a
.packed-switch 0x1
:pswitch_85
:pswitch_16
.end packed-switch
.end method
.method public loginWithxAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "username"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "pass"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x8
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public logout(Lco/vine/android/client/Session;)Ljava/lang/String;
.registers 4
invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginStatus()Lco/vine/android/client/Session$LoginStatus;
move-result-object v0
sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;
if-eq v0, v1, :cond_10
invoke-virtual {p1}, Lco/vine/android/client/Session;->getLoginStatus()Lco/vine/android/client/Session$LoginStatus;
move-result-object v0
sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGING_IN:Lco/vine/android/client/Session$LoginStatus;
if-ne v0, v1, :cond_1f
:cond_10
sget-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGING_OUT:Lco/vine/android/client/Session$LoginStatus;
invoke-virtual {p1, v0}, Lco/vine/android/client/Session;->setLoginStatus(Lco/vine/android/client/Session$LoginStatus;)V
const/4 v0, 0x3
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v1
invoke-direct {p0, v0, v1}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
:goto_1e
return-object v0
:cond_1f
const/4 v0, 0x0
goto :goto_1e
.end method
.method public markMessageLoopViewed(Lco/vine/android/api/VinePrivateMessage;)V
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "message"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const/16 v1, 0x54
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public mergePushNotification(Lco/vine/android/api/VineSingleNotification;Ljava/lang/String;)V
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "notification"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, "message"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x61
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public mergeSinglePost(Landroid/os/Bundle;)V
.registers 4
invoke-virtual {p0}, Lco/vine/android/client/AppController;->isLoggedInReadOnly()Z
move-result v0
if-eqz v0, :cond_13
const/16 v0, 0x39
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v1
invoke-static {p1, v1}, Lco/vine/android/client/AppController;->injectServiceBundle(Landroid/os/Bundle;Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v1
invoke-direct {p0, v0, v1}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
:cond_13
return-void
.end method
.method  notifyListeners(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
.registers 175
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
move-object/from16 v132, v0
packed-switch p2, :pswitch_data_12ba
:pswitch_9
:cond_9
:goto_9
return-void
:pswitch_a
:try_start_a
invoke-static {}, Lco/vine/android/client/VineAccountHelper;->getCachedActiveSession()Lco/vine/android/client/Session;
move-result-object v5
move-object/from16 v0, p0
move/from16 v1, p3
move-object/from16 v2, p5
invoke-virtual {v0, v5, v1, v2}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILandroid/os/Bundle;)Lco/vine/android/api/VineLogin;
:try_end_17
.catch Lco/vine/android/VineLoggingException; {:try_start_a .. :try_end_17} :catch_57
move-result-object v10
const-string v5, "error_code"
const/4 v6, -0x1
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v9
new-instance v150, Landroid/content/Intent;
const-string v5, "co.vine.android.session.login"
move-object/from16 v0, v150
invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
const-string v6, "co.vine.android.BROADCAST"
move-object/from16 v0, v150
invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_3d
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
invoke-static {}, Lco/vine/android/client/VineAccountHelper;->getCachedActiveSession()Lco/vine/android/client/Session;
move-result-object v5
move-object/from16 v6, p1
move/from16 v7, p3
move-object/from16 v8, p4
invoke-virtual/range {v4 .. v10}, Lco/vine/android/client/AppSessionListener;->onLoginComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILco/vine/android/api/VineLogin;)V
goto :goto_3d
:catch_57
move-exception v135
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
const v6, 0x7f0e00d7
invoke-static {v5, v6}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
invoke-static/range {v135 .. v135}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_9
:pswitch_66
invoke-direct/range {p0 .. p0}, Lco/vine/android/client/AppController;->onLogout()V
goto :goto_9
:pswitch_6a
const-string v5, "login"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v15
check-cast v15, Lco/vine/android/api/VineLogin;
const-string v5, "pass"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
const-string v5, "a_name"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
const-string v5, "avatar_url"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
const-string v5, "uri"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v129
check-cast v129, Landroid/net/Uri;
const-string v5, "s_key"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v146
const-string v5, "s_owner_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v86
const/16 v165, 0x0
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_b0
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object v11, v4
move-object/from16 v12, p1
move/from16 v13, p3
move-object/from16 v14, p4
invoke-virtual/range {v11 .. v18}, Lco/vine/android/client/AppSessionListener;->onSignUpComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const/16 v5, 0xc8
move/from16 v0, p3
if-ne v0, v5, :cond_ed
if-nez v165, :cond_ed
if-eqz v129, :cond_ed
const/16 v165, 0x1
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v161
move-object/from16 v0, v161
move-object/from16 v1, v146
invoke-virtual {v0, v1}, Lco/vine/android/client/Session;->setSessionKey(Ljava/lang/String;)V
move-object/from16 v0, v161
move-wide/from16 v1, v86
invoke-virtual {v0, v1, v2}, Lco/vine/android/client/Session;->setUserId(J)V
move-object/from16 v0, p0
move-object/from16 v1, v161
move-object/from16 v2, v129
invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->updateProfilePhoto(Lco/vine/android/client/Session;Landroid/net/Uri;)Ljava/lang/String;
:cond_ed
new-instance v150, Landroid/content/Intent;
const-string v5, "co.vine.android.session.login"
move-object/from16 v0, v150
invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
const-string v6, "co.vine.android.BROADCAST"
move-object/from16 v0, v150
invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
goto :goto_b0
:pswitch_102
const-string v5, "avatar_url"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_112
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, v18
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onProfilePhotoUpdatedComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
goto :goto_112
:pswitch_12a
const-string v5, "conversation_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v133
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_13a
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-wide/from16 v0, v133
invoke-virtual {v4, v0, v1}, Lco/vine/android/client/AppSessionListener;->onGetConversationRemoteIdComplete(J)V
goto :goto_13a
:pswitch_14c
const-string v5, "notificationSettings"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v153
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_15c
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move-object/from16 v1, v153
invoke-virtual {v4, v0, v1}, Lco/vine/android/client/AppSessionListener;->onGetNotificationSettingsComplete(Ljava/lang/String;Ljava/util/ArrayList;)V
goto :goto_15c
:pswitch_170
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_178
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onSaveNotificationSettingsComplete(Ljava/lang/String;ILjava/lang/String;)V
goto :goto_178
:pswitch_18e
const-string v5, "conversation_row_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v22
const-string v5, "recipient_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v20
const-string v5, "username"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v24
const-string v5, "am_following"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v25
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_1b6
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v19, v4
invoke-virtual/range {v19 .. v25}, Lco/vine/android/client/AppSessionListener;->onGetConversationRowIdComplete(JJLjava/lang/String;Z)V
goto :goto_1b6
:pswitch_1c8
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_1d0
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
const-string v5, "load_url"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v4, v0, v5}, Lco/vine/android/client/AppSessionListener;->onGetTwitterAuthUrlComplete(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1d0
:pswitch_1ea
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_1f2
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_22f
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
const-string v5, "error_code"
const/4 v6, -0x1
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v30
const-string v5, "a_exists"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v31
const-string v5, "user"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v32
check-cast v32, Lco/vine/android/api/VineUser;
const-string v5, "login"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v33
check-cast v33, Lco/vine/android/api/VineLogin;
move-object/from16 v26, v4
move-object/from16 v27, p1
move/from16 v28, p3
move-object/from16 v29, p4
invoke-virtual/range {v26 .. v33}, Lco/vine/android/client/AppSessionListener;->onCheckTwitterComplete(Ljava/lang/String;ILjava/lang/String;IZLco/vine/android/api/VineUser;Lco/vine/android/api/VineLogin;)V
goto :goto_1f2
:cond_22f
new-instance v150, Landroid/content/Intent;
const-string v5, "co.vine.android.session.login"
move-object/from16 v0, v150
invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
const-string v6, "co.vine.android.BROADCAST"
move-object/from16 v0, v150
invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
goto/16 :goto_9
:pswitch_245
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_24d
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
const-string v5, "t_user"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v30
check-cast v30, Lco/vine/android/api/TwitterUser;
const-string v5, "login"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v31
check-cast v31, Lco/vine/android/api/VineLogin;
move-object/from16 v26, v4
move-object/from16 v27, p1
move/from16 v28, p3
move-object/from16 v29, p4
invoke-virtual/range {v26 .. v31}, Lco/vine/android/client/AppSessionListener;->onGetTwitterUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)V
goto :goto_24d
:pswitch_279
const-string v5, "login"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v10
check-cast v10, Lco/vine/android/api/VineLogin;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_28b
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2, v10}, Lco/vine/android/client/AppSessionListener;->onTwitterxAuthComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V
goto :goto_28b
:pswitch_2a1
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_2a9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onResetPasswordComplete(Ljava/lang/String;ILjava/lang/String;)V
goto :goto_2a9
:pswitch_2bf
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_2c7
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
const-string v5, "conversation_row_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v30
move-object/from16 v26, v4
move-object/from16 v27, p1
move/from16 v28, p3
move-object/from16 v29, p4
invoke-virtual/range {v26 .. v31}, Lco/vine/android/client/AppSessionListener;->onIgnoreConversationComplete(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_2c7
:pswitch_2e7
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_2ef
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
const-string v5, "conversation_row_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v30
move-object/from16 v26, v4
move-object/from16 v27, p1
move/from16 v28, p3
move-object/from16 v29, p4
invoke-virtual/range {v26 .. v31}, Lco/vine/android/client/AppSessionListener;->onDeleteConversationComplete(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_2ef
:pswitch_30f
const-string v5, "count"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v31
const-string v5, "next_page"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v33
const-string v5, "previous_page"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v34
const-string v5, "time"
const-wide/16 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v35
const-string v5, "users"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v32
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_344
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
invoke-static {}, Lco/vine/android/client/VineAccountHelper;->getCachedActiveSession()Lco/vine/android/client/Session;
move-result-object v27
move-object/from16 v26, v4
move-object/from16 v28, p1
move/from16 v29, p3
move-object/from16 v30, p4
invoke-virtual/range {v26 .. v36}, Lco/vine/android/client/AppSessionListener;->onGetUsersComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;IIJ)V
goto :goto_344
:pswitch_360
const-string v5, "type"
const/4 v6, -0x1
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v41
const-string v5, "count"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v31
const-string v5, "size"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v52
const-string v5, "tag_name"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v45
const-string v5, "page_type"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v46
const-string v5, "next_page"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v47
const-string v5, "previous_page"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v48
const-string v5, "time"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v35
const-string v5, "title"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v53
const-string v5, "user_init"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v51
const-string v5, "in_memory"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v43
if-eqz v43, :cond_3ea
const-string v5, "posts"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v44
:goto_3c6
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_3ce
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_3ed
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v37, v4
move-object/from16 v38, p1
move/from16 v39, p3
move-object/from16 v40, p4
move/from16 v42, v31
move-wide/from16 v49, v35
invoke-virtual/range {v37 .. v53}, Lco/vine/android/client/AppSessionListener;->onGetTimeLineComplete(Ljava/lang/String;ILjava/lang/String;IIZLjava/util/ArrayList;Ljava/lang/String;IIIJZILjava/lang/String;)V
goto :goto_3ce
:cond_3ea
const/16 v44, 0x0
goto :goto_3c6
:cond_3ed
const/16 v5, 0xc8
move/from16 v0, p3
if-ne v0, v5, :cond_9
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v5
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lco/vine/android/client/AppController;->determineCleanup(Lco/vine/android/client/Session;)V
goto/16 :goto_9
:pswitch_3fe
const-string v5, "next_page"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v47
const-string v5, "time"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v35
const-string v5, "comments"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v61
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_41e
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v54, v4
move-object/from16 v55, p1
move/from16 v56, p3
move-object/from16 v57, p4
move/from16 v58, v47
move-wide/from16 v59, v35
invoke-virtual/range {v54 .. v61}, Lco/vine/android/client/AppSessionListener;->onGetCommentsComplete(Ljava/lang/String;ILjava/lang/String;IJLjava/util/ArrayList;)V
goto :goto_41e
:pswitch_43a
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_442
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
const-string v5, "conversation_row_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v66
const-string v5, "resp_code"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v68
const-string v5, "empty"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v69
move-object/from16 v62, v4
move-object/from16 v63, p1
move/from16 v64, p3
move-object/from16 v65, p4
invoke-virtual/range {v62 .. v69}, Lco/vine/android/client/AppSessionListener;->onGetConversationComplete(Ljava/lang/String;ILjava/lang/String;JIZ)V
goto :goto_442
:pswitch_472
const-string v5, "post_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v66
const-string v5, "comment_obj"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v69
check-cast v69, Lco/vine/android/api/VineComment;
const-string v5, "comment"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v68
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_494
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v62, v4
move-object/from16 v63, p1
move/from16 v64, p3
move-object/from16 v65, p4
invoke-virtual/range {v62 .. v69}, Lco/vine/android/client/AppSessionListener;->onPostCommentComplete(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Lco/vine/android/api/VineComment;)V
goto :goto_494
:pswitch_4ac
const-string v5, "post_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v58
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_4bc
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v54, v4
move-object/from16 v55, p1
move/from16 v56, p3
move-object/from16 v57, p4
invoke-virtual/range {v54 .. v59}, Lco/vine/android/client/AppSessionListener;->onReportPostComplete(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_4bc
:pswitch_4d4
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v157
invoke-interface/range {v157 .. v157}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v135
const-string v5, "profile_post_count"
const/4 v6, 0x0
move-object/from16 v0, v157
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v155
const-string v5, "post_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v58
const-string v6, "profile_post_count"
if-lez v155, :cond_521
add-int/lit8 v5, v155, -0x1
:goto_4f7
move-object/from16 v0, v135
invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface/range {v135 .. v135}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_507
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v70, v4
move-object/from16 v71, p1
move-wide/from16 v72, v58
move/from16 v74, p3
move-object/from16 v75, p4
invoke-virtual/range {v70 .. v75}, Lco/vine/android/client/AppSessionListener;->onDeletePostComplete(Ljava/lang/String;JILjava/lang/String;)V
goto :goto_507
:cond_521
const/4 v5, 0x0
goto :goto_4f7
:pswitch_523
const-string v5, "comment_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v74
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_537
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v70, v4
move-object/from16 v71, p1
move/from16 v72, p3
move-object/from16 v73, p4
invoke-virtual/range {v70 .. v75}, Lco/vine/android/client/AppSessionListener;->onDeleteCommentComplete(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_537
:pswitch_54f
const-string v5, "user"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v82
check-cast v82, Lco/vine/android/api/VineUser;
const-string v5, "s_owner_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v80
if-eqz v82, :cond_697
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v157
invoke-interface/range {v157 .. v157}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v135
const-string v5, "settings_profile_name"
move-object/from16 v0, v82
iget-object v6, v0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v5, "settings_profile_description"
move-object/from16 v0, v82
iget-object v6, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v5, "settings_profile_location"
move-object/from16 v0, v82
iget-object v6, v0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v5, "settings_profile_phone"
move-object/from16 v0, v82
iget-object v6, v0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v5, "settings_profile_email"
move-object/from16 v0, v82
iget-object v6, v0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v5, "settings_profile_avatar_url"
move-object/from16 v0, v82
iget-object v6, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v5, "profile_follow_count"
move-object/from16 v0, v82
iget v6, v0, Lco/vine/android/api/VineUser;->followingCount:I
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v5, "profile_follower_count"
move-object/from16 v0, v82
iget v6, v0, Lco/vine/android/api/VineUser;->followerCount:I
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v5, "profile_authored_post_count"
move-object/from16 v0, v82
iget v6, v0, Lco/vine/android/api/VineUser;->authoredPostCount:I
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v5, "profile_post_count"
move-object/from16 v0, v82
iget v6, v0, Lco/vine/android/api/VineUser;->postCount:I
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v5, "profile_like_count"
move-object/from16 v0, v82
iget v6, v0, Lco/vine/android/api/VineUser;->likeCount:I
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v5, "profile_loop_count"
move-object/from16 v0, v82
iget-wide v6, v0, Lco/vine/android/api/VineUser;->loopCount:J
move-object/from16 v0, v135
invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v6, "settings_twitter_connected"
move-object/from16 v0, v82
iget v5, v0, Lco/vine/android/api/VineUser;->twitterConnected:I
const/4 v7, 0x1
if-ne v5, v7, :cond_6b7
const/4 v5, 0x1
:goto_5fd
move-object/from16 v0, v135
invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v6, "settings_follow_editors_picks"
move-object/from16 v0, v82
iget v5, v0, Lco/vine/android/api/VineUser;->includePromoted:I
const/4 v7, 0x1
if-ne v5, v7, :cond_6ba
const/4 v5, 0x1
:goto_60c
move-object/from16 v0, v135
invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v5, "settings_private"
invoke-virtual/range {v82 .. v82}, Lco/vine/android/api/VineUser;->isPrivate()Z
move-result v6
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v5, "profile_email_verified"
invoke-virtual/range {v82 .. v82}, Lco/vine/android/api/VineUser;->isEmailVerified()Z
move-result v6
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v5, "profile_phone_verified"
invoke-virtual/range {v82 .. v82}, Lco/vine/android/api/VineUser;->isPhoneVerified()Z
move-result v6
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v5, "pref_user_row_id"
move-object/from16 v0, v82
iget-wide v6, v0, Lco/vine/android/api/VineUser;->id:J
move-object/from16 v0, v135
invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-object/from16 v0, v82
iget-object v5, v0, Lco/vine/android/api/VineUser;->edition:Ljava/lang/String;
if-eqz v5, :cond_64e
const-string v5, "settings_edition"
move-object/from16 v0, v82
iget-object v6, v0, Lco/vine/android/api/VineUser;->edition:Ljava/lang/String;
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_64e
const-string v5, "accept_out_of_network_messages"
move-object/from16 v0, v82
iget-boolean v6, v0, Lco/vine/android/api/VineUser;->acceptsOutOfNetworkConversations:Z
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v6, "enable_address_book"
move-object/from16 v0, v82
iget-boolean v5, v0, Lco/vine/android/api/VineUser;->disableAddressBook:Z
if-nez v5, :cond_6bd
const/4 v5, 0x1
:goto_662
move-object/from16 v0, v135
invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v6, "email_discoverable"
move-object/from16 v0, v82
iget-boolean v5, v0, Lco/vine/android/api/VineUser;->hiddenEmail:Z
if-nez v5, :cond_6bf
const/4 v5, 0x1
:goto_670
move-object/from16 v0, v135
invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v6, "phone_discoverable"
move-object/from16 v0, v82
iget-boolean v5, v0, Lco/vine/android/api/VineUser;->hiddenPhoneNumber:Z
if-nez v5, :cond_6c1
const/4 v5, 0x1
:goto_67e
move-object/from16 v0, v135
invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-object/from16 v0, v82
iget v5, v0, Lco/vine/android/api/VineUser;->profileBackground:I
if-gez v5, :cond_6c3
sget v159, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
:goto_68b
const-string v5, "profile_background"
move-object/from16 v0, v135
move/from16 v1, v159
invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface/range {v135 .. v135}, Landroid/content/SharedPreferences$Editor;->apply()V
:cond_697
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_69f
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v76, v4
move-object/from16 v77, p1
move/from16 v78, p3
move-object/from16 v79, p4
invoke-virtual/range {v76 .. v82}, Lco/vine/android/client/AppSessionListener;->onGetUsersMeComplete(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineUser;)V
goto :goto_69f
:cond_6b7
const/4 v5, 0x0
goto/16 :goto_5fd
:cond_6ba
const/4 v5, 0x0
goto/16 :goto_60c
:cond_6bd
const/4 v5, 0x0
goto :goto_662
:cond_6bf
const/4 v5, 0x0
goto :goto_670
:cond_6c1
const/4 v5, 0x0
goto :goto_67e
:cond_6c3
move-object/from16 v0, v82
iget v0, v0, Lco/vine/android/api/VineUser;->profileBackground:I
move/from16 v159, v0
goto :goto_68b
:pswitch_6ca
const-string v5, "count"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v31
const-string v5, "users"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v32
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_6e3
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v27, v4
move-object/from16 v28, p1
move/from16 v29, p3
move-object/from16 v30, p4
invoke-virtual/range {v27 .. v32}, Lco/vine/android/client/AppSessionListener;->onGetTwitterFriendsComplete(Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;)V
goto :goto_6e3
:pswitch_6fb
const-string v5, "count"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v31
const-string v5, "users"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v32
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_714
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v27, v4
move-object/from16 v28, p1
move/from16 v29, p3
move-object/from16 v30, p4
invoke-virtual/range {v27 .. v32}, Lco/vine/android/client/AppSessionListener;->onGetAddressFriendsComplete(Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;)V
goto :goto_714
:pswitch_72c
const-string v5, "follow_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v86
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v84
const/16 v85, 0xa
const/16 v88, 0x1
const/16 v89, 0x1
const-wide/16 v90, 0x0
const/16 v92, 0x0
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v93
const/16 v94, 0x0
const/16 v95, 0x0
move-object/from16 v83, p0
invoke-virtual/range {v83 .. v95}, Lco/vine/android/client/AppController;->fetchPosts(Lco/vine/android/client/Session;IJIIJZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v157
invoke-interface/range {v157 .. v157}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v135
const-string v5, "profile_follow_count"
const-string v6, "profile_follow_count"
const/4 v7, 0x0
move-object/from16 v0, v157
invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v6
add-int/lit8 v6, v6, 0x1
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface/range {v135 .. v135}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_77c
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v88, v4
move-object/from16 v89, p1
move/from16 v90, p3
move-object/from16 v91, p4
move-wide/from16 v92, v86
invoke-virtual/range {v88 .. v93}, Lco/vine/android/client/AppSessionListener;->onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_77c
:pswitch_796
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_79e
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onBulkFollowComplete(Ljava/lang/String;ILjava/lang/String;)V
goto :goto_79e
:pswitch_7b4
const-string v5, "follow_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v86
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v5
move-object/from16 v0, p0
move-wide/from16 v1, v86
invoke-virtual {v0, v5, v1, v2}, Lco/vine/android/client/AppController;->removeFollowPosts(Lco/vine/android/client/Session;J)Ljava/lang/String;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v157
invoke-interface/range {v157 .. v157}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v135
const-string v5, "profile_follow_count"
const/4 v6, 0x0
move-object/from16 v0, v157
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v155
const-string v6, "profile_follow_count"
if-lez v155, :cond_80c
add-int/lit8 v5, v155, -0x1
:goto_7e2
move-object/from16 v0, v135
invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface/range {v135 .. v135}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_7f2
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v88, v4
move-object/from16 v89, p1
move/from16 v90, p3
move-object/from16 v91, p4
move-wide/from16 v92, v86
invoke-virtual/range {v88 .. v93}, Lco/vine/android/client/AppSessionListener;->onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_7f2
:cond_80c
const/4 v5, 0x0
goto :goto_7e2
:pswitch_80e
const-string v5, "should_follow_editors_picks"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v162
if-nez v162, :cond_84b
const/4 v5, 0x1
const/4 v6, 0x1
invoke-static {}, Lco/vine/android/client/VineAccountHelper;->getCachedActiveSession()Lco/vine/android/client/Session;
move-result-object v7
invoke-virtual {v7}, Lco/vine/android/client/Session;->getUserId()J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v7
move-object/from16 v0, p0
invoke-virtual {v0, v5, v6, v7}, Lco/vine/android/client/AppController;->expireTimeline(ZILjava/lang/String;)Ljava/lang/String;
:goto_82b
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_833
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v162
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onUpdateFollowEditorsPicksComplete(Ljava/lang/String;ILjava/lang/String;Z)V
goto :goto_833
:cond_84b
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v89
const/16 v90, 0xa
const-wide/16 v91, 0x0
const/16 v93, 0x1
const/16 v94, 0x1
const-wide/16 v95, 0x0
const/16 v97, 0x1
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v98
const/16 v99, 0x0
const/16 v100, 0x0
move-object/from16 v88, p0
invoke-virtual/range {v88 .. v100}, Lco/vine/android/client/AppController;->fetchPosts(Lco/vine/android/client/Session;IJIIJZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
goto :goto_82b
:pswitch_86d
const-string v5, "notifications"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v92
check-cast v92, Lco/vine/android/api/VinePagedData;
const-string v5, "follow_requests"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v93
check-cast v93, Lco/vine/android/api/VinePagedData;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_889
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v88, v4
move-object/from16 v89, p1
move/from16 v90, p3
move-object/from16 v91, p4
invoke-virtual/range {v88 .. v93}, Lco/vine/android/client/AppSessionListener;->onGetActivityComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VinePagedData;Lco/vine/android/api/VinePagedData;)V
goto :goto_889
:pswitch_8a1
const-string v5, "count"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v31
const-string v5, "messages_count"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v152
const-string v5, "follow_reqs_c"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v99
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v5
invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v137
const-string v5, "settings_follow_pref_count"
move-object/from16 v0, v137
move/from16 v1, v99
invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v5, "settings_unread_messages_count"
move-object/from16 v0, v137
move/from16 v1, v152
invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface/range {v137 .. v137}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_8e3
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v94, v4
move-object/from16 v95, p1
move/from16 v96, p3
move-object/from16 v97, p4
move/from16 v98, v31
invoke-virtual/range {v94 .. v99}, Lco/vine/android/client/AppSessionListener;->onGetActivityCountComplete(Ljava/lang/String;ILjava/lang/String;II)V
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v152
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onGetMessageCountComplete(Ljava/lang/String;ILjava/lang/String;I)V
goto :goto_8e3
:pswitch_908
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_910
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
invoke-virtual {v4, v0}, Lco/vine/android/client/AppSessionListener;->onRemoveUsersComplete(Ljava/lang/String;)V
goto :goto_910
:pswitch_922
const-string v5, "user"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v166
check-cast v166, Lco/vine/android/api/VineUser;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_934
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, v166
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onGetUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineUser;)V
goto :goto_934
:pswitch_94c
const-string v5, "avatar_url"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_95c
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, v18
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onUpdateProfileComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
goto :goto_95c
:pswitch_974
const-string v5, "edition"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v136
const-string v5, "Edition update success. New edition is {}"
move-object/from16 v0, v136
invoke-static {v5, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const/16 v5, 0xc8
move/from16 v0, p3
if-ne v0, v5, :cond_9a1
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v5
invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v137
const-string v5, "settings_edition"
move-object/from16 v0, v137
move-object/from16 v1, v136
invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface/range {v137 .. v137}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_9a1
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_9a9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9c1
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, v136
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onUpdateEditionComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
goto :goto_9a9
:cond_9c1
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
new-instance v6, Landroid/content/Intent;
const-string v7, "action_edition_updated"
invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v7, "co.vine.android.BROADCAST"
invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
goto/16 :goto_9
:pswitch_9d3
const-string v5, "accept_oon"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v127
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_9e3
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v127
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onUpdateAcceptOonComplete(Ljava/lang/String;ILjava/lang/String;Z)V
goto :goto_9e3
:pswitch_9fb
const-string v5, "enable"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v139
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_a0b
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v139
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onUpdateEnableAddressBookComplete(Ljava/lang/String;ILjava/lang/String;Z)V
goto :goto_a0b
:pswitch_a23
const-string v5, "enable"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v42
const-string v5, "type"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v41
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_a3b
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v37, v4
move-object/from16 v38, p1
move/from16 v39, p3
move-object/from16 v40, p4
invoke-virtual/range {v37 .. v42}, Lco/vine/android/client/AppSessionListener;->onUpdateDiscoverability(Ljava/lang/String;ILjava/lang/String;IZ)V
goto :goto_a3b
:pswitch_a53
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
const-string v6, "last_cleanup"
invoke-static {v5, v6}, Lco/vine/android/util/Util;->getSharedPrefs(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v157
invoke-interface/range {v157 .. v157}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v137
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v147
const-string v5, "last_cleanup"
move-object/from16 v0, v137
move-wide/from16 v1, v147
invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface/range {v137 .. v137}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto/16 :goto_9
:pswitch_a73
const-string v5, "username"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v24
const-string v5, "key"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v105
const-string v5, "secret"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v106
const-string v5, "user_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v86
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_a9b
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v100, v4
move-object/from16 v101, p1
move/from16 v102, p3
move-object/from16 v103, p4
move-object/from16 v104, v24
move-wide/from16 v107, v86
invoke-virtual/range {v100 .. v108}, Lco/vine/android/client/AppSessionListener;->onConnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
goto :goto_a9b
:pswitch_ab7
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_abf
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onDisconnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;)V
goto :goto_abf
:pswitch_ad5
const-string v5, "post_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v58
const/16 v5, 0xc8
move/from16 v0, p3
if-ne v0, v5, :cond_b04
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v157
invoke-interface/range {v157 .. v157}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v135
const-string v5, "profile_like_count"
const-string v6, "profile_like_count"
const/4 v7, 0x0
move-object/from16 v0, v157
invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v6
add-int/lit8 v6, v6, 0x1
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface/range {v135 .. v135}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_b04
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_b0c
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v54, v4
move-object/from16 v55, p1
move/from16 v56, p3
move-object/from16 v57, p4
invoke-virtual/range {v54 .. v59}, Lco/vine/android/client/AppSessionListener;->onLikePost(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_b0c
:pswitch_b24
const-string v5, "post_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v58
const/16 v5, 0xc8
move/from16 v0, p3
if-ne v0, v5, :cond_b55
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v157
invoke-interface/range {v157 .. v157}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v135
const-string v5, "profile_like_count"
const/4 v6, 0x0
move-object/from16 v0, v157
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v155
const-string v6, "profile_like_count"
if-lez v155, :cond_b75
add-int/lit8 v5, v155, -0x1
:goto_b4d
move-object/from16 v0, v135
invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface/range {v135 .. v135}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_b55
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_b5d
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v54, v4
move-object/from16 v55, p1
move/from16 v56, p3
move-object/from16 v57, p4
invoke-virtual/range {v54 .. v59}, Lco/vine/android/client/AppSessionListener;->onUnlikePost(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_b5d
:cond_b75
const/4 v5, 0x0
goto :goto_b4d
:pswitch_b77
const-string v5, "post_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v58
const-string v5, "repost"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v60
check-cast v60, Lco/vine/android/api/VineRepost;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_b91
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v54, v4
move-object/from16 v55, p1
move/from16 v56, p3
move-object/from16 v57, p4
invoke-virtual/range {v54 .. v60}, Lco/vine/android/client/AppSessionListener;->onRevine(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineRepost;)V
goto :goto_b91
:pswitch_ba9
const-string v5, "post_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v58
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_bb9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v54, v4
move-object/from16 v55, p1
move/from16 v56, p3
move-object/from16 v57, p4
invoke-virtual/range {v54 .. v59}, Lco/vine/android/client/AppSessionListener;->onUnrevine(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_bb9
:pswitch_bd1
const-string v5, "post_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v58
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_be1
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v54, v4
move-object/from16 v55, p1
move/from16 v56, p3
move-object/from16 v57, p4
invoke-virtual/range {v54 .. v59}, Lco/vine/android/client/AppSessionListener;->onGetPostIdComplete(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_be1
:pswitch_bf9
const-string v5, "user_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v86
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_c09
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v107, v4
move-object/from16 v108, p1
move/from16 v109, p3
move-object/from16 v110, p4
move-wide/from16 v111, v86
invoke-virtual/range {v107 .. v112}, Lco/vine/android/client/AppSessionListener;->onGetUserIdComplete(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_c09
:pswitch_c23
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_c2b
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
const-string v5, "post"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v5
check-cast v5, Lco/vine/android/api/VinePost;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2, v5}, Lco/vine/android/client/AppSessionListener;->onGetSinglePostComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VinePost;)V
goto :goto_c2b
:pswitch_c4b
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_c53
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onConnectFacebookComplete(Ljava/lang/String;ILjava/lang/String;)V
goto :goto_c53
:pswitch_c69
const-string v5, "user_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v86
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_c79
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v107, v4
move-object/from16 v108, p1
move/from16 v109, p3
move-object/from16 v110, p4
move-wide/from16 v111, v86
invoke-virtual/range {v107 .. v112}, Lco/vine/android/client/AppSessionListener;->onGcmRegistrationComplete(Ljava/lang/String;ILjava/lang/String;J)V
goto :goto_c79
:pswitch_c93
const-string v5, "s_key"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lco/vine/android/client/AppController;->deleteSession(Ljava/lang/String;)Ljava/lang/String;
goto/16 :goto_9
:pswitch_ca2
const-string v5, "notifications"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v154
const-string v5, "notification"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v149
check-cast v149, Lco/vine/android/api/VineSingleNotification;
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_cbc
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, v149
move-object/from16 v1, v154
invoke-virtual {v4, v0, v1}, Lco/vine/android/client/AppSessionListener;->onMergeNotificationComplete(Lco/vine/android/api/VineSingleNotification;Ljava/util/ArrayList;)V
goto :goto_cbc
:pswitch_cd0
const-string v5, "server_status"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v163
check-cast v163, Lco/vine/android/api/ServerStatus;
const/16 v5, 0xc8
move/from16 v0, p3
if-ne v0, v5, :cond_9
if-eqz v163, :cond_9
move-object/from16 v0, v163
iget-object v5, v0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_9
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v157
invoke-interface/range {v157 .. v157}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v135
const-string v5, "server_upload_type"
move-object/from16 v0, v163
iget-object v6, v0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;
move-object/from16 v0, v135
invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface/range {v135 .. v135}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto/16 :goto_9
:pswitch_d08
const-string v5, "count"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v31
const-string v5, "next_page"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v33
const-string v5, "previous_page"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v34
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_d2b
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v107, v4
move-object/from16 v108, p1
move/from16 v109, p3
move-object/from16 v110, p4
move/from16 v111, v31
move/from16 v112, v33
move/from16 v113, v34
invoke-virtual/range {v107 .. v113}, Lco/vine/android/client/AppSessionListener;->onUserSearchComplete(Ljava/lang/String;ILjava/lang/String;III)V
goto :goto_d2b
:pswitch_d49
const-string v5, "q"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v111
const-string v5, "users"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v32
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_d61
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v107, v4
move-object/from16 v108, p1
move/from16 v109, p3
move-object/from16 v110, p4
move-object/from16 v112, v32
invoke-virtual/range {v107 .. v112}, Lco/vine/android/client/AppSessionListener;->onGetUserTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
goto :goto_d61
:pswitch_d7b
const-string v5, "q"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v111
const-string v5, "users"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v32
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_d93
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v107, v4
move-object/from16 v108, p1
move/from16 v109, p3
move-object/from16 v110, p4
move-object/from16 v112, v32
invoke-virtual/range {v107 .. v112}, Lco/vine/android/client/AppSessionListener;->onGetFriendsTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
goto :goto_d93
:pswitch_dad
const-string v5, "q"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v111
const-string v5, "tags"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v112
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_dc5
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v107, v4
move-object/from16 v108, p1
move/from16 v109, p3
move-object/from16 v110, p4
invoke-virtual/range {v107 .. v112}, Lco/vine/android/client/AppSessionListener;->onGetTagTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
goto :goto_dc5
:pswitch_ddd
const-string v5, "count"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v31
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_dee
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v31
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onGetMessageInboxComplete(Ljava/lang/String;ILjava/lang/String;I)V
goto :goto_dee
:pswitch_e06
const-string v5, "count"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v31
const-string v5, "next_page"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v33
const-string v5, "previous_page"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v34
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_e29
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v113, v4
move-object/from16 v114, p1
move/from16 v115, p3
move-object/from16 v116, p4
move/from16 v117, v31
move/from16 v118, v33
move/from16 v119, v34
invoke-virtual/range {v113 .. v119}, Lco/vine/android/client/AppSessionListener;->onTagSearchComplete(Ljava/lang/String;ILjava/lang/String;III)V
goto :goto_e29
:pswitch_e47
const-string v5, "type"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v41
const-string v5, "tag_name"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v45
const-string v5, "also_fetch_posts"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v128
if-eqz v128, :cond_9
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v114
const/16 v115, 0xa
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v116
const/16 v119, 0x1
const-wide/16 v120, 0x0
const/16 v122, 0x1
const/16 v124, 0x0
const/16 v125, 0x0
move-object/from16 v113, p0
move/from16 v118, v41
move-object/from16 v123, v45
invoke-virtual/range {v113 .. v125}, Lco/vine/android/client/AppController;->fetchPosts(Lco/vine/android/client/Session;IJIIJZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
goto/16 :goto_9
:pswitch_e81
const-string v5, "response_success"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v164
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_e92
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v164
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onDeactivateAccountComplete(Ljava/lang/String;ILjava/lang/String;Z)V
goto :goto_e92
:pswitch_eaa
const-string v5, "blocked_users"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v130
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_eba
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, v130
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onGetBlockedUsersComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V
goto :goto_eba
:pswitch_ed2
const-string v5, "response_success"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v167
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_ee3
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v167
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onBlockUserComplete(Ljava/lang/String;ILjava/lang/String;Z)V
goto :goto_ee3
:pswitch_efb
const-string v5, "response_success"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v168
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_f0c
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v168
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onUnblockUserComplete(Ljava/lang/String;ILjava/lang/String;Z)V
goto :goto_f0c
:pswitch_f24
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_f2c
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onReportUserComplete(Ljava/lang/String;ILjava/lang/String;)V
goto :goto_f2c
:pswitch_f42
const-string v5, "response_success"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v164
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_f53
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v164
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onEnableUserRepostsComplete(Ljava/lang/String;ILjava/lang/String;Z)V
goto :goto_f53
:pswitch_f6b
const-string v5, "response_success"
const/4 v6, 0x0
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v164
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_f7c
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v164
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onDisableUserRepostsComplete(Ljava/lang/String;ILjava/lang/String;Z)V
goto :goto_f7c
:pswitch_f94
const-string v5, "user_id"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v86
const-string v5, "accept"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v117
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_fac
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v113, v4
move-object/from16 v114, p1
move/from16 v115, p3
move-object/from16 v116, p4
move-wide/from16 v118, v86
invoke-virtual/range {v113 .. v119}, Lco/vine/android/client/AppSessionListener;->onRespondFollowRequestComplete(Ljava/lang/String;ILjava/lang/String;ZJ)V
goto :goto_fac
:pswitch_fc6
const-string v5, "explicit"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v140
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_fd6
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v140
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onUpdateExplicitComplete(Ljava/lang/String;ILjava/lang/String;Z)V
goto :goto_fd6
:pswitch_fee
const-string v5, "priv"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v158
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_ffe
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_1016
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v158
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onUpdatePrivateComplete(Ljava/lang/String;ILjava/lang/String;Z)V
goto :goto_ffe
:cond_1016
:pswitch_1016
const-string v5, "channels"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v131
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_1026
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, v131
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onGetChannelsComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V
goto :goto_1026
:pswitch_103e
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_1046
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onSharePostComplete(Ljava/lang/String;ILjava/lang/String;)V
goto :goto_1046
:pswitch_105c
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_1064
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_107a
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onPostVideoComplete(Ljava/lang/String;ILjava/lang/String;)V
goto :goto_1064
:pswitch_107a
:cond_107a
const-string v5, "Share as a vm : {} {} {}."
invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
move-object/from16 v0, p1
move-object/from16 v1, p4
invoke-static {v5, v0, v6, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
goto/16 :goto_9
:pswitch_1089
const-string v5, "count"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v31
const/16 v5, 0xc8
move/from16 v0, p3
if-ne v0, v5, :cond_10ae
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v5
invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v5
const-string v6, "unread_notification_count"
move/from16 v0, v31
invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v5
invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_10ae
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_10b6
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move/from16 v3, v31
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onGetPendingNotificationCountComplete(Ljava/lang/String;ILjava/lang/String;I)V
goto :goto_10b6
:pswitch_10ce
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->clearFileCache()V
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_10d9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onClearCacheComplete(Ljava/lang/String;ILjava/lang/String;)V
goto :goto_10d9
:pswitch_10ef
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_10f7
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
const-string v5, "editions"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v5
check-cast v5, Ljava/util/ArrayList;
move/from16 v0, p3
invoke-virtual {v4, v0, v5}, Lco/vine/android/client/AppSessionListener;->onGetEditionsComplete(ILjava/util/ArrayList;)V
goto :goto_10f7
:pswitch_1113
const-string v5, "phone"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v156
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_1123
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, v156
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onRequestPhoneVerificationComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
goto :goto_1123
:pswitch_113b
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_1143
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onVerifyEmailComplete(Ljava/lang/String;ILjava/lang/String;)V
goto :goto_1143
:pswitch_1159
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_1161
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v0, v1, v2}, Lco/vine/android/client/AppSessionListener;->onVerifyPhoneNumberComplete(Ljava/lang/String;ILjava/lang/String;)V
goto :goto_1161
:pswitch_1177
const-string v5, "email"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v138
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_1187
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v0, p1
move/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, v138
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/client/AppSessionListener;->onRequestEmailVerificationComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
goto :goto_1187
:pswitch_119f
const-string v5, "loop_submission"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v160
check-cast v160, Lco/vine/android/api/VineLoopSubmissionResponse;
const/16 v5, 0xc8
move/from16 v0, p3
if-ne v0, v5, :cond_11dd
if-eqz v160, :cond_11dd
move-object/from16 v0, v160
iget v5, v0, Lco/vine/android/api/VineLoopSubmissionResponse;->submissionInterval:I
int-to-long v5, v5
const-wide/16 v7, 0x3e8
mul-long v144, v5, v7
const-string v5, "Changing loop interval from {} to {}"
move-object/from16 v0, p0
iget-wide v6, v0, Lco/vine/android/client/AppController;->mLoopCountSubmissionInterval:J
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-static/range {v144 .. v145}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
invoke-static {v5, v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
const-wide/32 v5, 0xea60
move-wide/from16 v0, v144
invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J
move-result-wide v5
move-object/from16 v0, p0
iput-wide v5, v0, Lco/vine/android/client/AppController;->mLoopCountSubmissionInterval:J
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->scheduleLoopCounts()V
goto/16 :goto_9
:cond_11dd
const-string v5, "loops"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v141
const-string v5, "Loop submission failed; re-saving {} pending loops"
invoke-interface/range {v141 .. v141}, Ljava/util/List;->size()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/LoopManager;->get(Landroid/content/Context;)Lco/vine/android/util/LoopManager;
move-result-object v151
move-object/from16 v0, v151
move-object/from16 v1, v141
invoke-virtual {v0, v1}, Lco/vine/android/util/LoopManager;->undoPopPendingLoops(Ljava/util/List;)V
goto/16 :goto_9
:try_start_1203
:pswitch_1203
invoke-static/range {v132 .. v132}, Lco/vine/android/util/ClientFlagsHelper;->setLastCheckMillis(Landroid/content/Context;)V
const-string v5, "client_flags"
move-object/from16 v0, p5
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v122
check-cast v122, Lco/vine/android/api/VineClientFlags;
const/16 v5, 0xc8
move/from16 v0, p3
if-ne v0, v5, :cond_9
if-eqz v122, :cond_9
move-object/from16 v0, v132
move-object/from16 v1, v122
invoke-static {v0, v1}, Lco/vine/android/util/ClientFlagsHelper;->updateClientFlags(Landroid/content/Context;Lco/vine/android/api/VineClientFlags;)V
invoke-static/range {v132 .. v132}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;
move-result-object v5
invoke-virtual/range {v132 .. v132}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
move-object/from16 v0, v122
invoke-virtual {v5, v0, v6}, Lco/vine/android/client/VineAPI;->refreshHostUrls(Lco/vine/android/api/VineClientFlags;Landroid/content/res/Resources;)V
const-string v5, "abort_requests"
const/4 v6, 0x1
move-object/from16 v0, p5
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v126
move-object/from16 v0, v132
move-object/from16 v1, v122
invoke-static {v0, v1}, Lco/vine/android/util/ClientFlagsHelper;->hostsDidChange(Landroid/content/Context;Lco/vine/android/api/VineClientFlags;)Z
move-result v142
if-eqz v142, :cond_1252
if-eqz v126, :cond_1244
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->abortAllRequests()V
:cond_1244
move-object/from16 v0, v122
iget-object v5, v0, Lco/vine/android/api/VineClientFlags;->apiHost:Ljava/lang/String;
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_128e
const/4 v5, 0x1
:goto_124f
invoke-static {v5}, Lco/vine/android/util/FlurryUtils;->trackZeroRatedSessionStarted(Z)V
:cond_1252
move-object/from16 v0, v122
iget-object v5, v0, Lco/vine/android/api/VineClientFlags;->messageTitle:Ljava/lang/String;
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-eqz v5, :cond_1266
move-object/from16 v0, v122
iget-object v5, v0, Lco/vine/android/api/VineClientFlags;->messageText:Ljava/lang/String;
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_1290
:cond_1266
const/16 v123, 0x1
:goto_1268
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_1270
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
move-object/from16 v118, v4
move-object/from16 v119, p1
move/from16 v120, p3
move-object/from16 v121, p4
invoke-virtual/range {v118 .. v123}, Lco/vine/android/client/AppSessionListener;->onFetchClientFlagsComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineClientFlags;Z)V
:try_end_1287
.catch Ljava/lang/Exception; {:try_start_1203 .. :try_end_1287} :catch_1288
goto :goto_1270
:catch_1288
move-exception v135
invoke-static/range {v135 .. v135}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto/16 :goto_9
:cond_128e
const/4 v5, 0x0
goto :goto_124f
:cond_1290
const/16 v123, 0x0
goto :goto_1268
:pswitch_1293
new-instance v5, Landroid/content/Intent;
const-string v6, "abort_all_requests"
invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v6, "co.vine.android.BROADCAST"
move-object/from16 v0, v132
invoke-virtual {v0, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v143
:goto_12a9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface/range {v143 .. v143}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/client/AppSessionListener;
invoke-virtual {v4}, Lco/vine/android/client/AppSessionListener;->onAbortAllRequestsComplete()V
goto :goto_12a9
nop
:pswitch_data_12ba
.packed-switch 0x2
:pswitch_a
:pswitch_66
:pswitch_6a
:pswitch_1c8
:pswitch_1ea
:pswitch_245
:pswitch_279
:pswitch_2a1
:pswitch_54f
:pswitch_30f
:pswitch_3fe
:pswitch_360
:pswitch_472
:pswitch_6ca
:pswitch_6fb
:pswitch_908
:pswitch_72c
:pswitch_7b4
:pswitch_86d
:pswitch_922
:pswitch_30f
:pswitch_30f
:pswitch_ad5
:pswitch_b24
:pswitch_94c
:pswitch_4ac
:pswitch_c23
:pswitch_a53
:pswitch_523
:pswitch_4d4
:pswitch_a73
:pswitch_ab7
:pswitch_9
:pswitch_9
:pswitch_bd1
:pswitch_c4b
:pswitch_cd0
:pswitch_d49
:pswitch_dad
:pswitch_d08
:pswitch_e06
:pswitch_9
:pswitch_80e
:pswitch_e47
:pswitch_eaa
:pswitch_ed2
:pswitch_efb
:pswitch_f24
:pswitch_f94
:pswitch_fc6
:pswitch_fee
:pswitch_1016
:pswitch_b77
:pswitch_ba9
:pswitch_30f
:pswitch_9
:pswitch_10ce
:pswitch_9
:pswitch_c69
:pswitch_c93
:pswitch_9
:pswitch_103e
:pswitch_9
:pswitch_1089
:pswitch_119f
:pswitch_e81
:pswitch_f42
:pswitch_f6b
:pswitch_10ef
:pswitch_974
:pswitch_9
:pswitch_9
:pswitch_ddd
:pswitch_9
:pswitch_43a
:pswitch_12a
:pswitch_9
:pswitch_2bf
:pswitch_2e7
:pswitch_8a1
:pswitch_30f
:pswitch_9
:pswitch_9
:pswitch_9
:pswitch_bf9
:pswitch_9
:pswitch_102
:pswitch_1113
:pswitch_1159
:pswitch_18e
:pswitch_1177
:pswitch_9
:pswitch_9
:pswitch_9
:pswitch_107a
:pswitch_ca2
:pswitch_105c
:pswitch_d7b
:pswitch_9
:pswitch_9
:pswitch_9
:pswitch_9
:pswitch_9
:pswitch_9d3
:pswitch_9fb
:pswitch_796
:pswitch_a23
:pswitch_113b
:pswitch_30f
:pswitch_1203
:pswitch_1293
:pswitch_14c
:pswitch_170
.end packed-switch
.end method
.method public onLowMemory()V
.registers 4
iget-object v2, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_16
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/client/AppSessionListener;
invoke-virtual {v1}, Lco/vine/android/client/AppSessionListener;->onLowMemory()V
goto :goto_6
:cond_16
return-void
.end method
.method public onMobileDataNetworkActivated()V
.registers 4
iget-object v2, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_16
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/client/AppSessionListener;
invoke-virtual {v1}, Lco/vine/android/client/AppSessionListener;->onMobileDataNetworkActivated()V
goto :goto_6
:cond_16
return-void
.end method
.method public onPhotoImageError(Lco/vine/android/util/image/PhotoImagesCache;Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
.registers 7
iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_8
if-ltz v0, :cond_16
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/client/AppSessionListener;
invoke-virtual {v2, p2, p3}, Lco/vine/android/client/AppSessionListener;->onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
add-int/lit8 v0, v0, -0x1
goto :goto_8
:cond_16
return-void
.end method
.method public onPhotoImageLoaded(Lco/vine/android/util/image/PhotoImagesCache;Ljava/util/HashMap;)V
.registers 6
const-string v2, "Image has loaded."
invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_d
if-ltz v0, :cond_1b
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/client/AppSessionListener;
invoke-virtual {v2, p2}, Lco/vine/android/client/AppSessionListener;->onPhotoImageLoaded(Ljava/util/HashMap;)V
add-int/lit8 v0, v0, -0x1
goto :goto_d
:cond_1b
return-void
.end method
.method public onTrimMemory(I)V
.registers 5
iget-object v2, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_16
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/client/AppSessionListener;
invoke-virtual {v1, p1}, Lco/vine/android/client/AppSessionListener;->onTrimMemory(I)V
goto :goto_6
:cond_16
return-void
.end method
.method public onVideoPathError(Lco/vine/android/util/video/VideoCache;Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
.registers 7
iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_8
if-ltz v0, :cond_16
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/client/AppSessionListener;
invoke-virtual {v2, p2, p3}, Lco/vine/android/client/AppSessionListener;->onVideoPathError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
add-int/lit8 v0, v0, -0x1
goto :goto_8
:cond_16
return-void
.end method
.method public onVideoPathObtained(Lco/vine/android/util/video/VideoCache;Ljava/util/HashMap;)V
.registers 6
iget-object v1, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_8
if-ltz v0, :cond_16
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/client/AppSessionListener;
invoke-virtual {v2, p2}, Lco/vine/android/client/AppSessionListener;->onVideoPathObtained(Ljava/util/HashMap;)V
add-int/lit8 v0, v0, -0x1
goto :goto_8
:cond_16
return-void
.end method
.method public peekVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
.registers 6
iget-object v0, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v1
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, p1, v3}, Lco/vine/android/util/video/VideoCache;->getFile(JLco/vine/android/util/video/VideoKey;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public postComment(JLco/vine/android/client/Session;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
.registers 10
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "user_id"
invoke-virtual {p3}, Lco/vine/android/client/Session;->getUserId()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "username"
invoke-virtual {p3}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "comment"
invoke-static {p4}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "avatar_url"
invoke-virtual {p3}, Lco/vine/android/client/Session;->getAvatarUrl()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "entities"
invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const/16 v1, 0xe
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public refreshSessionKey(Ljava/lang/String;)V
.registers 3
invoke-static {}, Lco/vine/android/client/VineAccountHelper;->getCachedActiveSession()Lco/vine/android/client/Session;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {v0, p1}, Lco/vine/android/client/Session;->setSessionKey(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public removeFollowPosts(Lco/vine/android/client/Session;J)Ljava/lang/String;
.registers 6
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x22
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public removeFromVideoCache(Lco/vine/android/util/video/VideoKey;)V
.registers 3
iget-object v0, p0, Lco/vine/android/client/AppController;->mVideoCache:Lco/vine/android/util/video/VideoCache;
invoke-virtual {v0, p1}, Lco/vine/android/util/video/VideoCache;->remove(Ljava/lang/Object;)Lco/vine/android/util/UrlResource;
return-void
.end method
.method public removeListener(Lco/vine/android/client/AppSessionListener;)V
.registers 3
iget-object v0, p0, Lco/vine/android/client/AppController;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public removeNotification(IJ)V
.registers 6
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "notification_id"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "conversation_row_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x66
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public removeUsers(Lco/vine/android/client/Session;I)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "type"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/16 v1, 0x11
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public reportPerson(J)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x31
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public reportPost(Lco/vine/android/client/Session;J)Ljava/lang/String;
.registers 6
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x1b
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public requestEmailVerification(Lco/vine/android/client/Session;Ljava/lang/String;J)Ljava/lang/String;
.registers 7
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "email"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "user_id"
invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x5c
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public requestPhoneVerification(Lco/vine/android/client/Session;Ljava/lang/String;J)Ljava/lang/String;
.registers 7
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "phone"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "user_id"
invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x59
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public resetPassword(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "login"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x9
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public retryMessagesInConversationRowId(J)V
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "conversation_row_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x67
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public retryRequest(ILandroid/os/Bundle;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v0
invoke-static {p2, v0}, Lco/vine/android/client/AppController;->injectServiceBundle(Landroid/os/Bundle;Lco/vine/android/client/Session;)Landroid/os/Bundle;
const-string v0, "captcha_url"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
invoke-direct {p0, p1, p2}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public revine(Ljava/lang/String;Lco/vine/android/client/Session;JLjava/lang/String;)Ljava/lang/String;
.registers 8
invoke-direct {p0, p2}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "username"
invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p3, p4, p1}, Lco/vine/android/util/FlurryUtils;->trackRevine(JLjava/lang/String;)V
const/16 v1, 0x36
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public saveLoadedPosts(Ljava/util/ArrayList;ILjava/lang/String;IIIJZ)Ljava/lang/String;
.registers 12
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "posts"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const-string v1, "type"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "tag_name"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "page_type"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "next_page"
invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "previous_page"
invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "time"
invoke-virtual {v0, v1, p7, p8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "user_init"
invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x2b
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public saveNotificationSettings(Ljava/util/HashMap;)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "notificationSettings"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
const/16 v1, 0x72
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public scheduleLoopCounts()V
.registers 5
iget-object v0, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;
if-eqz v0, :cond_14
iget-object v0, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/client/AppController;->mLoopCountRunnable:Lco/vine/android/client/AppController$LoopCountRunnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lco/vine/android/client/AppController;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/client/AppController;->mLoopCountRunnable:Lco/vine/android/client/AppController$LoopCountRunnable;
iget-wide v2, p0, Lco/vine/android/client/AppController;->mLoopCountSubmissionInterval:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_14
return-void
.end method
.method public searchTags(Ljava/lang/String;I)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "q"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "page_type"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/16 v1, 0x2a
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public searchUsers(Ljava/lang/String;I)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "q"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "page_type"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/16 v1, 0x29
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public sendAddressBook()Ljava/lang/String;
.registers 3
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const/16 v1, 0x65
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public sendFacebookToken()Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "facebook_token"
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getPendingFacebookToken()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x25
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public sendGcmRegId(Ljava/lang/String;J)Ljava/lang/String;
.registers 6
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "gcmRegId"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "user_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x3c
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public sendLoopCounts()Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Lco/vine/android/client/AppController;->scheduleLoopCounts()V
iget-object v3, p0, Lco/vine/android/client/AppController;->mContext:Landroid/content/Context;
invoke-static {v3}, Lco/vine/android/util/LoopManager;->get(Landroid/content/Context;)Lco/vine/android/util/LoopManager;
move-result-object v1
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
new-instance v2, Ljava/util/ArrayList;
invoke-virtual {v1}, Lco/vine/android/util/LoopManager;->popPendingLoops()Ljava/util/List;
move-result-object v3
invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v3
if-eqz v3, :cond_1f
const-string v3, ""
:goto_1e
return-object v3
:cond_1f
const-string v3, "loops"
invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const/16 v3, 0x42
invoke-direct {p0, v3, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v3
goto :goto_1e
.end method
.method public sendViewedVines()V
.registers 3
const/16 v0, 0x55
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v1
invoke-direct {p0, v0, v1}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public setHideProfileReposts(JZ)Ljava/lang/String;
.registers 6
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "block_profile_reposts"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x57
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public setSessionKey(Ljava/lang/String;)V
.registers 3
invoke-static {}, Lco/vine/android/client/VineAccountHelper;->getCachedActiveSession()Lco/vine/android/client/Session;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {v0, p1}, Lco/vine/android/client/Session;->setSessionKey(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public shareAsVM(Ljava/util/ArrayList;J)V
.registers 6
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "recipients"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const-string v1, "post_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x60
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public sharePost(Ljava/lang/String;Ljava/lang/String;J)V
.registers 7
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "network"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "message"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "post_id"
invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x3f
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
return-void
.end method
.method public signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)Ljava/lang/String;
.registers 11
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "login"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "pass"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "a_name"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "phone"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "uri"
invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, "t_user"
invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
if-eqz p7, :cond_32
const-string v1, "key"
iget-object v2, p7, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "secret"
iget-object v2, p7, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_32
const/4 v1, 0x4
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public unRevine(Ljava/lang/String;Lco/vine/android/client/Session;JJZJZ)Ljava/lang/String;
.registers 13
invoke-direct {p0, p2}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "repost_id"
invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "notify"
invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "following"
invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-static {p1}, Lco/vine/android/util/FlurryUtils;->trackUnRevine(Ljava/lang/String;)V
const/16 v1, 0x37
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public unblockUser(J)Ljava/lang/String;
.registers 7
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "block_user_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const/16 v1, 0x30
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public unfollowUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;
.registers 12
const-wide/16 v5, -0x1
move-object v0, p0
move-object v1, p1
move-wide v2, p2
move v4, p4
invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->unfollowUser(Lco/vine/android/client/Session;JZJ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public unfollowUser(Lco/vine/android/client/Session;JZJ)Ljava/lang/String;
.registers 11
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "follow_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "profile_id"
invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "user_id"
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "notify"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x13
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public unlikePost(Ljava/lang/String;Lco/vine/android/client/Session;JZ)Ljava/lang/String;
.registers 8
invoke-direct {p0, p2}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "post_id"
invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "notify"
invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-static {p1}, Lco/vine/android/util/FlurryUtils;->trackUnLikePost(Ljava/lang/String;)V
const/16 v1, 0x19
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public updateAcceptOon(Z)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "accept_oon"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x69
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public updateClientProfile()Ljava/lang/String;
.registers 3
const-string v0, "Update Client Profile."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
const/16 v0, 0x23
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-direct {p0, v0, v1}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public updateCredentials(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v0
invoke-virtual {v0, p1}, Lco/vine/android/client/Session;->setSessionKey(Ljava/lang/String;)V
return-void
.end method
.method public updateDiscoverability(IZ)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "enable"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "type"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/16 v1, 0x6c
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public updateEdition(Lco/vine/android/client/Session;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "edition"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Updating edition code to {}"
invoke-static {v1, p2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const/16 v1, 0x47
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public updateEnableAddressBook(Z)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lco/vine/android/client/AppController;->createServiceBundle()Landroid/os/Bundle;
move-result-object v0
const-string v1, "enable"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x6a
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public updateExplicit(Lco/vine/android/client/Session;Z)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "explicit"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x33
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public updatePrivate(Lco/vine/android/client/Session;Z)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "priv"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const/16 v1, 0x34
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public updateProfile(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Ljava/lang/String;
.registers 12
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "a_name"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "desc"
invoke-static {p3}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "location"
invoke-static {p4}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "email"
invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "phone"
invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "color_int"
invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
if-eqz p7, :cond_31
const-string v1, "uri"
invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_31
const/16 v1, 0x1a
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public updateProfilePhoto(Lco/vine/android/client/Session;Landroid/net/Uri;)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "uri"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const/16 v1, 0x58
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public verifyEmail(Lco/vine/android/client/Session;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "key"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x6d
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public verifyPhoneNumber(Lco/vine/android/client/Session;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1}, Lco/vine/android/client/AppController;->createServiceBundle(Lco/vine/android/client/Session;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "key"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x5a
invoke-direct {p0, v1, v0}, Lco/vine/android/client/AppController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method