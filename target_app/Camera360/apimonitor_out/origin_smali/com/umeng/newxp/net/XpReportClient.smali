.class public Lcom/umeng/newxp/net/XpReportClient;
.super Lcom/umeng/newxp/net/a;
.source "XpReportClient.java"


# static fields
.field public static final REPORT_CACHE_NAME:Ljava/lang/String; = "EXCHANGE_REPORT_CACHE"

.field private static final a:Ljava/lang/String;

.field private static b:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/newxp/net/XpReportClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/net/XpReportClient;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/newxp/net/a;-><init>()V

    iput-object p1, p0, Lcom/umeng/newxp/net/XpReportClient;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->c:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Lcom/umeng/common/net/n;)V
    .registers 7

    invoke-virtual {p2}, Lcom/umeng/common/net/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/umeng/common/net/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/common/util/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v1, Lcom/umeng/newxp/net/XpReportClient;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "add failed report : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;I)V
    .registers 16

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1a

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    return-void

    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    if-ge v2, p3, :cond_1a

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v3, v7

    const/4 v8, 0x1

    if-lt v3, v8, :cond_1a

    array-length v8, v7

    const/4 v3, 0x0

    :goto_3d
    if-lt v3, v8, :cond_69

    new-instance v3, Lcom/umeng/newxp/net/e;

    invoke-direct {v3, v6}, Lcom/umeng/newxp/net/e;-><init>(Ljava/util/Map;)V

    invoke-super {p0, v3}, Lcom/umeng/newxp/net/a;->send(Lcom/umeng/common/net/n;)Lcom/umeng/common/net/o$a;

    move-result-object v3

    sget-object v6, Lcom/umeng/common/net/o$a;->a:Lcom/umeng/common/net/o$a;

    if-ne v3, v6, :cond_67

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "clear failed report : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    move v1, v2

    goto :goto_14

    :cond_69
    aget-object v9, v7, v3

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_87

    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v9, v9, v11

    invoke-static {v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d
.end method

.method public static registerReportListener(Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;)V
    .registers 2

    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->c:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/umeng/newxp/net/XpReportClient;->c:Ljava/util/List;

    :cond_b
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    if-nez v0, :cond_16

    new-instance v0, Lcom/umeng/newxp/net/d;

    invoke-direct {v0}, Lcom/umeng/newxp/net/d;-><init>()V

    sput-object v0, Lcom/umeng/newxp/net/XpReportClient;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    :cond_16
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterReportListener(Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;)V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->c:Ljava/util/List;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_12
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e

    sput-object v1, Lcom/umeng/newxp/net/XpReportClient;->c:Ljava/util/List;

    sput-object v1, Lcom/umeng/newxp/net/XpReportClient;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    :cond_1e
    return-void
.end method


# virtual methods
.method public send(Lcom/umeng/common/net/n;)Lcom/umeng/common/net/o$a;
    .registers 7

    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    if-eqz v0, :cond_e

    sget-object v1, Lcom/umeng/newxp/net/XpReportClient;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    move-object v0, p1

    check-cast v0, Lcom/umeng/newxp/net/e;

    iget-object v0, v0, Lcom/umeng/newxp/net/e;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;->onReportStart(Ljava/util/Map;)V

    :cond_e
    invoke-super {p0, p1}, Lcom/umeng/newxp/net/a;->send(Lcom/umeng/common/net/n;)Lcom/umeng/common/net/o$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/net/XpReportClient;->d:Landroid/content/Context;

    const-string/jumbo v2, "EXCHANGE_REPORT_CACHE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    monitor-enter v1

    :try_start_1d
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x5

    sget-object v4, Lcom/umeng/common/net/o$a;->a:Lcom/umeng/common/net/o$a;

    if-ne v0, v4, :cond_34

    invoke-direct {p0, v1, v2, v3}, Lcom/umeng/newxp/net/XpReportClient;->a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;I)V

    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_38

    sget-object v1, Lcom/umeng/newxp/net/XpReportClient;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    if-eqz v1, :cond_33

    sget-object v1, Lcom/umeng/newxp/net/XpReportClient;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    invoke-interface {v1, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;->onReportEnd(Lcom/umeng/common/net/o$a;)V

    :cond_33
    return-object v0

    :cond_34
    :try_start_34
    invoke-direct {p0, v2, p1}, Lcom/umeng/newxp/net/XpReportClient;->a(Landroid/content/SharedPreferences$Editor;Lcom/umeng/common/net/n;)V

    goto :goto_29

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_38

    throw v0
.end method
