.class public Lcom/umeng/newxp/controller/ExchangeDataService;
.super Ljava/lang/Object;
.source "ExchangeDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/controller/ExchangeDataService$a;
    }
.end annotation


# static fields
.field public static DEBUG_NEW_TIPS:I = 0x0

.field private static final j:I = 0x0

.field private static final k:I = 0x1

.field private static final s:Ljava/lang/String; = "EXCHANGE_PRELOAD_ADS"


# instance fields
.field private a:Ljava/lang/String;

.field public appkey:Ljava/lang/String;

.field public autofill:I

.field private b:Ljava/lang/String;

.field public broadcast:Z

.field private c:Z

.field private d:Z

.field public displayStyle:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:J

.field private i:Z

.field public initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

.field private l:Ljava/lang/String;

.field public landing_image:Ljava/lang/String;

.field public layoutType:I

.field private m:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mDataReceiverListener:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

.field private n:Ljava/lang/String;

.field public newTips:I

.field private o:Ljava/lang/String;

.field public oid:J

.field public opensize:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field public page_index:I

.field public pagination:Z

.field public preloadData:Lcom/umeng/newxp/a;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field public require_desc:I

.field public sessionId:Ljava/lang/String;

.field public show_progress_wheel:Z

.field public slot_id:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field public timeLine:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/umeng/newxp/controller/ExchangeDataService;->DEBUG_NEW_TIPS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    iput v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->autofill:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->landing_image:Ljava/lang/String;

    iput v4, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    iput v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->displayStyle:I

    iput v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->require_desc:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->c:Z

    iput-boolean v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->d:Z

    iput v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->e:I

    iput-boolean v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->f:Z

    iput v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->g:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->h:J

    iput-boolean v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->i:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->appkey:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->pagination:Z

    iput-boolean v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->show_progress_wheel:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;

    iput v4, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mDataReceiverListener:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    const-string/jumbo v0, "PROMOTERS_FIRST_PAGE_"

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->m:Ljava/lang/String;

    const-string/jumbo v0, "PROMOTERS_NEXT_PAGE_"

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->r:Ljava/lang/String;

    iput v4, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    iput-boolean v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->broadcast:Z

    iput-object p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, -0x1

    if-nez p1, :cond_6

    move v1, v2

    :cond_5
    :goto_5
    return v1

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v1, v2

    :goto_13
    if-gez v3, :cond_6e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    invoke-virtual {v0, v3}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v3

    new-array v0, v2, [Lcom/umeng/newxp/Promoter;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/newxp/Promoter;

    invoke-virtual {v3, v0}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    new-instance v2, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V

    goto :goto_5

    :cond_6e
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;

    iget-object v5, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/umeng/common/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b8

    sget-object v5, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Installed: "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ". Remove from the list."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v0, Lcom/umeng/newxp/Promoter;->new_tip:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_b8

    add-int/lit8 v0, v1, 0x1

    :goto_b2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto/16 :goto_13

    :cond_b8
    move v0, v1

    goto :goto_b2
.end method

.method private a()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_6
    const-string/jumbo v1, "sdk_version"

    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->sdk_version:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "protocol_version"

    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->protocol_version:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_243

    const-string/jumbo v1, "slot_id"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "device_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "idmd5"

    invoke-static {v1}, Lcom/umeng/common/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "os"

    const-string/jumbo v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string/jumbo v2, "mc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/common/g;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string/jumbo v1, "channel"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/common/g;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    const-string/jumbo v1, "layout_type"

    iget v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "channel"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/common/g;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_26e

    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_26e

    const-string/jumbo v2, "locale"

    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "language"

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_bf
    const-string/jumbo v1, "timezone"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->o(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "resolution"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_db} :catch_257

    :try_start_db
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->k(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "access"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "2G/3G"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const-string/jumbo v2, "access_subtype"

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_ff} :catch_282

    :cond_ff
    :goto_ff
    :try_start_ff
    const-string/jumbo v1, "carrier"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->m(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_13d

    const-string/jumbo v2, "lat"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "lng"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-string/jumbo v3, "gpst"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13d
    invoke-static {}, Lcom/umeng/common/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cpu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/umeng/common/util/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const-string/jumbo v3, "date"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "timezone"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->o(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18d

    const-string/jumbo v2, "apnm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18d
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19f

    const-string/jumbo v2, "apvn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19f
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b1

    const-string/jumbo v2, "apvc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b1
    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c3

    const-string/jumbo v1, "adnm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c3
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    if-eqz v1, :cond_1da

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1da

    const-string/jumbo v1, "keywords"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1da
    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->autofill:I

    if-eq v1, v5, :cond_1ea

    const-string/jumbo v1, "autofill"

    iget v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->autofill:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ea
    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->require_desc:I

    if-eq v1, v5, :cond_1fa

    const-string/jumbo v1, "require_desc"

    iget v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->require_desc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1fa
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_233

    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_233

    const-string/jumbo v1, "sid"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tpage_index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_233
    iget-boolean v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->pagination:Z

    if-eqz v1, :cond_242

    const-string/jumbo v1, "more"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_242
    :goto_242
    return-object v0

    :cond_243
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_264

    const-string/jumbo v2, "app_key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_255
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_255} :catch_257

    goto/16 :goto_26

    :catch_257
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "ERROR GET INPUT."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_242

    :cond_264
    :try_start_264
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Both UMENG_APPKEY and UMENG_SLOTID are empty, please specify either one. Request aborted."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_242

    :cond_26e
    const-string/jumbo v1, "locale"

    const-string/jumbo v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "language"

    const-string/jumbo v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_bf

    :catch_282
    move-exception v1

    const-string/jumbo v1, "access"

    const-string/jumbo v2, "Unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_28c} :catch_257

    goto/16 :goto_ff
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/ExchangeDataService;I)V
    .registers 2

    iput p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->e:I

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/ExchangeDataService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->h:J

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/ExchangeDataService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->c:Z

    return-void
.end method

.method private a(Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/umeng/newxp/controller/ExchangeDataService;->b(Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;I)V

    :goto_6
    return-void

    :cond_7
    new-instance v0, Lcom/umeng/newxp/controller/ExchangeDataService$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService$a;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->start()V

    goto :goto_6
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/ExchangeDataService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/util/Map;
    .registers 2

    invoke-direct {p0}, Lcom/umeng/newxp/controller/ExchangeDataService;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/newxp/controller/ExchangeDataService;I)V
    .registers 2

    iput p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->g:I

    return-void
.end method

.method private b(Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;I)V
    .registers 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_a
    new-instance v2, Lcom/umeng/newxp/controller/c;

    invoke-direct {v2, p0, p1, v0}, Lcom/umeng/newxp/controller/c;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;Z)V

    new-instance v0, Lcom/umeng/newxp/controller/ExchangeDataService$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/umeng/newxp/controller/ExchangeDataService$a;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->start()V

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic c(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/newxp/controller/ExchangeDataService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->d:Z

    return v0
.end method

.method static synthetic i(Lcom/umeng/newxp/controller/ExchangeDataService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->f:Z

    return v0
.end method

.method static synthetic j(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/umeng/newxp/controller/ExchangeDataService;)J
    .registers 3

    iget-wide v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->h:J

    return-wide v0
.end method

.method static synthetic l(Lcom/umeng/newxp/controller/ExchangeDataService;)I
    .registers 2

    iget v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->g:I

    return v0
.end method

.method static synthetic m(Lcom/umeng/newxp/controller/ExchangeDataService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->i:Z

    return v0
.end method


# virtual methods
.method public clickOnPromoter(Lcom/umeng/newxp/Promoter;)V
    .registers 5

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    const/4 v2, 0x0

    invoke-static {p1, v0, p0, v1, v2}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/Promoter;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZ)V

    return-void
.end method

.method public getBroadCastAction(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    :goto_16
    invoke-static {v0}, Lcom/umeng/common/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/umeng/common/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->t:Ljava/lang/String;

    :cond_38
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Get BroadcastAction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->t:Ljava/lang/String;

    return-object v0

    :cond_52
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    goto :goto_16
.end method

.method public getTemplate()I
    .registers 2

    iget v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->e:I

    return v0
.end method

.method public getTimeConsuming()Ljava/lang/String;
    .registers 11

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    aget-wide v0, v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_4d

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    aget-wide v0, v0, v2

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    iget-object v6, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    sub-long v0, v2, v0

    sub-long v2, v6, v4

    cmp-long v4, v0, v8

    if-lez v4, :cond_4d

    cmp-long v4, v2, v8

    if-lez v4, :cond_4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4c
    return-object v0

    :cond_4d
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method public isFilterInstalledApp()Z
    .registers 2

    iget-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->c:Z

    return v0
.end method

.method public onUpload()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public preloadData(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData(Landroid/content/Context;Ljava/util/List;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;I)V

    return-void
.end method

.method public preloadData(Landroid/content/Context;Ljava/util/List;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;",
            "I)V"
        }
    .end annotation

    iget v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_12

    iget v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    if-eq v0, p4, :cond_12

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    const-string/jumbo v1, "sorry  type is no match "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    iput p4, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/umeng/newxp/a;

    invoke-direct {v0, p1, p0, p3}, Lcom/umeng/newxp/a;-><init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;)V

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    :goto_1f
    if-eqz p2, :cond_33

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v0, p2}, Lcom/umeng/newxp/a;->a(Ljava/util/List;)V

    goto :goto_11

    :cond_2d
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v0, p3}, Lcom/umeng/newxp/a;->a(Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;)V

    goto :goto_1f

    :cond_33
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v0}, Lcom/umeng/newxp/a;->a()V

    goto :goto_11
.end method

.method public registerBroadcast(Landroid/content/Context;Lcom/umeng/newxp/UBroadcastReceiver;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->broadcast:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getBroadCastAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public varargs reportImpression([Lcom/umeng/newxp/Promoter;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_27

    :cond_6
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unable send impression report.[promoters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_25

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    array-length v0, p1

    goto :goto_12

    :cond_27
    new-instance v1, Lcom/umeng/newxp/net/e$a;

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V

    goto :goto_24
.end method

.method public requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EXCHANGE_PRELOAD_ADS_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->autofill:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_45
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_82

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    const-string/jumbo v1, "No found Slot_id or Appkey!!!!!"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    :goto_61
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->ONLY_CHINESE:Z

    if-eqz v0, :cond_129

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_129

    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "English os can not show ads"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3, v4}, Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;->dataReceived(ILjava/util/List;)V

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mDataReceiverListener:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mDataReceiverListener:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    invoke-interface {v0, v3, v4}, Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;->dataReceived(ILjava/util/List;)V

    :cond_81
    :goto_81
    return-void

    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PRELOAD_KEY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->n:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PRELOAD_UPDATE_DATE_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->p:Ljava/lang/String;

    goto :goto_61

    :cond_d1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PRELOAD_KEY_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->m:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PRELOAD_UPDATE_DATE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->p:Ljava/lang/String;

    goto/16 :goto_61

    :cond_129
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->r:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->a(Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;I)V

    goto/16 :goto_81
.end method

.method public requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;Z)V
    .registers 5

    if-eqz p3, :cond_e

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    :cond_a
    :goto_a
    invoke-virtual {p0, p1, p2}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    goto :goto_a
.end method

.method public setFilterInstalledApp(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->d:Z

    iput-boolean p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->c:Z

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-le p1, v1, :cond_b

    if-le p1, v0, :cond_7

    move p1, v0

    :cond_7
    iput p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->e:I

    iput-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->f:Z

    :cond_b
    return-void
.end method

.method public unregisterBroadcast(Landroid/content/Context;Lcom/umeng/newxp/UBroadcastReceiver;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
