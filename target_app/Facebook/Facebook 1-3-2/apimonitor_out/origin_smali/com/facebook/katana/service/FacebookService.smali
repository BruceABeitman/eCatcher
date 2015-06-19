.class public Lcom/facebook/katana/service/FacebookService;
.super Landroid/app/Service;
.source "FacebookService.java"

# interfaces
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EXTRA_ORIGINAL_INTENT:Ljava/lang/String; = "FacebookService.originalIntent"

.field private static final FACEBOOK_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"

.field public static isBackgroundMode:Z

.field private static nextIntent:Landroid/content/Intent;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDownloadQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingOps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/api/methods/ApiMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    const-class v0, Lcom/facebook/katana/service/FacebookService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/facebook/katana/service/FacebookService;->$assertionsDisabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/service/FacebookService;->nextIntent:Landroid/content/Intent;

    sput-boolean v1, Lcom/facebook/katana/service/FacebookService;->isBackgroundMode:Z

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/FacebookService;->mDownloadQueue:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/FacebookService;->mPendingOps:Ljava/util/Map;

    return-void
.end method

.method private downloadNext(Landroid/content/Intent;)V
    .registers 16

    const-wide/16 v4, -0x1

    const/4 v9, -0x1

    const-string v6, "uid"

    const-string v13, "type"

    const-string v3, "rid"

    iget-object v0, p0, Lcom/facebook/katana/service/FacebookService;->mDownloadQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    :goto_15
    iget-object v0, p0, Lcom/facebook/katana/service/FacebookService;->mDownloadQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    iget-object v0, p0, Lcom/facebook/katana/service/FacebookService;->mDownloadQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    const-string v0, "type"

    invoke-virtual {v2, v13, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_96

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    if-ne v10, p1, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    :sswitch_3c
    const-string v0, "rid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/facebook/katana/service/api/methods/PhotoDownload;

    iget-object v1, p0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    const-string v3, "uid"

    invoke-virtual {v2, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "aid"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pid"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "uri"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v2, v13, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/facebook/katana/service/api/methods/PhotoDownload;-><init>(Landroid/content/Context;Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    invoke-direct {p0, v12, v0}, Lcom/facebook/katana/service/FacebookService;->startOp(Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethod;)V

    goto :goto_2f

    :sswitch_6c
    const-string v0, "rid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/facebook/katana/service/api/methods/UserImageDownload;

    iget-object v1, p0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    const-string v3, "uid"

    invoke-virtual {v2, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "un"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "uri"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/facebook/katana/util/FileUtils;->buildFilename(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/service/api/methods/UserImageDownload;-><init>(Landroid/content/Context;Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    invoke-direct {p0, v9, v0}, Lcom/facebook/katana/service/FacebookService;->startOp(Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethod;)V

    goto :goto_2f

    :sswitch_data_96
    .sparse-switch
        0x48 -> :sswitch_3c
        0x49 -> :sswitch_3c
        0x4a -> :sswitch_3c
        0x4b -> :sswitch_3c
        0x4c -> :sswitch_3c
        0x4d -> :sswitch_3c
        0x64 -> :sswitch_6c
    .end sparse-switch
.end method

.method public static pause(ZZLandroid/app/Activity;)V
    .registers 5

    if-nez p0, :cond_1d

    if-eqz p1, :cond_1d

    sget-object v0, Lcom/facebook/katana/service/FacebookService;->nextIntent:Landroid/content/Intent;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/facebook/katana/service/FacebookService;->nextIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/facebook/katana/service/FacebookService;->processActivityChange(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_10
    const-string v0, "LogClass"

    const-string v1, "GOING TO SLEEP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/service/FacebookService;->isBackgroundMode:Z

    invoke-static {p2}, Lcom/facebook/katana/service/api/methods/ApiLogging;->flush(Landroid/content/Context;)V

    :cond_1d
    if-nez p0, :cond_22

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/service/FacebookService;->nextIntent:Landroid/content/Intent;

    :cond_22
    return-void
.end method

.method public static processActivityChange(Landroid/content/Intent;)Z
    .registers 5

    const/4 v3, 0x1

    sput-object p0, Lcom/facebook/katana/service/FacebookService;->nextIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_b

    move v1, v3

    :goto_a
    return v1

    :cond_b
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.katana"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    goto :goto_a

    :cond_19
    move v1, v3

    goto :goto_a
.end method

.method public static resume(ZLandroid/app/Activity;)Z
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/service/FacebookService;->nextIntent:Landroid/content/Intent;

    if-eqz p0, :cond_8

    move v0, v2

    :goto_7
    return v0

    :cond_8
    sget-boolean v0, Lcom/facebook/katana/service/FacebookService;->isBackgroundMode:Z

    if-eqz v0, :cond_18

    const-string v0, "LogClass"

    const-string v1, "WAKING UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/facebook/katana/service/FacebookService;->isBackgroundMode:Z

    invoke-static {p1}, Lcom/facebook/katana/service/api/methods/ApiLogging;->load(Landroid/content/Context;)V

    :cond_18
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private startOp(Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethod;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/service/FacebookService;->mPendingOps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/methods/ApiMethod;->start()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/facebook/katana/service/FacebookService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 109

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/ApiMethod;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v5, "type"

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v97

    sparse-switch v97, :sswitch_data_65a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v71, v0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v72, v13

    move/from16 v73, p2

    move-object/from16 v74, p3

    move-object/from16 v75, p4

    invoke-static/range {v71 .. v77}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    :goto_23
    return-void

    :sswitch_24
    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_a4

    const-string v5, "rid"

    invoke-virtual {v13, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v91

    check-cast p1, Lcom/facebook/katana/service/api/methods/AuthLogin;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/AuthLogin;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v11

    new-instance v85, Ljava/util/ArrayList;

    invoke-direct/range {v85 .. v85}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v5, "type"

    const/4 v6, 0x3

    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "FacebookService.originalIntent"

    invoke-virtual {v7, v5, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "ApiMethod.secret"

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionSecret()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Object;)V

    move-object/from16 v0, v85

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/facebook/katana/service/api/methods/StreamGetFilters;

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/facebook/katana/service/api/methods/StreamGetFilters;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    move-object/from16 v0, v85

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/facebook/katana/service/api/methods/BatchRun;

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, v85

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/BatchRun;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/FacebookService;->startOp(Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethod;)V

    goto :goto_23

    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-static/range {v12 .. v18}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_b8
    const/4 v11, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_121

    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/BatchRun;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/methods/BatchRun;->getMethods()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    invoke-virtual/range {v88 .. v88}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getOpaque()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/service/api/FacebookSessionInfo;

    if-nez v11, :cond_e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v11

    :cond_e5
    invoke-virtual/range {v88 .. v88}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getUsers()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual {v11, v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->setProfile(Lcom/facebook/katana/service/api/FacebookUser;)V

    check-cast p1, Lcom/facebook/katana/service/api/methods/BatchRun;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/BatchRun;->getMethods()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Lcom/facebook/katana/service/api/methods/StreamGetFilters;

    invoke-virtual/range {v92 .. v92}, Lcom/facebook/katana/service/api/methods/StreamGetFilters;->getNewsFeedFilter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->setFilterKey(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->saveActiveSessionInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_121
    const-string v5, "FacebookService.originalIntent"

    invoke-virtual {v13, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/content/Intent;

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v14, v0

    const/16 v20, 0x0

    move/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, v11

    invoke-static/range {v14 .. v20}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_13f
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_16a

    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/StreamSync;

    move-object/from16 v95, v0

    invoke-virtual/range {v95 .. v95}, Lcom/facebook/katana/service/api/methods/StreamSync;->getPosts()Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {v95 .. v95}, Lcom/facebook/katana/service/api/methods/StreamSync;->getInfoList()Ljava/util/List;

    move-result-object v84

    if-eqz v84, :cond_16a

    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_16a

    const/4 v5, 0x0

    move-object/from16 v0, v84

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/facebook/katana/service/api/FacebookInfo;

    :cond_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v17, v13

    move/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    invoke-static/range {v16 .. v22}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_17d
    const/16 v21, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_190

    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/StreamSync;

    move-object/from16 v94, v0

    invoke-virtual/range {v94 .. v94}, Lcom/facebook/katana/service/api/methods/StreamSync;->getPosts()Ljava/util/List;

    move-result-object v21

    :cond_190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v29, 0x0

    move-object/from16 v24, v13

    move/from16 v25, p2

    move-object/from16 v26, p3

    move-object/from16 v27, p4

    move-object/from16 v28, v21

    invoke-static/range {v23 .. v29}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast p1, Lcom/facebook/katana/service/api/methods/StreamPublish;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/StreamPublish;->getPostId()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v24, v13

    move/from16 v25, p2

    move-object/from16 v26, p3

    move-object/from16 v27, p4

    invoke-static/range {v23 .. v29}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_1c2
    const/16 v28, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_1d1

    check-cast p1, Lcom/facebook/katana/service/api/methods/StreamGetComments;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/StreamGetComments;->getComments()Ljava/util/List;

    move-result-object v28

    :cond_1d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v29, 0x0

    move-object/from16 v24, v13

    move/from16 v25, p2

    move-object/from16 v26, p3

    move-object/from16 v27, p4

    invoke-static/range {v23 .. v29}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_1e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    check-cast p1, Lcom/facebook/katana/service/api/methods/StreamAddComment;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/StreamAddComment;->getCommentId()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v30, v13

    move/from16 v31, p2

    move-object/from16 v32, p3

    move-object/from16 v33, p4

    invoke-static/range {v29 .. v35}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_201
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v87 .. v87}, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->getAlbum()Lcom/facebook/katana/service/api/FacebookAlbum;

    move-result-object v34

    invoke-virtual/range {v87 .. v87}, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->getAlbumUri()Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v30, v13

    move/from16 v31, p2

    move-object/from16 v32, p3

    move-object/from16 v33, p4

    invoke-static/range {v29 .. v35}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_222
    const-string v5, "session_user_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v13, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v32

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_24e

    check-cast p1, Lcom/facebook/katana/service/api/methods/PhotosUpload;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/PhotosUpload;->getPhoto()Lcom/facebook/katana/service/api/FacebookPhoto;

    move-result-object v29

    :goto_237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const/16 v40, 0x0

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    move-object/from16 v39, v29

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_24e
    const-string v5, "aid"

    invoke-virtual {v13, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    new-instance v29, Lcom/facebook/katana/service/api/FacebookPhoto;

    const/16 v30, 0x0

    const-string v5, "subject"

    invoke-virtual {v13, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    invoke-direct/range {v29 .. v40}, Lcom/facebook/katana/service/api/FacebookPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V

    goto :goto_237

    :sswitch_26c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    check-cast p1, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->hasAlbumCoverChanged()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_28b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    check-cast p1, Lcom/facebook/katana/service/api/methods/PhotosAddTag;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/PhotosAddTag;->getTags()Ljava/util/List;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_2a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    check-cast p1, Lcom/facebook/katana/service/api/methods/PhotosGetTags;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/PhotosGetTags;->getTags()Ljava/util/List;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_2c1
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    move-object/from16 v93, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v93 .. v93}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->getComments()Ljava/util/List;

    move-result-object v39

    invoke-virtual/range {v93 .. v93}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->getCanComment()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_2e6
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/PhotosAddComment;

    move-object/from16 v86, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v86 .. v86}, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->getComment()Lcom/facebook/katana/service/api/FacebookPhotoComment;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    check-cast p1, Lcom/facebook/katana/service/api/methods/PhotoDownload;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/PhotoDownload;->getPhoto()Lcom/facebook/katana/binding/StreamPhoto;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/facebook/katana/service/FacebookService;->downloadNext(Landroid/content/Intent;)V

    goto/16 :goto_23

    :sswitch_326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/facebook/katana/service/FacebookService;->downloadNext(Landroid/content/Intent;)V

    goto/16 :goto_23

    :sswitch_343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/facebook/katana/service/FacebookService;->downloadNext(Landroid/content/Intent;)V

    goto/16 :goto_23

    :sswitch_360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    check-cast p1, Lcom/facebook/katana/service/api/methods/UserImageDownload;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/UserImageDownload;->getUserImage()Lcom/facebook/katana/binding/UserImage;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/facebook/katana/service/FacebookService;->downloadNext(Landroid/content/Intent;)V

    goto/16 :goto_23

    :sswitch_381
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;

    move-object/from16 v83, v0

    const/16 v102, 0x0

    const/16 v90, 0x0

    const/16 v22, 0x0

    const/16 v80, 0x0

    const/16 v79, 0x1

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_413

    const-string v5, "user"

    move-object/from16 v0, v83

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->getQueryByName(Ljava/lang/String;)Lcom/facebook/katana/service/api/methods/FqlQuery;

    move-result-object v102

    check-cast v102, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    sget-boolean v5, Lcom/facebook/katana/service/FacebookService;->$assertionsDisabled:Z

    if-nez v5, :cond_3b8

    invoke-virtual/range {v102 .. v102}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getUsers()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3b8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_3b8
    invoke-virtual/range {v102 .. v102}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getUsers()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Lcom/facebook/katana/service/api/FacebookUser;

    move-object/from16 v0, v101

    check-cast v0, Lcom/facebook/katana/service/api/FacebookUserFull;

    move-object/from16 v22, v0

    :cond_3d6
    const-string v5, "significant_other"

    move-object/from16 v0, v83

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->getQueryByName(Ljava/lang/String;)Lcom/facebook/katana/service/api/methods/FqlQuery;

    move-result-object v90

    check-cast v90, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    invoke-virtual/range {v90 .. v90}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getUsers()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3fe

    invoke-virtual/range {v90 .. v90}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getUsers()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3f8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_42c

    :cond_3fe
    const-string v5, "arefriends"

    move-object/from16 v0, v83

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->getQueryByName(Ljava/lang/String;)Lcom/facebook/katana/service/api/methods/FqlQuery;

    move-result-object v80

    check-cast v80, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;

    if-eqz v80, :cond_413

    invoke-virtual/range {v80 .. v80}, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->areFriends()Z

    move-result v5

    if-nez v5, :cond_413

    const/16 v79, 0x0

    :cond_413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v79 .. v79}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    move-object/from16 v39, v22

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_42c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Lcom/facebook/katana/service/api/FacebookUser;

    move-object/from16 v0, v22

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookUserFull;->setSignificantOther(Lcom/facebook/katana/service/api/FacebookUser;)V

    goto :goto_3f8

    :sswitch_43a
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;

    move-object/from16 v83, v0

    const/16 v102, 0x0

    const/16 v22, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_485

    const-string v5, "user"

    move-object/from16 v0, v83

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->getQueryByName(Ljava/lang/String;)Lcom/facebook/katana/service/api/methods/FqlQuery;

    move-result-object v102

    check-cast v102, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    sget-boolean v5, Lcom/facebook/katana/service/FacebookService;->$assertionsDisabled:Z

    if-nez v5, :cond_46b

    invoke-virtual/range {v102 .. v102}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getUsers()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_46b

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_46b
    invoke-virtual/range {v102 .. v102}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getUsers()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_485

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Lcom/facebook/katana/service/api/FacebookUser;

    move-object/from16 v22, v101

    :cond_485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const/16 v40, 0x0

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    move-object/from16 v39, v22

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_49c
    const/16 v39, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_4af

    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/FriendsSync;

    move-object/from16 v100, v0

    invoke-virtual/range {v100 .. v100}, Lcom/facebook/katana/service/api/methods/FriendsSync;->getUsersWithoutImageMap()Ljava/util/Map;

    move-result-object v39

    :cond_4af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const/16 v40, 0x0

    move-object/from16 v35, v13

    move/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p4

    invoke-static/range {v34 .. v40}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_4c4
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/UsersSearch;

    move-object/from16 v103, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v103 .. v103}, Lcom/facebook/katana/service/api/methods/UsersSearch;->getStartResults()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v103 .. v103}, Lcom/facebook/katana/service/api/methods/UsersSearch;->getTotalResults()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v41, v13

    move/from16 v42, p2

    move-object/from16 v43, p3

    move-object/from16 v44, p4

    invoke-static/range {v40 .. v46}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_4ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    check-cast p1, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;->getStatusList()Ljava/util/List;

    move-result-object v45

    const/16 v46, 0x0

    move-object/from16 v41, v13

    move/from16 v42, p2

    move-object/from16 v43, p3

    move-object/from16 v44, p4

    invoke-static/range {v40 .. v46}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_508
    const/16 v45, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_517

    check-cast p1, Lcom/facebook/katana/service/api/methods/NotificationsGet;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/NotificationsGet;->getNotifications()Lcom/facebook/katana/service/api/FacebookNotifications;

    move-result-object v45

    :cond_517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    const/16 v46, 0x0

    move-object/from16 v41, v13

    move/from16 v42, p2

    move-object/from16 v43, p3

    move-object/from16 v44, p4

    invoke-static/range {v40 .. v46}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_52c
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/FqlGetEvents;

    move-object/from16 v89, v0

    const/16 v51, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_53f

    invoke-virtual/range {v89 .. v89}, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->getEvents()Ljava/util/List;

    move-result-object v51

    :cond_53f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const/16 v52, 0x0

    move-object/from16 v47, v13

    move/from16 v48, p2

    move-object/from16 v49, p3

    move-object/from16 v50, p4

    invoke-static/range {v46 .. v52}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_554
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/EventRsvp;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Lcom/facebook/katana/service/api/methods/EventRsvp;->getEventId()J

    move-result-wide v81

    const/16 v96, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_56b

    invoke-virtual/range {v89 .. v89}, Lcom/facebook/katana/service/api/methods/EventRsvp;->getSuccess()Z

    move-result v96

    :cond_56b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    invoke-static/range {v81 .. v82}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-static/range {v96 .. v96}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v58

    move-object/from16 v53, v13

    move/from16 v54, p2

    move-object/from16 v55, p3

    move-object/from16 v56, p4

    invoke-static/range {v52 .. v58}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_586
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->getEventId()J

    move-result-wide v81

    const/16 v58, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_59d

    invoke-virtual/range {v89 .. v89}, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->getEventMembersByStatus()Ljava/util/Map;

    move-result-object v58

    :cond_59d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    invoke-static/range {v81 .. v82}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    move-object/from16 v53, v13

    move/from16 v54, p2

    move-object/from16 v55, p3

    move-object/from16 v56, p4

    invoke-static/range {v52 .. v58}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_5b4
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    move-object/from16 v89, v0

    const/16 v64, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_5c7

    invoke-virtual/range {v89 .. v89}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getUsers()Ljava/util/Map;

    move-result-object v64

    :cond_5c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v59, v0

    const/16 v65, 0x0

    move-object/from16 v60, v13

    move/from16 v61, p2

    move-object/from16 v62, p3

    move-object/from16 v63, p4

    invoke-static/range {v59 .. v65}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_5dc
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;->getRequesterUserId()J

    move-result-wide v98

    const/16 v96, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_5f3

    invoke-virtual/range {v89 .. v89}, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;->getSuccess()Z

    move-result v96

    :cond_5f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v65, v0

    new-instance v70, Ljava/lang/Long;

    move-object/from16 v0, v70

    move-wide/from16 v1, v98

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    new-instance v71, Ljava/lang/Boolean;

    move-object/from16 v0, v71

    move/from16 v1, v96

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v66, v13

    move/from16 v67, p2

    move-object/from16 v68, p3

    move-object/from16 v69, p4

    invoke-static/range {v65 .. v71}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_618
    move-object/from16 v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;

    move-object/from16 v89, v0

    const/16 v70, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_62b

    invoke-virtual/range {v89 .. v89}, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;->getMutualFriends()Ljava/util/Map;

    move-result-object v70

    :cond_62b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v65, v0

    const/16 v71, 0x0

    move-object/from16 v66, v13

    move/from16 v67, p2

    move-object/from16 v68, p3

    move-object/from16 v69, p4

    invoke-static/range {v65 .. v71}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_640
    invoke-static {}, Lcom/facebook/katana/service/api/FacebookAffiliation;->requestCompleted()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v71, v0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v72, v13

    move/from16 v73, p2

    move-object/from16 v74, p3

    move-object/from16 v75, p4

    invoke-static/range {v71 .. v77}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :sswitch_data_65a
    .sparse-switch
        0x1 -> :sswitch_24
        0x3 -> :sswitch_b8
        0x1e -> :sswitch_13f
        0x1f -> :sswitch_1c2
        0x20 -> :sswitch_1a7
        0x21 -> :sswitch_1e6
        0x26 -> :sswitch_1a7
        0x32 -> :sswitch_508
        0x35 -> :sswitch_17d
        0x3d -> :sswitch_201
        0x41 -> :sswitch_222
        0x43 -> :sswitch_26c
        0x44 -> :sswitch_28b
        0x45 -> :sswitch_2a6
        0x46 -> :sswitch_2c1
        0x47 -> :sswitch_2e6
        0x48 -> :sswitch_305
        0x49 -> :sswitch_305
        0x4a -> :sswitch_326
        0x4b -> :sswitch_343
        0x4c -> :sswitch_326
        0x4d -> :sswitch_305
        0x50 -> :sswitch_49c
        0x51 -> :sswitch_4ed
        0x52 -> :sswitch_381
        0x53 -> :sswitch_43a
        0x64 -> :sswitch_360
        0x78 -> :sswitch_52c
        0x79 -> :sswitch_554
        0x7a -> :sswitch_586
        0x83 -> :sswitch_5b4
        0x84 -> :sswitch_5dc
        0x85 -> :sswitch_618
        0x8c -> :sswitch_640
        0xd3 -> :sswitch_4c4
        0x12d -> :sswitch_24
    .end sparse-switch
.end method

.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
    .registers 11

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/methods/ApiMethod;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_20

    :goto_e
    return-void

    :pswitch_f
    iget-object v2, p0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x64

    mul-long/2addr v3, p2

    div-long/2addr v3, p4

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationProgress(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    nop

    :pswitch_data_20
    .packed-switch 0x41
        :pswitch_f
    .end packed-switch
.end method

.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 75

    invoke-super/range {p0 .. p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    const-string v6, "type"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v68

    const/4 v5, 0x0

    sparse-switch v68, :sswitch_data_bf0

    :goto_15
    if-eqz v5, :cond_5

    const-string v6, "rid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/FacebookService;->startOp(Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethod;)V

    goto :goto_5

    :sswitch_28
    new-instance v5, Lcom/facebook/katana/service/api/methods/AuthLogin;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/service/FacebookService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "un"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "pwd"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v7, p1

    move-object/from16 v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/facebook/katana/service/api/methods/AuthLogin;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto :goto_15

    :sswitch_48
    new-instance v66, Ljava/util/ArrayList;

    invoke-direct/range {v66 .. v66}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v45

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v11, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v7, v0

    const/4 v10, 0x0

    const-class v12, Lcom/facebook/katana/service/api/FacebookUser;

    move-object/from16 v8, p1

    invoke-direct/range {v6 .. v12}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Class;)V

    move-object/from16 v0, v66

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/facebook/katana/service/api/methods/StreamGetFilters;

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/service/api/methods/StreamGetFilters;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    move-object/from16 v0, v66

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/facebook/katana/service/api/methods/BatchRun;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, v66

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/BatchRun;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mPendingOps:Ljava/util/Map;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mPendingOps:Ljava/util/Map;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mDownloadQueue:Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->clear()V

    new-instance v5, Lcom/facebook/katana/service/api/methods/AuthLogout;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/service/FacebookService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "session_key"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v7

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/AuthLogout;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :cond_e2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lcom/facebook/katana/service/api/methods/ApiMethod;

    invoke-virtual/range {v65 .. v65}, Lcom/facebook/katana/service/api/methods/ApiMethod;->cancel()V

    goto :goto_b1

    :sswitch_ec
    new-instance v5, Lcom/facebook/katana/service/api/methods/ConfigFetcher;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/service/api/methods/ConfigFetcher;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_102
    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "subject"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v18

    new-instance v5, Lcom/facebook/katana/service/api/methods/StreamSync;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v13, v0

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v6, "start"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    const-string v6, "end"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    const-string v6, "limit"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    if-nez v18, :cond_162

    const-string v6, "session_filter_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v6

    :goto_157
    move-object v12, v5

    move-object/from16 v14, p1

    move-object v15, v9

    move-object/from16 v25, p0

    invoke-direct/range {v12 .. v25}, Lcom/facebook/katana/service/api/methods/StreamSync;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[JJJILjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :cond_162
    const/4 v6, 0x0

    move-object/from16 v24, v6

    goto :goto_157

    :sswitch_166
    new-instance v5, Lcom/facebook/katana/service/api/methods/StreamSync;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v23

    const/16 v25, 0x0

    const-string v6, "start"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v26

    const-string v6, "end"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v28

    const-string v6, "limit"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    const-string v6, "session_filter_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v32, p0

    invoke-direct/range {v19 .. v32}, Lcom/facebook/katana/service/api/methods/StreamSync;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[JJJILjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_1bc
    new-instance v5, Lcom/facebook/katana/service/api/methods/StreamPublish;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    const-string v6, "status"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v5

    move-object/from16 v20, p1

    move-object/from16 v25, p0

    invoke-direct/range {v19 .. v25}, Lcom/facebook/katana/service/api/methods/StreamPublish;-><init>(Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_1e7
    new-instance v5, Lcom/facebook/katana/service/api/methods/StreamRemove;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "post_id"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/StreamRemove;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_207
    new-instance v5, Lcom/facebook/katana/service/api/methods/StreamGetComments;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/service/FacebookService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v6, "post_id"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v12, v5

    move-object/from16 v14, p1

    move-object/from16 v17, p0

    invoke-direct/range {v12 .. v17}, Lcom/facebook/katana/service/api/methods/StreamGetComments;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_229
    new-instance v5, Lcom/facebook/katana/service/api/methods/StreamAddComment;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v6, "session_user_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    const-string v6, "post_id"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v6, "status"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v19, v5

    move-object/from16 v20, p1

    move-object/from16 v26, p0

    invoke-direct/range {v19 .. v26}, Lcom/facebook/katana/service/api/methods/StreamAddComment;-><init>(Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_25d
    new-instance v5, Lcom/facebook/katana/service/api/methods/StreamRemoveComment;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "item_id"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/StreamRemoveComment;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_27d
    new-instance v5, Lcom/facebook/katana/service/api/methods/StreamAddLike;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v6, "session_user_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    const-string v6, "post_id"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v5

    move-object/from16 v20, p1

    move-object/from16 v25, p0

    invoke-direct/range {v19 .. v25}, Lcom/facebook/katana/service/api/methods/StreamAddLike;-><init>(Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_2a8
    new-instance v5, Lcom/facebook/katana/service/api/methods/StreamRemoveLike;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "post_id"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/StreamRemoveLike;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_2c8
    new-instance v67, Ljava/util/HashMap;

    invoke-direct/range {v67 .. v67}, Ljava/util/HashMap;-><init>()V

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v45

    const-string v6, "session_user_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v69

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/lang/Long;

    move-object v0, v6

    move-wide/from16 v1, v45

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    const/4 v7, 0x0

    invoke-interface {v11, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "user"

    new-instance v6, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v7, v0

    const/4 v10, 0x0

    const-class v12, Lcom/facebook/katana/service/api/FacebookUserFull;

    move-object/from16 v8, p1

    invoke-direct/range {v6 .. v12}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Class;)V

    move-object/from16 v0, v67

    move-object v1, v13

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "significant_other"

    new-instance v19, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v23, 0x0

    const-string v24, "uid IN (SELECT significant_other_id FROM #user)"

    const-class v25, Lcom/facebook/katana/service/api/FacebookUser;

    move-object/from16 v21, p1

    move-object/from16 v22, v9

    invoke-direct/range {v19 .. v25}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/lang/String;Ljava/lang/Class;)V

    move-object/from16 v0, v67

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v6, v45, v69

    if-eqz v6, :cond_353

    const-string v6, "arefriends"

    new-instance v19, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;

    const/16 v26, 0x0

    move-object/from16 v20, p1

    move-object/from16 v21, v9

    move-wide/from16 v22, v69

    move-wide/from16 v24, v45

    invoke-direct/range {v19 .. v26}, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;-><init>(Landroid/content/Intent;Ljava/lang/String;JJLcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    move-object/from16 v0, v67

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_353
    new-instance v5, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, v67

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_362
    new-instance v67, Ljava/util/HashMap;

    invoke-direct/range {v67 .. v67}, Ljava/util/HashMap;-><init>()V

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v45

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/lang/Long;

    move-object v0, v6

    move-wide/from16 v1, v45

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    const/4 v7, 0x0

    invoke-interface {v11, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "user"

    new-instance v6, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v7, v0

    const/4 v10, 0x0

    const-class v12, Lcom/facebook/katana/service/api/FacebookUser;

    move-object/from16 v8, p1

    invoke-direct/range {v6 .. v12}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Class;)V

    move-object/from16 v0, v67

    move-object v1, v13

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, v67

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_3b4
    new-instance v5, Lcom/facebook/katana/service/api/methods/FriendsSync;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "session_user_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v23

    const-string v6, "un"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v26, p0

    invoke-direct/range {v19 .. v26}, Lcom/facebook/katana/service/api/methods/FriendsSync;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_3e5
    new-instance v5, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "SELECT uid,first_name,last_name,name,status,pic_square FROM user WHERE ((uid IN (SELECT uid2 FROM friend WHERE uid1=%1)) AND (status.message != \'\')) ORDER BY status.time DESC LIMIT 25"

    const-string v7, "%1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "session_user_id"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p1

    move-object v1, v9

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v6, "un"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v25, p0

    invoke-direct/range {v19 .. v25}, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_42b
    new-instance v5, Lcom/facebook/katana/service/api/methods/FriendsAddFriend;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    const-string v6, "status"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v5

    move-object/from16 v20, p1

    move-object/from16 v25, p0

    invoke-direct/range {v19 .. v25}, Lcom/facebook/katana/service/api/methods/FriendsAddFriend;-><init>(Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_456
    new-instance v5, Lcom/facebook/katana/service/api/methods/NotificationsGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-string v7, "session_key"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v7

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/NotificationsGet;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_472
    new-instance v5, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "session_user_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v23

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v25, p0

    invoke-direct/range {v19 .. v25}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_49a
    new-instance v5, Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v13, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v6, "item_id"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v16

    move-object v12, v5

    move-object/from16 v14, p1

    move-object/from16 v17, p0

    invoke-direct/range {v12 .. v17}, Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;[JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_4bd
    new-instance v5, Lcom/facebook/katana/service/api/methods/SyncAlbums;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v23

    const-string v6, "aid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v26, p0

    invoke-direct/range {v19 .. v26}, Lcom/facebook/katana/service/api/methods/SyncAlbums;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_4ee
    new-instance v5, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v6, "location"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v6, "description"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v6, "visibility"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v27, p0

    invoke-direct/range {v19 .. v27}, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_52e
    new-instance v5, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "aid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v6, "name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v6, "location"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v6, "description"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v6, "visibility"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v28, p0

    invoke-direct/range {v19 .. v28}, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_577
    new-instance v5, Lcom/facebook/katana/service/api/methods/PhotosDeleteAlbum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v23

    const-string v6, "aid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v26, p0

    invoke-direct/range {v19 .. v26}, Lcom/facebook/katana/service/api/methods/PhotosDeleteAlbum;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_5a8
    new-instance v5, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "aid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v6, "pid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v25

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v27, p0

    invoke-direct/range {v19 .. v27}, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_5e2
    new-instance v5, Lcom/facebook/katana/service/api/methods/PhotosUpload;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "aid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v6, "subject"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v6, "uri"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v26, p0

    invoke-direct/range {v19 .. v26}, Lcom/facebook/katana/service/api/methods/PhotosUpload;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_619
    new-instance v5, Lcom/facebook/katana/service/api/methods/PhotosEditPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "pid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v6, "subject"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v25, p0

    invoke-direct/range {v19 .. v25}, Lcom/facebook/katana/service/api/methods/PhotosEditPhoto;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_647
    new-instance v5, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "aid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v6, "pid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v25, p0

    invoke-direct/range {v19 .. v25}, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_675
    new-instance v5, Lcom/facebook/katana/service/api/methods/PhotosAddTag;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v6, "pid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v6, "tags"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v12, v5

    move-object/from16 v13, p1

    move-object/from16 v17, p0

    invoke-direct/range {v12 .. v17}, Lcom/facebook/katana/service/api/methods/PhotosAddTag;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_69c
    new-instance v5, Lcom/facebook/katana/service/api/methods/PhotosGetTags;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pid"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/PhotosGetTags;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_6bc
    new-instance v5, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/service/FacebookService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v6, "pid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v12, v5

    move-object/from16 v14, p1

    move-object/from16 v17, p0

    invoke-direct/range {v12 .. v17}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_6de
    new-instance v5, Lcom/facebook/katana/service/api/methods/PhotosAddComment;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    const-string v6, "pid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v6, "status"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v19, v5

    move-object/from16 v20, p1

    move-object/from16 v26, p0

    invoke-direct/range {v19 .. v26}, Lcom/facebook/katana/service/api/methods/PhotosAddComment;-><init>(Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mDownloadQueue:Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_760

    new-instance v5, Lcom/facebook/katana/service/api/methods/PhotoDownload;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    const-string v6, "aid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v6, "pid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v6, "uri"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v6, "type"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v28, p0

    invoke-direct/range {v19 .. v28}, Lcom/facebook/katana/service/api/methods/PhotoDownload;-><init>(Landroid/content/Context;Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    :cond_760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mDownloadQueue:Ljava/util/List;

    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_15

    :sswitch_76f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mDownloadQueue:Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_7b2

    new-instance v5, Lcom/facebook/katana/service/api/methods/UserImageDownload;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    const-string v6, "un"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v6, "uri"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v6}, Lcom/facebook/katana/util/FileUtils;->buildFilename(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v27, p0

    invoke-direct/range {v19 .. v27}, Lcom/facebook/katana/service/api/methods/UserImageDownload;-><init>(Landroid/content/Context;Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    :cond_7b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mDownloadQueue:Ljava/util/List;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :sswitch_7bf
    new-instance v5, Lcom/facebook/katana/service/api/methods/MailboxSync;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "folder"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    const-string v6, "start"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const-string v6, "limit"

    const/16 v7, 0x14

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    const-string v6, "sync"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v27

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v29, p0

    invoke-direct/range {v19 .. v29}, Lcom/facebook/katana/service/api/methods/MailboxSync;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IIIZJLcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_814
    new-instance v5, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "folder"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    const-string v6, "tid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, -0x1

    move-object/from16 v19, v5

    move-object/from16 v21, p1

    move-object/from16 v28, p0

    invoke-direct/range {v19 .. v28}, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IJIILcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_84b
    new-instance v19, Lcom/facebook/katana/service/api/FacebookUser;

    const-string v6, "profile_uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    const-string v6, "profile_first_name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "profile_last_name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v6, "profile_display_name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v6, "profile_url"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v19 .. v25}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "uid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    new-instance v5, Lcom/facebook/katana/service/api/methods/MailboxSend;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v6, "subject"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v6, "status"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v20, v5

    move-object/from16 v22, p1

    move-object/from16 v24, v19

    move-object/from16 v28, p0

    invoke-direct/range {v20 .. v28}, Lcom/facebook/katana/service/api/methods/MailboxSend;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookUser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_8bb
    new-instance v19, Lcom/facebook/katana/service/api/FacebookUser;

    const-string v6, "profile_uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v27

    const-string v6, "profile_first_name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v6, "profile_last_name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v6, "profile_display_name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v6, "profile_url"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v26, v19

    invoke-direct/range {v26 .. v32}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/facebook/katana/service/api/methods/MailboxReply;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v6, "tid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    const-string v6, "status"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v26, v5

    move-object/from16 v28, p1

    move-object/from16 v30, v19

    move-object/from16 v34, p0

    invoke-direct/range {v26 .. v34}, Lcom/facebook/katana/service/api/methods/MailboxReply;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookUser;JLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_925
    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "tid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v71

    const-string v6, "read"

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    move-object/from16 v0, v71

    array-length v0, v0

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_961

    new-instance v5, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const/4 v6, 0x0

    aget-wide v30, v71, v6

    move-object/from16 v26, v5

    move-object/from16 v28, p1

    move-object/from16 v29, v9

    move-object/from16 v33, p0

    invoke-direct/range {v26 .. v33}, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JZLcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :cond_961
    new-instance v66, Ljava/util/ArrayList;

    invoke-direct/range {v66 .. v66}, Ljava/util/ArrayList;-><init>()V

    const/16 v64, 0x0

    :goto_968
    move-object/from16 v0, v71

    array-length v0, v0

    move v6, v0

    move/from16 v0, v64

    move v1, v6

    if-lt v0, v1, :cond_980

    new-instance v5, Lcom/facebook/katana/service/api/methods/BatchRun;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, v66

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/BatchRun;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :cond_980
    new-instance v26, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    aget-wide v30, v71, v64

    move-object/from16 v28, p1

    move-object/from16 v29, v9

    move-object/from16 v33, p0

    invoke-direct/range {v26 .. v33}, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JZLcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v64, v64, 0x1

    goto :goto_968

    :sswitch_99d
    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "tid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v71

    const-string v6, "folder"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    move-object/from16 v0, v71

    array-length v0, v0

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9d9

    new-instance v5, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const/4 v6, 0x0

    aget-wide v37, v71, v6

    move-object/from16 v33, v5

    move-object/from16 v35, p1

    move-object/from16 v36, v9

    move-object/from16 v40, p0

    invoke-direct/range {v33 .. v40}, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JILcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :cond_9d9
    new-instance v66, Ljava/util/ArrayList;

    invoke-direct/range {v66 .. v66}, Ljava/util/ArrayList;-><init>()V

    const/16 v64, 0x0

    :goto_9e0
    move-object/from16 v0, v71

    array-length v0, v0

    move v6, v0

    move/from16 v0, v64

    move v1, v6

    if-lt v0, v1, :cond_9f8

    new-instance v5, Lcom/facebook/katana/service/api/methods/BatchRun;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, v66

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/BatchRun;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :cond_9f8
    new-instance v33, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    aget-wide v37, v71, v64

    move-object/from16 v35, p1

    move-object/from16 v36, v9

    move-object/from16 v40, p0

    invoke-direct/range {v33 .. v40}, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JILcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v64, v64, 0x1

    goto :goto_9e0

    :sswitch_a15
    new-instance v5, Lcom/facebook/katana/service/api/methods/UsersSearch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const-string v6, "rid"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v6, "subject"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    const-string v6, "start"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    const-string v6, "limit"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v47

    move-object/from16 v40, v5

    move-object/from16 v42, p1

    move-object/from16 v48, p0

    invoke-direct/range {v40 .. v48}, Lcom/facebook/katana/service/api/methods/UsersSearch;-><init>(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;IILcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    goto/16 :goto_15

    :sswitch_a5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    const/16 v42, 0xc8

    const-string v43, "Ok"

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v41, p1

    invoke-static/range {v40 .. v46}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_15

    :sswitch_a74
    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v45

    new-instance v5, Lcom/facebook/katana/service/api/methods/FqlGetEvents;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v40, v5

    move-object/from16 v42, p1

    move-object/from16 v43, v9

    move-object/from16 v44, p0

    invoke-direct/range {v40 .. v46}, Lcom/facebook/katana/service/api/methods/FqlGetEvents;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;J)V

    goto/16 :goto_15

    :sswitch_a9e
    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "eid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v52

    const-string v6, "rsvp_status"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/katana/service/api/FacebookEvent;->getRsvpStatus(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;

    move-result-object v54

    new-instance v5, Lcom/facebook/katana/service/api/methods/EventRsvp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    move-object/from16 v47, v5

    move-object/from16 v49, p1

    move-object/from16 v50, v9

    move-object/from16 v51, p0

    invoke-direct/range {v47 .. v54}, Lcom/facebook/katana/service/api/methods/EventRsvp;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;JLcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;)V

    goto/16 :goto_15

    :sswitch_ad5
    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "eid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v52

    new-instance v5, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    move-object/from16 v47, v5

    move-object/from16 v49, p1

    move-object/from16 v50, v9

    move-object/from16 v51, p0

    invoke-direct/range {v47 .. v53}, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;J)V

    goto/16 :goto_15

    :sswitch_aff
    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v45

    new-instance v63, Ljava/lang/StringBuilder;

    const-string v6, "uid IN (SELECT uid_from FROM friend_request WHERE uid_to="

    move-object/from16 v0, v63

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v63

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    move-object/from16 v0, v63

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v56, v0

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    const-class v61, Lcom/facebook/katana/service/api/FacebookUser;

    move-object/from16 v55, v5

    move-object/from16 v57, p1

    move-object/from16 v58, v9

    move-object/from16 v59, p0

    invoke-direct/range {v55 .. v61}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_15

    :sswitch_b4b
    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v45

    const-string v6, "confirm"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v47

    new-instance v5, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;

    move-object/from16 v41, v5

    move-object/from16 v42, p1

    move-object/from16 v43, v9

    move-object/from16 v44, p0

    invoke-direct/range {v41 .. v47}, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;JZ)V

    goto/16 :goto_15

    :sswitch_b7a
    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v45

    new-instance v63, Ljava/lang/StringBuilder;

    const-string v6, "uid2 IN (SELECT uid_from FROM friend_request WHERE uid_to="

    move-object/from16 v0, v63

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v63

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    move-object/from16 v0, v63

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v56, v0

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v55, v5

    move-object/from16 v57, p1

    move-object/from16 v58, v9

    move-object/from16 v59, p0

    move-wide/from16 v60, v45

    invoke-direct/range {v55 .. v62}, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;JLjava/lang/String;)V

    goto/16 :goto_15

    :sswitch_bc6
    const-string v6, "session_key"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v45

    new-instance v5, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/FacebookService;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v40, v5

    move-object/from16 v42, p1

    move-object/from16 v43, v9

    move-object/from16 v44, p0

    invoke-direct/range {v40 .. v46}, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;J)V

    goto/16 :goto_15

    :sswitch_data_bf0
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_a4
        0x3 -> :sswitch_48
        0x1e -> :sswitch_102
        0x1f -> :sswitch_207
        0x20 -> :sswitch_1bc
        0x21 -> :sswitch_229
        0x22 -> :sswitch_1e7
        0x23 -> :sswitch_25d
        0x24 -> :sswitch_27d
        0x25 -> :sswitch_2a8
        0x26 -> :sswitch_1bc
        0x32 -> :sswitch_456
        0x33 -> :sswitch_472
        0x34 -> :sswitch_49a
        0x35 -> :sswitch_166
        0x3c -> :sswitch_4bd
        0x3d -> :sswitch_4ee
        0x3e -> :sswitch_52e
        0x3f -> :sswitch_577
        0x40 -> :sswitch_5a8
        0x41 -> :sswitch_5e2
        0x42 -> :sswitch_619
        0x43 -> :sswitch_647
        0x44 -> :sswitch_675
        0x45 -> :sswitch_69c
        0x46 -> :sswitch_6bc
        0x47 -> :sswitch_6de
        0x48 -> :sswitch_712
        0x49 -> :sswitch_712
        0x4a -> :sswitch_712
        0x4b -> :sswitch_712
        0x4c -> :sswitch_712
        0x4d -> :sswitch_712
        0x50 -> :sswitch_3b4
        0x51 -> :sswitch_3e5
        0x52 -> :sswitch_2c8
        0x53 -> :sswitch_362
        0x5a -> :sswitch_a5d
        0x5b -> :sswitch_a5d
        0x5c -> :sswitch_a5d
        0x64 -> :sswitch_76f
        0x6e -> :sswitch_7bf
        0x6f -> :sswitch_84b
        0x70 -> :sswitch_8bb
        0x71 -> :sswitch_925
        0x72 -> :sswitch_99d
        0x73 -> :sswitch_814
        0x78 -> :sswitch_a74
        0x79 -> :sswitch_a9e
        0x7a -> :sswitch_ad5
        0x82 -> :sswitch_42b
        0x83 -> :sswitch_aff
        0x84 -> :sswitch_b4b
        0x85 -> :sswitch_b7a
        0x8c -> :sswitch_bc6
        0xc8 -> :sswitch_a5d
        0xc9 -> :sswitch_a5d
        0xca -> :sswitch_a5d
        0xcb -> :sswitch_a5d
        0xd3 -> :sswitch_a15
        0x12c -> :sswitch_a5d
        0x12d -> :sswitch_28
        0x190 -> :sswitch_ec
    .end sparse-switch
.end method
