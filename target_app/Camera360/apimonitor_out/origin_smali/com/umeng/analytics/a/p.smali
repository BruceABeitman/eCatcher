.class public Lcom/umeng/analytics/a/p;
.super Ljava/lang/Object;
.source "UTraffic.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# static fields
.field private static final c:Ljava/lang/String; = "uptr"

.field private static final d:Ljava/lang/String; = "dntr"


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/umeng/analytics/a/p;->a:J

    iput-wide v0, p0, Lcom/umeng/analytics/a/p;->b:J

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/a/p;
    .registers 14

    const/4 v1, 0x0

    const-wide/16 v11, 0x0

    :try_start_3
    new-instance v0, Lcom/umeng/analytics/a/p;

    invoke-direct {v0}, Lcom/umeng/analytics/a/p;-><init>()V

    invoke-static {p0}, Lcom/umeng/analytics/a/p;->b(Landroid/content/Context;)[J

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    cmp-long v3, v3, v11

    if-lez v3, :cond_1a

    const/4 v3, 0x1

    aget-wide v3, v2, v3

    cmp-long v3, v3, v11

    if-gtz v3, :cond_1c

    :cond_1a
    move-object v0, v1

    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {p0}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "uptr"

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v6, "dntr"

    const-wide/16 v7, -0x1

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v8, "uptr"

    const/4 v9, 0x1

    aget-wide v9, v2, v9

    invoke-interface {v3, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v8, "dntr"

    const/4 v9, 0x0

    aget-wide v9, v2, v9

    invoke-interface {v3, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    cmp-long v3, v4, v11

    if-lez v3, :cond_55

    cmp-long v3, v6, v11

    if-gtz v3, :cond_57

    :cond_55
    move-object v0, v1

    goto :goto_1b

    :cond_57
    const/4 v3, 0x0

    aget-wide v8, v2, v3

    sub-long v6, v8, v6

    aput-wide v6, v2, v3

    const/4 v3, 0x1

    aget-wide v6, v2, v3

    sub-long v4, v6, v4

    aput-wide v4, v2, v3

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    cmp-long v3, v3, v11

    if-lez v3, :cond_73

    const/4 v3, 0x1

    aget-wide v3, v2, v3

    cmp-long v3, v3, v11

    if-gtz v3, :cond_75

    :cond_73
    move-object v0, v1

    goto :goto_1b

    :cond_75
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    iput-wide v3, v0, Lcom/umeng/analytics/a/p;->b:J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    iput-wide v2, v0, Lcom/umeng/analytics/a/p;->a:J
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7f} :catch_80

    goto :goto_1b

    :catch_80
    move-exception v0

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v2, "sdk less than 2.2 has get no traffic"

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1b
.end method

.method private static b(Landroid/content/Context;)[J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v0, "android.net.TrafficStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getUidRxBytes"

    new-array v3, v9, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string/jumbo v2, "getUidTxBytes"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v0, -0x1

    if-ne v5, v0, :cond_2f

    move-object v0, v1

    :goto_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x2

    new-array v2, v0, [J

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v8

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v2, v8

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-virtual {v4, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, v2, v9

    move-object v0, v2

    goto :goto_2e
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string/jumbo v0, "uptr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "uptr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/p;->a:J

    :cond_15
    const-string/jumbo v0, "dntr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "dntr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/p;->b:J

    goto :goto_2
.end method

.method public a()Z
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/umeng/analytics/a/p;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-wide v0, p0, Lcom/umeng/analytics/a/p;->b:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v3, 0x0

    iget-wide v0, p0, Lcom/umeng/analytics/a/p;->a:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_10

    const-string/jumbo v0, "uptr"

    iget-wide v1, p0, Lcom/umeng/analytics/a/p;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_10
    iget-wide v0, p0, Lcom/umeng/analytics/a/p;->b:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1e

    const-string/jumbo v0, "dntr"

    iget-wide v1, p0, Lcom/umeng/analytics/a/p;->b:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1e
    return-void
.end method
