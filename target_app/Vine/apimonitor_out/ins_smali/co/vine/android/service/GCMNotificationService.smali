.class public Lco/vine/android/service/GCMNotificationService;
.super Landroid/app/Service;
.source "GCMNotificationService.java"
.field public static final ACTION_CLEAR_NOTIFICATIONS:Ljava/lang/String; = "co.vine.android.notifications.ACTION_CLEAR_NOTIFICATIONS"
.field public static final ACTION_SHOW_NOTIFICATION:Ljava/lang/String; = "co.vine.android.notifications.ACTION_SHOW_NOTIFICATION"
.field public static final ACTION_UPDATE_NOTIFICATIONS:Ljava/lang/String; = "co.vine.android.notifications.ACTION_UPDATE_NOTIFICATIONS"
.field public static final ACTIVITY_NOTIFICATION_ID:I = 0x1
.field private static final DELAY_STOP_SERVICE_MS:I = 0x7d0
.field public static final EXTRA_AM_FOLLOWING:Ljava/lang/String; = "am_following"
.field public static final EXTRA_CONVERSATION_ROW_ID:Ljava/lang/String; = "conversation_row_id"
.field public static final EXTRA_NOTIFICATIONS_JSON:Ljava/lang/String; = "notifications"
.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"
.field public static final EXTRA_USERNAME:Ljava/lang/String; = "username"
.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"
.field public static final MESSAGE_NOTIFICATION_ID:I = 0x2
.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "gcmGenericNotification"
.field private static final TAG:Ljava/lang/String; = "GCMNotifService"
.field private static final sConversationStateFilter:Landroid/content/IntentFilter;
.field private mAppController:Lco/vine/android/client/AppController;
.field private mAppSessionListener:Lco/vine/android/client/AppSessionListener;
.field private mCameraConnection:Landroid/content/ServiceConnection;
.field private mCameraMessenger:Landroid/os/Messenger;
.field private final mConversationStateReciver:Landroid/content/BroadcastReceiver;
.field private mHandler:Landroid/os/Handler;
.field private mIsCameraServiceConnected:Z
.field private final mNotificationsToFire:Ljava/util/HashMap;
.field private final mQueue:Lco/vine/android/util/SparseArray;
.field private mStartIds:Ljava/util/ArrayList;
.field final mStopServiceRunnable:Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
sput-object v0, Lco/vine/android/service/GCMNotificationService;->sConversationStateFilter:Landroid/content/IntentFilter;
sget-object v0, Lco/vine/android/service/GCMNotificationService;->sConversationStateFilter:Landroid/content/IntentFilter;
const-string v1, "co.vine.android.camera.request.conversation.state.on"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
sget-object v0, Lco/vine/android/service/GCMNotificationService;->sConversationStateFilter:Landroid/content/IntentFilter;
const-string v1, "co.vine.android.camera.request.conversation.state.off"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Lco/vine/android/util/SparseArray;
invoke-direct {v0}, Lco/vine/android/util/SparseArray;-><init>()V
iput-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
new-instance v0, Lco/vine/android/service/GCMNotificationService$1;
invoke-direct {v0, p0}, Lco/vine/android/service/GCMNotificationService$1;-><init>(Lco/vine/android/service/GCMNotificationService;)V
iput-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mCameraConnection:Landroid/content/ServiceConnection;
new-instance v0, Lco/vine/android/service/GCMNotificationService$2;
invoke-direct {v0, p0}, Lco/vine/android/service/GCMNotificationService$2;-><init>(Lco/vine/android/service/GCMNotificationService;)V
iput-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mConversationStateReciver:Landroid/content/BroadcastReceiver;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mNotificationsToFire:Ljava/util/HashMap;
new-instance v0, Lco/vine/android/service/GCMNotificationService$3;
invoke-direct {v0, p0}, Lco/vine/android/service/GCMNotificationService$3;-><init>(Lco/vine/android/service/GCMNotificationService;)V
iput-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mStopServiceRunnable:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/service/GCMNotificationService;)Landroid/os/Messenger;
.registers 2
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mCameraMessenger:Landroid/os/Messenger;
return-object v0
.end method
.method static synthetic access$002(Lco/vine/android/service/GCMNotificationService;Landroid/os/Messenger;)Landroid/os/Messenger;
.registers 2
iput-object p1, p0, Lco/vine/android/service/GCMNotificationService;->mCameraMessenger:Landroid/os/Messenger;
return-object p1
.end method
.method static synthetic access$102(Lco/vine/android/service/GCMNotificationService;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/service/GCMNotificationService;->mIsCameraServiceConnected:Z
return p1
.end method
.method static synthetic access$200(Lco/vine/android/service/GCMNotificationService;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mNotificationsToFire:Ljava/util/HashMap;
return-object v0
.end method
.method static synthetic access$300(Lco/vine/android/service/GCMNotificationService;IJ)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lco/vine/android/service/GCMNotificationService;->updateNotification(IJ)V
return-void
.end method
.method static synthetic access$500(Lco/vine/android/service/GCMNotificationService;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/service/GCMNotificationService;->stopService()V
return-void
.end method
.method static synthetic access$600(Lco/vine/android/service/GCMNotificationService;)Lco/vine/android/util/SparseArray;
.registers 2
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
return-object v0
.end method
.method static synthetic access$700(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/service/GCMNotificationService;->showNotification(Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z
move-result v0
return v0
.end method
.method static synthetic access$800(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/api/VineSingleNotification;)I
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/service/GCMNotificationService;->getNotificationId(Lco/vine/android/api/VineSingleNotification;)I
move-result v0
return v0
.end method
.method static synthetic access$900(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/api/VineSingleNotification;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)V
.registers 3
invoke-direct {p0, p1, p2}, Lco/vine/android/service/GCMNotificationService;->buildNotification(Lco/vine/android/api/VineSingleNotification;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)V
return-void
.end method
.method private buildNotification(Lco/vine/android/api/VineSingleNotification;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)V
.registers 21
new-instance v14, Landroid/support/v4/app/NotificationCompat$Builder;
move-object/from16 v0, p0
invoke-direct {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p2
iput-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
const/4 v15, 0x1
invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Notification - "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p2
iget v15, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationId:I
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move-object/from16 v0, p2
iget v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationId:I
const/4 v15, 0x1
if-ne v14, v15, :cond_d4
new-instance v6, Landroid/content/Intent;
const-string v14, "co.vine.android.ACTIVITY_NOTIFICATION_PRESSED"
invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
move-object/from16 v0, p1
iget-object v15, v0, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;
invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Notification - "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p1
iget-object v15, v0, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
const v15, 0x7f0e0044
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lco/vine/android/service/GCMNotificationService;->getString(I)Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
:goto_70
const-class v14, Lco/vine/android/StartActivity;
move-object/from16 v0, p0
invoke-virtual {v6, v0, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
const v15, 0x7f0201ff
invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
move-object/from16 v0, p2
iget-object v12, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notifications:Ljava/util/ArrayList;
if-nez v12, :cond_8c
new-instance v12, Ljava/util/ArrayList;
invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
:cond_8c
move-object/from16 v0, p2
iget v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationId:I
const/4 v15, 0x2
if-ne v14, v15, :cond_179
move-object/from16 v0, p1
iget-object v14, v0, Lco/vine/android/api/VineSingleNotification;->imageKeys:Ljava/util/ArrayList;
invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_9b
:cond_9b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-eqz v14, :cond_dc
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/util/image/ImageKey;
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->thumbnailKeys:Ljava/util/HashMap;
invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v14
if-nez v14, :cond_9b
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->thumbnailKeys:Ljava/util/HashMap;
const/4 v15, 0x0
invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v15
invoke-virtual {v14, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v14, v4}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v14
if-eqz v14, :cond_9b
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->thumbnailKeys:Ljava/util/HashMap;
const/4 v15, 0x1
invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v15
invoke-virtual {v14, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9b
:cond_d4
new-instance v6, Landroid/content/Intent;
const-string v14, "co.vine.android.MESSAGE_NOTIFICATION_PRESSED"
invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
goto :goto_70
:cond_dc
move-object/from16 v0, p1
iget-object v14, v0, Lco/vine/android/api/VineSingleNotification;->videoKeys:Ljava/util/ArrayList;
invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_e4
:goto_e4
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-eqz v14, :cond_11d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v13
check-cast v13, Lco/vine/android/util/video/VideoKey;
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->videoKeys:Ljava/util/HashMap;
invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v14
if-nez v14, :cond_e4
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->videoKeys:Ljava/util/HashMap;
const/4 v15, 0x0
invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v15
invoke-virtual {v14, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v14, v13}, Lco/vine/android/client/AppController;->getVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
move-result-object v14
if-eqz v14, :cond_e4
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->videoKeys:Ljava/util/HashMap;
const/4 v15, 0x1
invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v15
invoke-virtual {v14, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_e4
:cond_11d
move-object/from16 v0, p1
iget v14, v0, Lco/vine/android/api/VineSingleNotification;->messageCount:I
const/4 v15, 0x1
if-le v14, v15, :cond_1de
const v14, 0x7f0e013f
const/4 v15, 0x2
new-array v15, v15, [Ljava/lang/Object;
const/16 v16, 0x0
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;
move-object/from16 v17, v0
invoke-static/range {v17 .. v17}, Lco/vine/android/util/Util;->getUsernameFromActivity(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
aput-object v17, v15, v16
const/16 v16, 0x1
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/api/VineSingleNotification;->messageCount:I
move/from16 v17, v0
invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v17
aput-object v17, v15, v16
move-object/from16 v0, p0
invoke-virtual {v0, v14, v15}, Lco/vine/android/service/GCMNotificationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
:goto_14c
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {v14, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Notification - "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
const v15, 0x7f0e013e
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lco/vine/android/service/GCMNotificationService;->getString(I)Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
:cond_179
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v14
const/4 v15, 0x1
if-le v14, v15, :cond_22f
new-instance v5, Landroid/support/v4/app/NotificationCompat$InboxStyle;
invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V
move-object/from16 v0, p2
iget v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationId:I
const/4 v15, 0x1
if-ne v14, v15, :cond_1e8
const v14, 0x7f0e0043
move-object/from16 v0, p0
invoke-virtual {v0, v14}, Lco/vine/android/service/GCMNotificationService;->getString(I)Ljava/lang/String;
move-result-object v14
invoke-virtual {v5, v14}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
:goto_198
invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_19c
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-eqz v14, :cond_21d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v11
check-cast v11, Lco/vine/android/api/VineSingleNotification;
move-object/from16 v0, p2
iget v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationId:I
const/4 v15, 0x2
if-ne v14, v15, :cond_21a
move-object/from16 v0, p1
iget v14, v0, Lco/vine/android/api/VineSingleNotification;->messageCount:I
const/4 v15, 0x1
if-le v14, v15, :cond_1f5
const v14, 0x7f0e013f
const/4 v15, 0x2
new-array v15, v15, [Ljava/lang/Object;
const/16 v16, 0x0
iget-object v0, v11, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;
move-object/from16 v17, v0
invoke-static/range {v17 .. v17}, Lco/vine/android/util/Util;->getUsernameFromActivity(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
aput-object v17, v15, v16
const/16 v16, 0x1
iget v0, v11, Lco/vine/android/api/VineSingleNotification;->messageCount:I
move/from16 v17, v0
invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v17
aput-object v17, v15, v16
move-object/from16 v0, p0
invoke-virtual {v0, v14, v15}, Lco/vine/android/service/GCMNotificationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
:goto_1da
invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
goto :goto_19c
:cond_1de
move-object/from16 v0, p1
iget-object v14, v0, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;
invoke-static {v14}, Lco/vine/android/util/Util;->stripUsernameEntities(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
goto/16 :goto_14c
:cond_1e8
const v14, 0x7f0e013d
move-object/from16 v0, p0
invoke-virtual {v0, v14}, Lco/vine/android/service/GCMNotificationService;->getString(I)Ljava/lang/String;
move-result-object v14
invoke-virtual {v5, v14}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
goto :goto_198
:cond_1f5
const v14, 0x7f0e0140
const/4 v15, 0x2
new-array v15, v15, [Ljava/lang/Object;
const/16 v16, 0x0
iget-object v0, v11, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;
move-object/from16 v17, v0
invoke-static/range {v17 .. v17}, Lco/vine/android/util/Util;->getUsernameFromActivity(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
aput-object v17, v15, v16
const/16 v16, 0x1
iget v0, v11, Lco/vine/android/api/VineSingleNotification;->messageCount:I
move/from16 v17, v0
invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v17
aput-object v17, v15, v16
move-object/from16 v0, p0
invoke-virtual {v0, v14, v15}, Lco/vine/android/service/GCMNotificationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
goto :goto_1da
:cond_21a
iget-object v7, v11, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;
goto :goto_1da
:cond_21d
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {v14, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v15
invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;
:cond_22f
move-object/from16 v0, p2
iget v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationId:I
const/4 v15, 0x2
if-ne v14, v15, :cond_2fc
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v14
const/4 v15, 0x1
if-ne v14, v15, :cond_2fc
const-string v14, "Notification - converstaion."
invoke-static {v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move-object/from16 v0, p1
iget-wide v14, v0, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J
invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v14
invoke-virtual {v6, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const-string v14, "username"
move-object/from16 v0, p1
iget-object v15, v0, Lco/vine/android/api/VineSingleNotification;->username:Ljava/lang/String;
invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v14, "user_id"
move-object/from16 v0, p1
iget-wide v15, v0, Lco/vine/android/api/VineSingleNotification;->userId:J
move-wide v0, v15
invoke-virtual {v6, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v14, "am_following"
move-object/from16 v0, p1
iget v15, v0, Lco/vine/android/api/VineSingleNotification;->followStatus:I
invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
:goto_26d
invoke-static/range {p0 .. p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v10
const/4 v2, 0x0
const-string v14, "pref_notifications_sound"
const/4 v15, 0x1
invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v14
if-eqz v14, :cond_292
move-object/from16 v0, p2
iget v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationId:I
const/4 v15, 0x2
if-ne v14, v15, :cond_318
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
const v15, 0x7f060003
move-object/from16 v0, p0
invoke-static {v0, v15}, Lco/vine/android/util/Util;->getUriFromResouce(Landroid/content/Context;I)Landroid/net/Uri;
move-result-object v15
invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;
:goto_292
:cond_292
const-string v14, "pref_notifications_vibrate"
const/4 v15, 0x0
invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v14
if-eqz v14, :cond_29d
or-int/lit8 v2, v2, 0x2
:cond_29d
const-string v14, "pref_notifications_light"
const/4 v15, 0x1
invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v14
if-eqz v14, :cond_2a8
or-int/lit8 v2, v2, 0x4
:cond_2a8
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {v14, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;
const/4 v14, 0x0
const/4 v15, 0x0
move-object/from16 v0, p0
invoke-static {v0, v14, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v8
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {v14, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
move-object/from16 v0, p1
iget-object v14, v0, Lco/vine/android/api/VineSingleNotification;->avatarUrl:Ljava/lang/String;
if-eqz v14, :cond_2e3
new-instance v14, Lco/vine/android/util/image/ImageKey;
move-object/from16 v0, p1
iget-object v15, v0, Lco/vine/android/api/VineSingleNotification;->avatarUrl:Ljava/lang/String;
const/16 v16, 0x1
invoke-direct/range {v14 .. v16}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;Z)V
move-object/from16 v0, p2
iput-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
move-object/from16 v0, p2
iget-object v15, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;
invoke-virtual {v14, v15}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v14
move-object/from16 v0, p2
iput-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->bm:Landroid/graphics/Bitmap;
:cond_2e3
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->bm:Landroid/graphics/Bitmap;
if-nez v14, :cond_2ef
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;
if-nez v14, :cond_2fb
:cond_2ef
const/4 v14, 0x0
move-object/from16 v0, p2
iput-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->avatarKey:Lco/vine/android/util/image/ImageKey;
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lco/vine/android/service/GCMNotificationService;->showNotification(Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z
:cond_2fb
return-void
:cond_2fc
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Notification - home - "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto/16 :goto_26d
:cond_318
const-string v14, "pref_notifications_ringtone"
const-string v15, ""
invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v14
if-nez v14, :cond_333
move-object/from16 v0, p2
iget-object v14, v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v15
invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;
goto/16 :goto_292
:cond_333
or-int/lit8 v2, v2, 0x1
goto/16 :goto_292
.end method
.method private clearNotification(I)V
.registers 7
const-string v1, "notification"
invoke-virtual {p0, v1}, Lco/vine/android/service/GCMNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
const-string v1, "gcmGenericNotification"
invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
iget-object v1, p0, Lco/vine/android/service/GCMNotificationService;->mHandler:Landroid/os/Handler;
iget-object v2, p0, Lco/vine/android/service/GCMNotificationService;->mStopServiceRunnable:Ljava/lang/Runnable;
const-wide/16 v3, 0x7d0
invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
iget-object v1, p0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
const-wide/16 v2, -0x1
invoke-virtual {v1, p1, v2, v3}, Lco/vine/android/client/AppController;->removeNotification(IJ)V
return-void
.end method
.method public static getClearNotificationIntent(Landroid/content/Context;I)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/service/GCMNotificationService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "co.vine.android.notifications.ACTION_CLEAR_NOTIFICATIONS"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "notification_id"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
return-object v0
.end method
.method private getNotificationId(Lco/vine/android/api/VineSingleNotification;)I
.registers 3
invoke-virtual {p1}, Lco/vine/android/api/VineSingleNotification;->isMessaging()Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x2
:goto_7
return v0
:cond_8
const/4 v0, 0x1
goto :goto_7
.end method
.method public static getUpdateNotificationIntent(Landroid/content/Context;IJ)Landroid/content/Intent;
.registers 6
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/service/GCMNotificationService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "co.vine.android.notifications.ACTION_UPDATE_NOTIFICATIONS"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "notification_id"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "conversation_row_id"
invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
return-object v0
.end method
.method private notificationCommentToString(Lco/vine/android/api/VineSingleNotification;)Ljava/lang/String;
.registers 7
iget-object v2, p1, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;
iget-object v0, p1, Lco/vine/android/api/VineSingleNotification;->entities:Ljava/util/ArrayList;
new-instance v1, Landroid/text/SpannableStringBuilder;
invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
if-eqz v0, :cond_10
const/4 v3, 0x0
const/4 v4, 0x1
invoke-static {v0, v1, v3, v4}, Lco/vine/android/util/Util;->adjustEntities(Ljava/util/ArrayList;Landroid/text/Editable;IZ)V
:cond_10
invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private prepareNotification(Ljava/lang/String;)V
.registers 10
const-wide/16 v6, 0x7d0
const/4 v5, 0x1
const/4 v4, 0x0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_3d
:try_start_a
invoke-static {p1}, Lco/vine/android/api/VineParsers;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v1
invoke-static {v1}, Lco/vine/android/api/VineParsers;->parsePushNotification(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineSingleNotification;
:try_end_11
.catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_3e
move-result-object v2
if-nez v2, :cond_4e
const-string v3, "GCMNotifService"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Invalid GCM notification payload, notifications="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
const-string v3, "Invalid GCM notification payload."
invoke-static {v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
iget-object v3, p0, Lco/vine/android/service/GCMNotificationService;->mHandler:Landroid/os/Handler;
iget-object v4, p0, Lco/vine/android/service/GCMNotificationService;->mStopServiceRunnable:Ljava/lang/Runnable;
invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_38
iget-object v3, p0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v3}, Lco/vine/android/client/AppController;->fetchActivityCounts()Ljava/lang/String;
:goto_3d
:cond_3d
return-void
:catch_3e
move-exception v0
const-string v3, "Exception while parsing GCM push notification payload."
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v0, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v3, p0, Lco/vine/android/service/GCMNotificationService;->mHandler:Landroid/os/Handler;
iget-object v4, p0, Lco/vine/android/service/GCMNotificationService;->mStopServiceRunnable:Ljava/lang/Runnable;
invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_3d
:cond_4e
iget-object v3, p0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v3}, Lco/vine/android/client/AppController;->isLoggedInReadOnly()Z
move-result v3
if-nez v3, :cond_5b
const-string v3, "User not logged in, we should drop this message."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
:cond_5b
invoke-virtual {v2}, Lco/vine/android/api/VineSingleNotification;->isMessaging()Z
move-result v3
if-eqz v3, :cond_66
iget-object v3, p0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v3, v5, v4, v5}, Lco/vine/android/client/AppController;->fetchConversations(IZI)Ljava/lang/String;
:cond_66
iget-wide v3, v2, Lco/vine/android/api/VineSingleNotification;->recipientUserId:J
iget-object v5, p0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v5
cmp-long v3, v3, v5
if-eqz v3, :cond_7d
const-string v3, "This message is intended for someone else {}."
iget-wide v4, v2, Lco/vine/android/api/VineSingleNotification;->recipientUserId:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V
:cond_7d
iget-object v3, p0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
invoke-direct {p0, v2}, Lco/vine/android/service/GCMNotificationService;->notificationCommentToString(Lco/vine/android/api/VineSingleNotification;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Lco/vine/android/client/AppController;->mergePushNotification(Lco/vine/android/api/VineSingleNotification;Ljava/lang/String;)V
goto :goto_38
.end method
.method private showNotification(Lco/vine/android/service/GCMNotificationService$NotificationEvent;)Z
.registers 11
const/4 v4, 0x1
invoke-virtual {p1}, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->isReady()Z
move-result v5
if-eqz v5, :cond_55
iget-object v5, p1, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->bm:Landroid/graphics/Bitmap;
if-nez v5, :cond_18
invoke-virtual {p0}, Lco/vine/android/service/GCMNotificationService;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f020198
invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v5
iput-object v5, p1, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->bm:Landroid/graphics/Bitmap;
:cond_18
invoke-virtual {p0}, Lco/vine/android/service/GCMNotificationService;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0b0060
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
iget-object v5, p1, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->bm:Landroid/graphics/Bitmap;
invoke-static {v5, v1, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v5, p1, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
const-string v5, "notification"
invoke-virtual {p0, v5}, Lco/vine/android/service/GCMNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/app/NotificationManager;
iget-object v5, p1, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->builder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
move-result-object v3
const v5, -0xff0100
iput v5, v3, Landroid/app/Notification;->ledARGB:I
invoke-static {}, Lco/vine/android/util/FlurryUtils;->traceNotificationShown()V
:try_start_44
const-string v5, "gcmGenericNotification"
iget v6, p1, Lco/vine/android/service/GCMNotificationService$NotificationEvent;->notificationId:I
invoke-virtual {v2, v5, v6, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
:try_end_4b
.catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_4b} :catch_57
:goto_4b
iget-object v5, p0, Lco/vine/android/service/GCMNotificationService;->mHandler:Landroid/os/Handler;
iget-object v6, p0, Lco/vine/android/service/GCMNotificationService;->mStopServiceRunnable:Ljava/lang/Runnable;
const-wide/16 v7, 0x7d0
invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_54
return v4
:cond_55
const/4 v4, 0x0
goto :goto_54
:catch_57
move-exception v5
goto :goto_4b
.end method
.method private stopService()V
.registers 6
iget-object v2, p0, Lco/vine/android/service/GCMNotificationService;->mStartIds:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_32
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v1
const-string v2, "GCMNotifService"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Stopping service for startId="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v1}, Lco/vine/android/service/GCMNotificationService;->stopSelf(I)V
goto :goto_6
:cond_32
return-void
.end method
.method private updateNotification(IJ)V
.registers 5
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/client/AppController;->removeNotification(IJ)V
return-void
.end method
.method public getNotificationEvent(I)Lco/vine/android/service/GCMNotificationService$NotificationEvent;
.registers 4
iget-object v1, p0, Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
invoke-virtual {v1, p1}, Lco/vine/android/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;
if-nez v0, :cond_14
new-instance v0, Lco/vine/android/service/GCMNotificationService$NotificationEvent;
invoke-direct {v0, p1}, Lco/vine/android/service/GCMNotificationService$NotificationEvent;-><init>(I)V
iget-object v1, p0, Lco/vine/android/service/GCMNotificationService;->mQueue:Lco/vine/android/util/SparseArray;
invoke-virtual {v1, p1, v0}, Lco/vine/android/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_14
return-object v0
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public onCreate()V
.registers 5
const-string v1, " + Lco/vine/android/service/GCMNotificationService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0}, Landroid/app/Service;->onCreate()V
const-string v0, "GCMNotifService"
const-string v1, "Service created."
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v0
iput-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
new-instance v0, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;
invoke-direct {v0, p0, v3}, Lco/vine/android/service/GCMNotificationService$GCMNotificationServiceListener;-><init>(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/service/GCMNotificationService$1;)V
iput-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/service/GCMNotificationService;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mStartIds:Ljava/util/ArrayList;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mHandler:Landroid/os/Handler;
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mConversationStateReciver:Landroid/content/BroadcastReceiver;
sget-object v1, Lco/vine/android/service/GCMNotificationService;->sConversationStateFilter:Landroid/content/IntentFilter;
const-string v2, "co.vine.android.BROADCAST"
invoke-virtual {p0, v0, v1, v2, v3}, Lco/vine/android/service/GCMNotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/service/ResourceService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lco/vine/android/service/GCMNotificationService;->mCameraConnection:Landroid/content/ServiceConnection;
const/4 v2, 0x1
invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/service/GCMNotificationService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
const-string v1, " - Lco/vine/android/service/GCMNotificationService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/service/GCMNotificationService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
iget-boolean v0, p0, Lco/vine/android/service/GCMNotificationService;->mIsCameraServiceConnected:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mCameraConnection:Landroid/content/ServiceConnection;
invoke-virtual {p0, v0}, Lco/vine/android/service/GCMNotificationService;->unbindService(Landroid/content/ServiceConnection;)V
:cond_c
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mConversationStateReciver:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v0}, Lco/vine/android/service/GCMNotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
if-eqz v0, :cond_1c
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/service/GCMNotificationService;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V
:cond_1c
const-string v1, " - Lco/vine/android/service/GCMNotificationService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 11
const/4 v3, 0x1
const/4 v4, 0x2
const-string v2, "GCMNotifService"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "onStartCommand, startId="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ", startIds="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Lco/vine/android/service/GCMNotificationService;->mStartIds:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v2, v5}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lco/vine/android/service/GCMNotificationService;->mStartIds:Ljava/util/ArrayList;
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lco/vine/android/service/GCMNotificationService;->mHandler:Landroid/os/Handler;
const/4 v5, 0x0
invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
if-eqz p1, :cond_44
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_45
invoke-direct {p0}, Lco/vine/android/service/GCMNotificationService;->stopService()V
:goto_44
:cond_44
return v4
:cond_45
const/4 v2, -0x1
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v5
sparse-switch v5, :sswitch_data_98
:cond_4d
:goto_4d
packed-switch v2, :pswitch_data_a6
invoke-direct {p0}, Lco/vine/android/service/GCMNotificationService;->stopService()V
goto :goto_44
:sswitch_54
const-string v5, "co.vine.android.notifications.ACTION_CLEAR_NOTIFICATIONS"
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_4d
const/4 v2, 0x0
goto :goto_4d
:sswitch_5e
const-string v5, "co.vine.android.notifications.ACTION_SHOW_NOTIFICATION"
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_4d
move v2, v3
goto :goto_4d
:sswitch_68
const-string v5, "co.vine.android.notifications.ACTION_UPDATE_NOTIFICATIONS"
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_4d
move v2, v4
goto :goto_4d
:pswitch_72
const-string v2, "notification_id"
invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
invoke-direct {p0, v2}, Lco/vine/android/service/GCMNotificationService;->clearNotification(I)V
goto :goto_44
:pswitch_7c
const-string v2, "notifications"
invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lco/vine/android/service/GCMNotificationService;->prepareNotification(Ljava/lang/String;)V
goto :goto_44
:pswitch_86
const-string v2, "notification_id"
invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
const-string v3, "conversation_row_id"
const-wide/16 v5, -0x1
invoke-virtual {p1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v5
invoke-direct {p0, v2, v5, v6}, Lco/vine/android/service/GCMNotificationService;->updateNotification(IJ)V
goto :goto_44
:pswitch_data_a6
.packed-switch 0x0
:pswitch_72
:pswitch_7c
:pswitch_86
.end packed-switch
:sswitch_data_98
.sparse-switch
-0x5a188df5 -> :sswitch_5e
-0x49108c0c -> :sswitch_68
0x120601d4 -> :sswitch_54
.end sparse-switch
.end method