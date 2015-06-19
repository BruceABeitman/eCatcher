.class public Lcom/fsck/k9/service/MailService;
.super Lcom/fsck/k9/service/CoreService;
.source "MailService.java"


# static fields
.field private static final ACTION_CANCEL:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_CANCEL"

.field private static final ACTION_CHECK_MAIL:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_WAKEUP"

.field private static final ACTION_REFRESH_PUSHERS:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_REFRESH_PUSHERS"

.field private static final ACTION_RESCHEDULE:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_RESCHEDULE"

.field private static final ACTION_RESCHEDULE_CHECK:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_RESCHEDULE_CHECK"

.field private static final BACKGROUND_DATA_CHANGED:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_BACKGROUND_DATA_CHANGED"

.field private static final CANCEL_CONNECTIVITY_NOTICE:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_CANCEL_CONNECTIVITY_NOTICE"

.field private static final CONNECTIVITY_CHANGE:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_CONNECTIVITY_CHANGE"

.field private static final HAS_CONNECTIVITY:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_HAS_CONNECTIVITY"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/service/CoreService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/service/MailService;)V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/service/MailService;->cancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/service/MailService;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/service/MailService;->stopPushers(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/service/MailService;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/service/MailService;->setupPushers(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/service/MailService;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/service/MailService;->schedulePushers(Ljava/lang/Integer;)V

    return-void
.end method

.method public static actionCancel(Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/fsck/k9/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/fsck/k9/service/MailService;->addWakeLockId(Landroid/content/Intent;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static actionReschedule(Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/fsck/k9/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/fsck/k9/service/MailService;->addWakeLockId(Landroid/content/Intent;Ljava/lang/Integer;)V

    if-nez p1, :cond_17

    invoke-static {p0, v0}, Lcom/fsck/k9/service/MailService;->addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_17
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static backgroundDataChanged(Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/fsck/k9/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_BACKGROUND_DATA_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/fsck/k9/service/MailService;->addWakeLockId(Landroid/content/Intent;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private cancel()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.fsck.k9.service.MailService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/fsck/k9/service/BootReceiver;->cancelIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static connectivityChange(Landroid/content/Context;ZLjava/lang/Integer;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/fsck/k9/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_HAS_CONNECTIVITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p2}, Lcom/fsck/k9/service/MailService;->addWakeLockId(Landroid/content/Intent;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private notifyConnectionStatus(Z)V
    .registers 2

    return-void
.end method

.method private refreshPushers(Ljava/lang/Integer;)V
    .registers 5

    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/service/MailService$5;

    invoke-direct {v1, p0}, Lcom/fsck/k9/service/MailService$5;-><init>(Lcom/fsck/k9/service/MailService;)V

    const/16 v2, 0x7530

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/fsck/k9/service/MailService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V

    return-void
.end method

.method private reschedule(Ljava/lang/Integer;)V
    .registers 5

    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/service/MailService$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/service/MailService$1;-><init>(Lcom/fsck/k9/service/MailService;)V

    const/16 v2, 0x7530

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/fsck/k9/service/MailService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V

    return-void
.end method

.method private rescheduleAll(ZZLjava/lang/Integer;)V
    .registers 5

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/service/MailService;->reschedule(Ljava/lang/Integer;)V

    invoke-direct {p0, p3}, Lcom/fsck/k9/service/MailService;->reschedulePushers(Ljava/lang/Integer;)V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0, p3}, Lcom/fsck/k9/service/MailService;->stopPushers(Ljava/lang/Integer;)V

    goto :goto_b
.end method

.method public static rescheduleCheck(Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/fsck/k9/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_RESCHEDULE_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/fsck/k9/service/MailService;->addWakeLockId(Landroid/content/Intent;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private reschedulePushers(Ljava/lang/Integer;)V
    .registers 6

    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/service/MailService$3;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/service/MailService$3;-><init>(Lcom/fsck/k9/service/MailService;Ljava/lang/Integer;)V

    const/16 v2, 0x7530

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fsck/k9/service/MailService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V

    return-void
.end method

.method private schedulePushers(Ljava/lang/Integer;)V
    .registers 5

    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/service/MailService$6;

    invoke-direct {v1, p0}, Lcom/fsck/k9/service/MailService$6;-><init>(Lcom/fsck/k9/service/MailService;)V

    const/16 v2, 0x7530

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/fsck/k9/service/MailService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V

    return-void
.end method

.method private setupPushers(Ljava/lang/Integer;)V
    .registers 5

    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/service/MailService$4;

    invoke-direct {v1, p0}, Lcom/fsck/k9/service/MailService$4;-><init>(Lcom/fsck/k9/service/MailService;)V

    const/16 v2, 0x7530

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/fsck/k9/service/MailService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V

    return-void
.end method

.method private stopPushers(Ljava/lang/Integer;)V
    .registers 5

    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/service/MailService$2;

    invoke-direct {v1, p0}, Lcom/fsck/k9/service/MailService$2;-><init>(Lcom/fsck/k9/service/MailService;)V

    const/16 v2, 0x7530

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/fsck/k9/service/MailService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Lcom/fsck/k9/service/CoreService;->onCreate()V

    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "k9"

    const-string v1, "***** MailService *****: onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public onDestroy()V
    .registers 3

    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "k9"

    const-string v1, "***** MailService *****: onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-super {p0}, Lcom/fsck/k9/service/CoreService;->onDestroy()V

    return-void
.end method

.method public startService(Landroid/content/Intent;I)V
    .registers 21

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v14

    const-string v15, "connectivity"

    invoke-virtual {v14, v15}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_41

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_28

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v13, v14, :cond_d8

    const/4 v14, 0x1

    move v8, v14

    :cond_28
    :goto_28
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v5

    invoke-static {}, Lcom/fsck/k9/K9;->getBackgroundOps()Lcom/fsck/k9/K9$BACKGROUND_OPS;

    move-result-object v4

    const/4 v14, 0x1

    if-ne v5, v14, :cond_dc

    sget-object v14, Lcom/fsck/k9/K9$BACKGROUND_OPS;->NEVER:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    if-eq v4, v14, :cond_dc

    const/4 v14, 0x1

    :goto_38
    if-nez v5, :cond_df

    sget-object v15, Lcom/fsck/k9/K9$BACKGROUND_OPS;->ALWAYS:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    if-ne v4, v15, :cond_df

    const/4 v15, 0x1

    :goto_3f
    or-int v7, v14, v15

    :cond_41
    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_81

    const-string v14, "k9"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MailService.onStart("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), hasConnectivity = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", doBackground = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    const-string v14, "com.fsck.k9.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e2

    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_98

    const-string v14, "k9"

    const-string v15, "***** MailService *****: checking mail"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    if-eqz v8, :cond_9f

    if-eqz v7, :cond_9f

    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/service/PollService;->startService(Landroid/content/Context;)V

    :cond_9f
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/fsck/k9/service/MailService;->reschedule(Ljava/lang/Integer;)V
    :try_end_a5
    .catchall {:try_start_8 .. :try_end_a5} :catchall_fd

    const/4 v10, 0x0

    :cond_a6
    :goto_a6
    if-eqz v10, :cond_af

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/service/MailService;->stopSelf(I)V

    :cond_af
    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_d7

    const-string v14, "k9"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MailService.onStart took "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v11

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    return-void

    :cond_d8
    const/4 v14, 0x0

    move v8, v14

    goto/16 :goto_28

    :cond_dc
    const/4 v14, 0x0

    goto/16 :goto_38

    :cond_df
    const/4 v15, 0x0

    goto/16 :goto_3f

    :cond_e2
    :try_start_e2
    const-string v14, "com.fsck.k9.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_108

    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_f9

    const-string v14, "k9"

    const-string v15, "***** MailService *****: cancel"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f9
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/service/MailService;->cancel()V
    :try_end_fc
    .catchall {:try_start_e2 .. :try_end_fc} :catchall_fd

    goto :goto_a6

    :catchall_fd
    move-exception v14

    if-eqz v10, :cond_107

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/service/MailService;->stopSelf(I)V

    :cond_107
    throw v14

    :cond_108
    :try_start_108
    const-string v14, "com.fsck.k9.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12a

    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_11f

    const-string v14, "k9"

    const-string v15, "***** MailService *****: reschedule"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11f
    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/service/MailService;->rescheduleAll(ZZLjava/lang/Integer;)V

    const/4 v10, 0x0

    goto/16 :goto_a6

    :cond_12a
    const-string v14, "com.fsck.k9.intent.action.MAIL_SERVICE_RESCHEDULE_CHECK"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14a

    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_141

    const-string v14, "k9"

    const-string v15, "***** MailService *****: reschedule check"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_141
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/fsck/k9/service/MailService;->reschedule(Ljava/lang/Integer;)V

    const/4 v10, 0x0

    goto/16 :goto_a6

    :cond_14a
    const-string v14, "com.fsck.k9.intent.action.MAIL_SERVICE_REFRESH_PUSHERS"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16a

    if-eqz v8, :cond_a6

    if-eqz v7, :cond_a6

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/fsck/k9/service/MailService;->schedulePushers(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/fsck/k9/service/MailService;->refreshPushers(Ljava/lang/Integer;)V

    const/4 v10, 0x0

    goto/16 :goto_a6

    :cond_16a
    const-string v14, "com.fsck.k9.intent.action.MAIL_SERVICE_CONNECTIVITY_CHANGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_182

    const-string v14, "com.fsck.k9.intent.action.MAIL_SERVICE_BACKGROUND_DATA_CHANGED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b9

    :cond_182
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/fsck/k9/service/MailService;->notifyConnectionStatus(Z)V

    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/service/MailService;->rescheduleAll(ZZLjava/lang/Integer;)V

    const/4 v10, 0x0

    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_a6

    const-string v14, "k9"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Got connectivity action with hasConnectivity = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", doBackground = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a6

    :cond_1b9
    const-string v14, "com.fsck.k9.intent.action.MAIL_SERVICE_CANCEL_CONNECTIVITY_NOTICE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a6

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/fsck/k9/service/MailService;->notifyConnectionStatus(Z)V
    :try_end_1cc
    .catchall {:try_start_108 .. :try_end_1cc} :catchall_fd

    goto/16 :goto_a6
.end method
