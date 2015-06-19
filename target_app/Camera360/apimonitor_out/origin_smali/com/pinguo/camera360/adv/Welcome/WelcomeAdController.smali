.class public Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;
.super Ljava/lang/Object;
.source "WelcomeAdController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController$MyadComparator;
    }
.end annotation


# static fields
.field public static final PREF_KEY_LATS_REQUEST_MILLIS:Ljava/lang/String; = "last_request_millis"

.field public static final PREF_NAME:Ljava/lang/String; = "welcome_ad"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private KEY_SHOW_COUNT:Ljava/lang/String;

.field private mAdInfo:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;

.field private mAreaId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPref:Landroid/content/SharedPreferences;

.field private mUpdateShownConut:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "shownCount_"

    iput-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->KEY_SHOW_COUNT:Ljava/lang/String;

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mAreaId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mUpdateShownConut:Z

    return-void
.end method

.method public static getPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string/jumbo v0, "welcome_ad"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkAd()Ljava/lang/String;
    .registers 14

    iget-object v6, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mAdInfo:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;

    if-nez v6, :cond_6

    const/4 v4, 0x0

    :goto_5
    return-object v4

    :cond_6
    iget-object v1, v6, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->areaList:Ljava/util/ArrayList;

    if-nez v1, :cond_c

    const/4 v4, 0x0

    goto :goto_5

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_14

    const/4 v4, 0x0

    goto :goto_5

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_21
    :goto_21
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_49

    sget-object v9, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "mNeedShowWelcome , new list : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-gtz v9, :cond_5b

    const/4 v4, 0x0

    goto :goto_5

    :cond_49
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->shouldBeShown(J)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_5b
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_6a

    new-instance v9, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController$MyadComparator;

    invoke-direct {v9, p0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController$MyadComparator;-><init>(Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6a
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;

    if-nez v0, :cond_75

    const/4 v4, 0x0

    goto :goto_5

    :cond_75
    iget-object v9, v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->imageInfoList:Ljava/util/ArrayList;

    if-nez v9, :cond_7b

    const/4 v4, 0x0

    goto :goto_5

    :cond_7b
    iget-object v9, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mPref:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->KEY_SHOW_COUNT:Ljava/lang/String;

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->shouldBeShown(J)Z

    move-result v9

    if-eqz v9, :cond_a1

    iget-object v9, v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->areaId:Ljava/lang/String;

    iput-object v9, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mAreaId:Ljava/lang/String;

    iget-object v9, v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->imageInfoList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;

    invoke-virtual {v5}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mUpdateShownConut:Z

    goto/16 :goto_5

    :cond_a1
    const/4 v4, 0x0

    goto/16 :goto_5
.end method

.method public checkIsNeedStartAdService()Z
    .registers 12

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v7, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    sget-object v6, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "no sdcard !!!!!!!!!!!!!!!!! do not request update ..."

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    return v5

    :cond_18
    :try_start_18
    iget-object v7, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mAdInfo:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;

    if-nez v7, :cond_24

    iget-object v7, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->newInstance(Landroid/content/Context;)Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mAdInfo:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;

    :cond_24
    iget-object v7, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mAdInfo:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;

    iget-wide v7, v7, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->interval:J

    const-wide/16 v9, 0x3e8

    mul-long v0, v7, v9

    iget-object v7, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mPref:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "last_request_millis"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    cmp-long v7, v7, v0

    if-gez v7, :cond_5c

    sget-object v7, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "can not request url in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_55} :catch_56

    goto :goto_17

    :catch_56
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move v5, v6

    goto :goto_17

    :cond_5c
    move v5, v6

    goto :goto_17
.end method

.method public create(Landroid/content/Context;)V
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {p1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->getPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mPref:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mContext:Landroid/content/Context;

    :try_start_d
    new-instance v2, Lcom/pinguo/camera360/adv/AdvertisementCache;

    invoke-direct {v2, p1}, Lcom/pinguo/camera360/adv/AdvertisementCache;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/adv/AdvertisementCache;->getCache()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->newInstance(Ljava/lang/String;)Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mAdInfo:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->KEY_SHOW_COUNT:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "_v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mAdInfo:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;

    iget-wide v3, v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->version:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/pinguo/lib/util/TimeUtils;->getDaysFrom1970()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->KEY_SHOW_COUNT:Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_47} :catch_48

    goto :goto_4

    :catch_48
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public getAreaId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mAreaId:Ljava/lang/String;

    return-object v0
.end method

.method public pause()V
    .registers 7

    iget-boolean v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mUpdateShownConut:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->KEY_SHOW_COUNT:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mPref:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->KEY_SHOW_COUNT:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mUpdateShownConut:Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->checkIsNeedStartAdService()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->startMe(Landroid/content/Context;)V

    :cond_2e
    return-void
.end method
