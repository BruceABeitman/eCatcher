.class Lcom/umeng/newxp/controller/ExchangeDataService$a;
.super Ljava/lang/Thread;
.source "ExchangeDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/controller/ExchangeDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/umeng/newxp/controller/e;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/controller/e;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService$a;)V

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->e:Landroid/os/Handler;

    iput-object p2, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    iput p3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->c:I

    iput-object p4, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    return-object v0
.end method

.method private a()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->d:Ljava/util/Map;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->d:Ljava/util/Map;

    move-object v4, v0

    :goto_15
    if-nez v4, :cond_21

    move-object v0, v3

    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->b(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/util/Map;

    move-result-object v0

    move-object v4, v0

    goto :goto_15

    :cond_21
    const-string/jumbo v0, "sid"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    const-string/jumbo v0, "sid"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    :goto_3a
    new-instance v1, Lcom/umeng/newxp/net/b;

    invoke-direct {v1}, Lcom/umeng/newxp/net/b;-><init>()V

    new-instance v2, Lcom/umeng/newxp/net/f;

    invoke-direct {v2, v4}, Lcom/umeng/newxp/net/f;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/umeng/newxp/net/b;->a(Lcom/umeng/newxp/net/f;)Lcom/umeng/newxp/net/g;

    move-result-object v2

    if-eqz v2, :cond_4e

    iget-object v1, v2, Lcom/umeng/newxp/net/g;->o:Lorg/json/JSONObject;

    if-nez v1, :cond_52

    :cond_4e
    move-object v0, v3

    goto :goto_18

    :cond_50
    move v0, v2

    goto :goto_3a

    :cond_52
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\trequestLive get resStr:\t"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/umeng/newxp/net/g;->o:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6d
    invoke-direct {p0, v2}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a(Lcom/umeng/newxp/net/g;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_79

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_7b

    :cond_79
    move-object v0, v3

    goto :goto_18

    :cond_7b
    iget-object v4, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    if-nez v4, :cond_b5

    iget-object v4, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v4, v4, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v6}, Lcom/umeng/newxp/controller/ExchangeDataService;->c(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    monitor-enter v4
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8f} :catch_ce

    :try_start_8f
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iget-object v7, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v7}, Lcom/umeng/newxp/controller/ExchangeDataService;->d(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->e(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/umeng/newxp/net/g;->o:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_b4
    monitor-exit v4

    :cond_b5
    move-object v0, v1

    goto/16 :goto_18

    :cond_b8
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->f(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/umeng/newxp/net/g;->o:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_b4

    :catchall_cb
    move-exception v0

    monitor-exit v4
    :try_end_cd
    .catchall {:try_start_8f .. :try_end_cd} :catchall_cb

    :try_start_cd
    throw v0
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_ce} :catch_ce

    :catch_ce
    move-exception v0

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "  request from network error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v3

    goto/16 :goto_18

    :cond_ef
    move v0, v1

    goto/16 :goto_3a
.end method

.method private a(Lcom/umeng/newxp/net/g;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/newxp/net/g;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->h(Lcom/umeng/newxp/controller/ExchangeDataService;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v0, p1, Lcom/umeng/newxp/net/g;->c:I

    if-ne v0, v1, :cond_dd

    move v0, v1

    :goto_11
    invoke-static {v3, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->a(Lcom/umeng/newxp/controller/ExchangeDataService;Z)V

    :cond_14
    iget v0, p1, Lcom/umeng/newxp/net/g;->b:I

    if-ne v0, v1, :cond_e0

    :goto_18
    sput-boolean v1, Lcom/umeng/newxp/common/ExchangeConstants;->show_size:Z

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, p1, Lcom/umeng/newxp/net/g;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e3

    const-string/jumbo v0, ""

    :goto_27
    iput-object v0, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->i(Lcom/umeng/newxp/controller/ExchangeDataService;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v1, p1, Lcom/umeng/newxp/net/g;->k:I

    invoke-static {v0, v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->a(Lcom/umeng/newxp/controller/ExchangeDataService;I)V

    :cond_38
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->DEBUG_MODE:Z

    if-eqz v0, :cond_e7

    sget v0, Lcom/umeng/newxp/controller/ExchangeDataService;->DEBUG_NEW_TIPS:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_e7

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    sget v1, Lcom/umeng/newxp/controller/ExchangeDataService;->DEBUG_NEW_TIPS:I

    iput v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    :goto_47
    iget-object v0, p1, Lcom/umeng/newxp/net/g;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, p1, Lcom/umeng/newxp/net/g;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    :cond_55
    iget v0, p1, Lcom/umeng/newxp/net/g;->e:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_64

    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->IGNORE_SERVER_INTERVAL:Z

    if-nez v0, :cond_64

    iget v0, p1, Lcom/umeng/newxp/net/g;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/umeng/newxp/common/ExchangeConstants;->REFRESH_INTERVAL:I

    :cond_64
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->c(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->j(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p1, Lcom/umeng/newxp/net/g;->g:I

    if-eq v1, v2, :cond_be

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->j(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/umeng/newxp/net/g;->g:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Change the "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->j(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/umeng/newxp/net/g;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v1, p1, Lcom/umeng/newxp/net/g;->m:I

    invoke-static {v0, v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->b(Lcom/umeng/newxp/controller/ExchangeDataService;I)V

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-wide v1, p1, Lcom/umeng/newxp/net/g;->n:J

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->a(Lcom/umeng/newxp/controller/ExchangeDataService;J)V

    iget-object v0, p1, Lcom/umeng/newxp/net/g;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, p1, Lcom/umeng/newxp/net/g;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->landing_image:Ljava/lang/String;

    :cond_da
    iget-object v0, p1, Lcom/umeng/newxp/net/g;->l:Ljava/util/List;

    return-object v0

    :cond_dd
    move v0, v2

    goto/16 :goto_11

    :cond_e0
    move v1, v2

    goto/16 :goto_18

    :cond_e3
    iget-object v0, p1, Lcom/umeng/newxp/net/g;->i:Ljava/lang/String;

    goto/16 :goto_27

    :cond_e7
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v1, p1, Lcom/umeng/newxp/net/g;->j:I

    iput v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    goto/16 :goto_47
.end method

.method static synthetic b(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v4}, Lcom/umeng/newxp/controller/ExchangeDataService;->c(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_81

    move v3, v1

    :goto_1d
    if-eqz v3, :cond_be

    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v3}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Request data from first-cache.."

    invoke-static {v3, v5}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v3}, Lcom/umeng/newxp/controller/ExchangeDataService;->d(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-interface {v4, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/32 v7, 0x294f0

    cmp-long v3, v5, v7

    if-lez v3, :cond_83

    :goto_4e
    if-eqz v1, :cond_8d

    monitor-enter v4
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_51} :catch_88

    :try_start_51
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->e(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->f(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->d(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v4
    :try_end_74
    .catchall {:try_start_51 .. :try_end_74} :catchall_85

    :try_start_74
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Cache data is inactivation..."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_80} :catch_88

    :cond_80
    :goto_80
    return-object v0

    :cond_81
    move v3, v2

    goto :goto_1d

    :cond_83
    move v1, v2

    goto :goto_4e

    :catchall_85
    move-exception v1

    :try_start_86
    monitor-exit v4
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw v1
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_88

    :catch_88
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_80

    :cond_8d
    :try_start_8d
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->e(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    :goto_93
    const/4 v2, 0x0

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_80

    monitor-enter v4
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9b} :catch_88

    :try_start_9b
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v4
    :try_end_a6
    .catchall {:try_start_9b .. :try_end_a6} :catchall_d1

    :try_start_a6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/umeng/newxp/net/g;

    invoke-direct {v2, v1}, Lcom/umeng/newxp/net/g;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p0, v2}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a(Lcom/umeng/newxp/net/g;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_80

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_80

    move-object v0, v1

    goto :goto_80

    :cond_be
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Request data from second-cache.."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->f(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_cf} :catch_88

    move-result-object v1

    goto :goto_93

    :catchall_d1
    move-exception v1

    :try_start_d2
    monitor-exit v4
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    :try_start_d3
    throw v1
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d4} :catch_88
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    :cond_16
    iget v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->c:I

    if-ne v0, v7, :cond_ba

    invoke-direct {p0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b()Ljava/util/List;

    move-result-object v0

    :goto_1e
    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v7

    :cond_2a
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0, v1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_4b
    :try_start_4b
    new-instance v2, Lcom/umeng/newxp/controller/i;

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v1}, Lcom/umeng/newxp/controller/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/umeng/newxp/controller/i;->a()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->k(Lcom/umeng/newxp/controller/ExchangeDataService;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->l(Lcom/umeng/newxp/controller/ExchangeDataService;)I

    move-result v0

    if-ne v0, v7, :cond_f7

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_f7

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->onUpload()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_83
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f2

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->m(Lcom/umeng/newxp/controller/ExchangeDataService;)Z

    move-result v0

    if-eqz v0, :cond_f2

    new-instance v0, Lcom/umeng/common/util/DES;

    invoke-direct {v0, v1}, Lcom/umeng/common/util/DES;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/common/util/DES;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b3
    invoke-virtual {v2, v0}, Lcom/umeng/newxp/controller/i;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/umeng/newxp/controller/i;->d()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_b9} :catch_e4

    :cond_b9
    :goto_b9
    return-void

    :cond_ba
    invoke-direct {p0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1e

    :cond_c0
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    move-object v1, v0

    goto :goto_4b

    :cond_c6
    :try_start_c6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_e3} :catch_e4

    goto :goto_83

    :catch_e4
    move-exception v0

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_b9

    :cond_f2
    :try_start_f2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b3

    :cond_f7
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "no match do upload [switch="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->l(Lcom/umeng/newxp/controller/ExchangeDataService;)I

    move-result v0

    if-ne v0, v7, :cond_127

    const-string/jumbo v0, "on"

    :goto_110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b9

    :cond_127
    const-string/jumbo v0, "off        interval="
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_12a} :catch_e4

    goto :goto_110
.end method
