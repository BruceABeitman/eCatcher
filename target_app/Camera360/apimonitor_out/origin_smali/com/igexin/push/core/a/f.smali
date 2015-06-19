.class public Lcom/igexin/push/core/a/f;
.super Lcom/igexin/push/core/a/a;

# interfaces
.implements Lcom/igexin/push/d/k;


# static fields
.field private static a:Ljava/util/Map;

.field private static b:Ljava/util/Map;

.field private static c:Lcom/igexin/push/core/a/f;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/a/f;->a:Ljava/util/Map;

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/igexin/push/core/a/i;

    invoke-direct {v2}, Lcom/igexin/push/core/a/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/igexin/push/core/a/j;

    invoke-direct {v2}, Lcom/igexin/push/core/a/j;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Ljava/util/Map;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/igexin/push/core/a/k;

    invoke-direct {v2}, Lcom/igexin/push/core/a/k;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/igexin/push/core/a/o;

    invoke-direct {v2}, Lcom/igexin/push/core/a/o;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/igexin/push/core/a/h;

    invoke-direct {v2}, Lcom/igexin/push/core/a/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/igexin/push/core/a/e;

    invoke-direct {v2}, Lcom/igexin/push/core/a/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    const-string/jumbo v1, "goto"

    new-instance v2, Lcom/igexin/push/core/a/a/g;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    const-string/jumbo v1, "notification"

    new-instance v2, Lcom/igexin/push/core/a/a/h;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    const-string/jumbo v1, "startapp"

    new-instance v2, Lcom/igexin/push/core/a/a/j;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/j;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    const-string/jumbo v1, "null"

    new-instance v2, Lcom/igexin/push/core/a/a/f;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    const-string/jumbo v1, "wakeupsdk"

    new-instance v2, Lcom/igexin/push/core/a/a/k;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/k;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    const-string/jumbo v1, "startweb"

    new-instance v2, Lcom/igexin/push/core/a/a/i;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    const-string/jumbo v1, "checkapp"

    new-instance v2, Lcom/igexin/push/core/a/a/b;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    const-string/jumbo v1, "cleanext"

    new-instance v2, Lcom/igexin/push/core/a/a/c;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    const-string/jumbo v1, "enablelog"

    new-instance v2, Lcom/igexin/push/core/a/a/e;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    const-string/jumbo v1, "disablelog"

    new-instance v2, Lcom/igexin/push/core/a/a/d;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private B()I
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    sget-object v0, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d0

    sget-boolean v0, Lcom/igexin/push/core/g;->q:Z

    if-eqz v0, :cond_d0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    const-string/jumbo v1, "message"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "status"

    aput-object v3, v2, v9

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v5, "0"

    aput-object v5, v3, v9

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_ce

    :goto_2f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    const-string/jumbo v0, "info"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :try_start_40
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lcom/igexin/a/b/a;->c([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "appid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "messageid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "taskid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "appkey"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/igexin/push/core/bean/PushTaskBean;

    invoke-direct {v8}, Lcom/igexin/push/core/bean/PushTaskBean;-><init>()V

    invoke-virtual {v8, v3}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppid(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/igexin/push/core/bean/PushTaskBean;->setMessageId(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/igexin/push/core/bean/PushTaskBean;->setTaskId(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setId(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setCurrentActionid(I)V

    const-string/jumbo v0, "status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setStatus(I)V

    const-string/jumbo v0, "cdnType"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string/jumbo v0, "cdnType"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setCDNType(Z)V

    :cond_b2
    const-string/jumbo v0, "condition"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-direct {p0, v2, v8}, Lcom/igexin/push/core/a/f;->b(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)V

    :cond_be
    sget-object v0, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_c3} :catch_c5

    goto/16 :goto_2f

    :catch_c5
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2f

    :cond_cb
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ce
    sput-boolean v9, Lcom/igexin/push/core/g;->q:Z

    :cond_d0
    sget-object v0, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static a()Lcom/igexin/push/core/a/f;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/a/f;->c:Lcom/igexin/push/core/a/f;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/a/f;

    invoke-direct {v0}, Lcom/igexin/push/core/a/f;-><init>()V

    sput-object v0, Lcom/igexin/push/core/a/f;->c:Lcom/igexin/push/core/a/f;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/a/f;->c:Lcom/igexin/push/core/a/f;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v1

    const-string/jumbo v2, "message"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "taskid"

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/String;

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/igexin/push/c/c/c;Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->k()J

    move-result-wide v0

    new-instance v2, Lcom/igexin/push/e/b/c;

    invoke-direct {v2, p2, p3, v0, v1}, Lcom/igexin/push/e/b/c;-><init>(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;J)V

    invoke-virtual {p1, v2}, Lcom/igexin/push/c/c/c;->a(Lcom/igexin/push/e/b/c;)V

    sget-object v0, Lcom/igexin/push/core/g;->am:Ljava/util/HashMap;

    invoke-virtual {v0, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 10

    const/4 v0, 0x0

    new-instance v2, Lcom/igexin/push/core/a/g;

    invoke-direct {v2, p0}, Lcom/igexin/push/core/a/g;-><init>(Lcom/igexin/push/core/a/f;)V

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    move v1, v0

    :goto_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    :try_start_17
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-gtz v6, :cond_46

    new-instance v6, Lcom/igexin/push/core/bean/l;

    invoke-direct {v6}, Lcom/igexin/push/core/bean/l;-><init>()V

    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/igexin/push/core/bean/l;->a(Ljava/lang/String;)V

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/igexin/push/core/bean/l;->c(Ljava/lang/String;)V

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/igexin/push/core/bean/l;->b(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_46} :catch_4e

    :cond_46
    :goto_46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_4a
    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :catch_4e
    move-exception v0

    goto :goto_46
.end method

.method private b(Ljava/util/List;)V
    .registers 6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/core/bean/PushTaskBean;

    sget v3, Lcom/igexin/push/core/a;->l:I

    invoke-virtual {v1, v3}, Lcom/igexin/push/core/bean/PushTaskBean;->setStatus(I)V

    sget-object v3, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_2a
    return-void
.end method

.method private b(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)V
    .registers 8

    :try_start_0
    const-string/jumbo v0, "condition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string/jumbo v2, "wifi"

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    const-string/jumbo v2, "screenOn"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string/jumbo v2, "screenOn"

    const-string/jumbo v3, "screenOn"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    const-string/jumbo v2, "ssid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string/jumbo v2, "ssid"

    const-string/jumbo v3, "ssid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "bssid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string/jumbo v2, "bssid"

    const-string/jumbo v3, "bssid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    const-string/jumbo v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9f

    const-string/jumbo v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9f

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "startTime"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "endTime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    invoke-virtual {p2, v1}, Lcom/igexin/push/core/bean/PushTaskBean;->setConditionMap(Ljava/util/Map;)V
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a2} :catch_a3

    :goto_a2
    return-void

    :catch_a3
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a2
.end method


# virtual methods
.method public A()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lcom/igexin/push/core/g;->ad:Z

    if-nez v0, :cond_14

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/e/b/d;->g()Lcom/igexin/push/e/b/d;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->ad:Z

    :cond_14
    sget-boolean v0, Lcom/igexin/push/core/g;->ae:Z

    if-nez v0, :cond_26

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/e/b/f;->g()Lcom/igexin/push/e/b/f;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->ae:Z

    :cond_26
    sget-boolean v0, Lcom/igexin/push/core/g;->af:Z

    if-nez v0, :cond_38

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/e/b/e;->g()Lcom/igexin/push/e/b/e;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->af:Z

    :cond_38
    sget-boolean v0, Lcom/igexin/push/core/g;->ag:Z

    if-nez v0, :cond_4a

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/e/b/g;->g()Lcom/igexin/push/e/b/g;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->ag:Z

    :cond_4a
    sget-boolean v0, Lcom/igexin/push/core/g;->ah:Z

    if-nez v0, :cond_5c

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/e/b/a;->g()Lcom/igexin/push/e/b/a;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->ah:Z

    :cond_5c
    sget-boolean v0, Lcom/igexin/push/core/g;->ai:Z

    if-nez v0, :cond_6e

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/e/b/b;->g()Lcom/igexin/push/e/b/b;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->ai:Z

    :cond_6e
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/f;
    .registers 13

    new-instance v4, Lcom/igexin/push/core/bean/f;

    invoke-direct {v4}, Lcom/igexin/push/core/bean/f;-><init>()V

    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/igexin/push/core/bean/f;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "extensions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_d9

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_d9

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_25
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_d5

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v7, Lcom/igexin/push/core/bean/e;

    invoke-direct {v7}, Lcom/igexin/push/core/bean/e;-><init>()V

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/igexin/push/core/bean/e;->a(I)V

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/igexin/push/core/bean/e;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/igexin/push/core/bean/e;->b(Ljava/lang/String;)V

    const-string/jumbo v2, "cls_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/igexin/push/core/bean/e;->c(Ljava/lang/String;)V

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/igexin/push/core/bean/e;->d(Ljava/lang/String;)V

    const-string/jumbo v2, "checksum"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/igexin/push/core/bean/e;->e(Ljava/lang/String;)V

    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/igexin/push/core/bean/e;->f(Ljava/lang/String;)V

    const-string/jumbo v2, "isdestroy"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    const-string/jumbo v2, "isdestroy"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/igexin/push/core/bean/e;->a(Z)V

    :cond_8f
    const-string/jumbo v2, "effective"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    const-string/jumbo v2, "effective"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v2, 0x0

    if-eqz v8, :cond_af

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xd

    if-gt v9, v10, :cond_af

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_af
    invoke-virtual {v7, v2, v3}, Lcom/igexin/push/core/bean/e;->a(J)V

    :cond_b2
    const-string/jumbo v2, "loadTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    const-string/jumbo v2, "loadTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/igexin/push/core/bean/e;->b(J)V

    :cond_c5
    invoke-virtual {v7}, Lcom/igexin/push/core/bean/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_25

    :cond_d5
    invoke-virtual {v4, v6}, Lcom/igexin/push/core/bean/f;->a(Ljava/util/Map;)V

    :goto_d8
    return-object v4

    :cond_d9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v0}, Lcom/igexin/push/core/bean/f;->a(Ljava/util/Map;)V

    goto :goto_d8
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ZI)Ljava/lang/String;
    .registers 15

    const/4 v3, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_51

    :try_start_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "register"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_4c7
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4a} :catch_4be

    move-result-object v0

    :goto_4b
    if-eqz v6, :cond_50

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_50
    :goto_50
    return-object v0

    :cond_51
    if-nez p2, :cond_3df

    if-eqz p1, :cond_250

    :try_start_55
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    const-string/jumbo v1, "bi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7d
    .catchall {:try_start_55 .. :try_end_7d} :catchall_4c7
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_7d} :catch_4be

    move-result-object v1

    :goto_7e
    if-eqz v1, :cond_3db

    move-object v0, v6

    :goto_81
    :try_start_81
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3dc

    const-string/jumbo v2, "start_service_count"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "login_count"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "loginerror_nonetwork_count"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string/jumbo v5, "loginerror_connecterror_count"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v6, "online_time"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v7, "network_time"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v8, "running_time"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "create_time"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " 00:00:00"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v0, :cond_275

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "startservice"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "|"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v10, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "|"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "login"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "|"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "loginerror-nonetwork"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "loginerror-connecterror"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "online"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_24d
    .catchall {:try_start_81 .. :try_end_24d} :catchall_4cf
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_24d} :catch_4d1

    move-result-object v0

    goto/16 :goto_81

    :cond_250
    :try_start_250
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    const-string/jumbo v1, "bi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_272
    .catchall {:try_start_250 .. :try_end_272} :catchall_4c7
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_272} :catch_4be

    move-result-object v1

    goto/16 :goto_7e

    :cond_275
    :try_start_275
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "startservice"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "|"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v10, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "|"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "login"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "|"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "loginerror-nonetwork"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "loginerror-connecterror"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "online"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3d8
    .catchall {:try_start_275 .. :try_end_3d8} :catchall_4cf
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_3d8} :catch_4d1

    move-result-object v0

    goto/16 :goto_81

    :cond_3db
    move-object v0, v6

    :cond_3dc
    move-object v6, v1

    goto/16 :goto_4b

    :cond_3df
    if-ne p2, v3, :cond_45f

    :try_start_3e1
    invoke-static {}, Lcom/igexin/push/core/i;->a()Lcom/igexin/push/core/i;

    move-result-object v0

    iget-wide v0, v0, Lcom/igexin/push/core/i;->a:J

    sget v3, Lcom/igexin/push/a/j;->h:I

    if-lez v3, :cond_3f0

    sget v0, Lcom/igexin/push/a/j;->h:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :cond_3f0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/igexin/push/a/j;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/igexin/push/a/j;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v4, Lcom/igexin/push/core/g;->l:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4b

    :cond_45f
    const/4 v0, 0x4

    if-ne p2, v0, :cond_492

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4b

    :cond_492
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4d4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4bb
    .catchall {:try_start_3e1 .. :try_end_4bb} :catchall_4c7
    .catch Ljava/lang/Exception; {:try_start_3e1 .. :try_end_4bb} :catch_4be

    move-result-object v0

    goto/16 :goto_4b

    :catch_4be
    move-exception v0

    move-object v0, v6

    :goto_4c0
    if-eqz v6, :cond_50

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_50

    :catchall_4c7
    move-exception v0

    move-object v1, v6

    :goto_4c9
    if-eqz v1, :cond_4ce

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4ce
    throw v0

    :catchall_4cf
    move-exception v0

    goto :goto_4c9

    :catch_4d1
    move-exception v2

    move-object v6, v1

    goto :goto_4c0

    :cond_4d4
    move-object v0, v6

    goto/16 :goto_4b
.end method

.method public a(I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.igexin.sdk.action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "action"

    const/16 v3, 0x2718

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/f;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .registers 5

    sput p1, Lcom/igexin/push/a/j;->e:I

    sput p2, Lcom/igexin/push/a/j;->f:I

    invoke-static {}, Lcom/igexin/push/a/a;->a()Lcom/igexin/push/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/a/a;->b()V

    invoke-static {}, Lcom/igexin/push/e/b/g;->g()Lcom/igexin/push/e/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/e/b/g;->h()V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 7

    sput p1, Lcom/igexin/push/a/j;->h:I

    invoke-static {}, Lcom/igexin/push/a/a;->a()Lcom/igexin/push/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/a/a;->c()V

    sget-boolean v0, Lcom/igexin/push/core/g;->o:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "setHeartbeatInterval heartbeatReq"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/g;->U:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/push/core/g;->U:J

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->f()I

    :cond_29
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_23

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Z)Z

    const-string/jumbo v0, "op_app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "op_app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->E:Ljava/lang/String;

    :goto_1c
    sget-boolean v0, Lcom/igexin/push/core/g;->o:Z

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->l()V

    :cond_23
    return-void

    :cond_24
    const-string/jumbo v0, ""

    sput-object v0, Lcom/igexin/push/core/g;->E:Ljava/lang/String;

    goto :goto_1c
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 9

    const/4 v2, 0x0

    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setTag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-boolean v0, Lcom/igexin/push/a/j;->n:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "tags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/a/f;->c(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const-string/jumbo v1, "setSilentTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-boolean v0, Lcom/igexin/push/a/j;->o:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "beginHour"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "duration"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/core/a/f;->a(IILjava/lang/String;)V

    goto :goto_1f

    :cond_45
    const-string/jumbo v1, "sendMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    sget-boolean v0, Lcom/igexin/push/a/j;->m:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "taskid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "extraData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;[B)V

    goto :goto_1f

    :cond_64
    const-string/jumbo v1, "stopService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Ljava/lang/String;)Z

    goto :goto_1f

    :cond_7b
    const-string/jumbo v1, "setHeartbeatInterval"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    sget-boolean v0, Lcom/igexin/push/a/j;->p:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "interval"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/a/f;->a(ILjava/lang/String;)V

    goto :goto_1f

    :cond_99
    const-string/jumbo v1, "setSocketTimeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    sget-boolean v0, Lcom/igexin/push/a/j;->q:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "timeout"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/a/f;->b(ILjava/lang/String;)V

    goto/16 :goto_1f

    :cond_b8
    const-string/jumbo v1, "sendFeedbackMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    sget-boolean v0, Lcom/igexin/push/a/j;->w:Z

    if-eqz v0, :cond_1f

    sget v0, Lcom/igexin/push/core/g;->ao:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_1f

    const-string/jumbo v0, "taskid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "messageid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "actionid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/igexin/push/core/g;->an:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Lcom/igexin/push/core/bean/PushTaskBean;

    invoke-direct {v6}, Lcom/igexin/push/core/bean/PushTaskBean;-><init>()V

    invoke-virtual {v6, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setTaskId(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/igexin/push/core/bean/PushTaskBean;->setMessageId(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppid(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/g;->d:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppKey(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v2}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V

    sget v0, Lcom/igexin/push/core/g;->ao:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igexin/push/core/g;->ao:I

    sget-object v0, Lcom/igexin/push/core/g;->an:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f

    :cond_138
    const-string/jumbo v1, "turnOffPush"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->b(Ljava/lang/String;)Z

    goto/16 :goto_1f
.end method

.method public a(Lcom/igexin/push/core/bean/PushTaskBean;)V
    .registers 6

    new-instance v0, Lcom/igexin/push/c/c/c;

    invoke-direct {v0}, Lcom/igexin/push/c/c/c;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/push/c/c/c;->b()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RCV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/push/c/c/c;->c:Ljava/lang/Object;

    sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/push/c/c/c;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/igexin/push/c/c/c;->a:I

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "C-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cdnreceive|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->isCDNType()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lcom/igexin/push/core/a/f;->b(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string/jumbo v0, "ok"

    invoke-virtual {p0, p1, p2, v0}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"action\":\"pushmessage_feedback\",\"appid\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\", \"id\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\", \"appkey\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\", \"messageid\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\",\"taskid\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\",\"actionid\": \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\",\"result\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\",\"timestamp\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/igexin/push/c/c/d;

    invoke-direct {v0}, Lcom/igexin/push/c/c/d;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/push/c/c/d;->b()V

    long-to-int v4, v1

    iput v4, v0, Lcom/igexin/push/c/c/d;->a:I

    const-string/jumbo v4, "17258000"

    iput-object v4, v0, Lcom/igexin/push/c/c/d;->d:Ljava/lang/String;

    iput-object v3, v0, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;

    sget-object v4, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v4, v0, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "C-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    invoke-static {}, Lcom/igexin/push/core/c/c;->a()Lcom/igexin/push/core/c/c;

    move-result-object v7

    if-eqz v7, :cond_c7

    new-instance v0, Lcom/igexin/push/core/bean/i;

    const/4 v4, 0x3

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/igexin/push/core/bean/i;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v7, v0}, Lcom/igexin/push/core/c/c;->a(Lcom/igexin/push/core/bean/i;)V

    :cond_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "feedback|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/igexin/push/core/bean/f;)V
    .registers 12

    const/4 v3, 0x1

    const/4 v4, 0x0

    sput v4, Lcom/igexin/push/core/g;->aq:I

    sput v4, Lcom/igexin/push/core/g;->ar:I

    sput-object p1, Lcom/igexin/push/core/g;->at:Lcom/igexin/push/core/bean/f;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v2

    sget-object v0, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    if-eqz v0, :cond_13d

    sget-object v0, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_23
    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/e;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    sput-boolean v3, Lcom/igexin/push/core/g;->au:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/igexin/push/core/g;->ac:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_7f
    if-eqz v7, :cond_aa

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_aa

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    :cond_a3
    invoke-static {}, Lcom/igexin/push/a/a;->a()Lcom/igexin/push/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/a/a;->g()V

    :cond_aa
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_b3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/e;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/core/bean/e;

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    sput-boolean v3, Lcom/igexin/push/core/g;->au:Z

    sget v1, Lcom/igexin/push/core/g;->aq:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/igexin/push/core/g;->aq:I

    new-instance v1, Lcom/igexin/push/core/d/e;

    sget-object v2, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/igexin/push/core/d/e;-><init>(Landroid/content/Context;Lcom/igexin/push/core/bean/e;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v2, v4

    :cond_109
    move v0, v2

    :goto_10a
    move v2, v0

    goto :goto_b3

    :cond_10c
    sget v1, Lcom/igexin/push/core/g;->aq:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/igexin/push/core/g;->aq:I

    new-instance v1, Lcom/igexin/push/core/d/e;

    sget-object v2, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/igexin/push/core/d/e;-><init>(Landroid/content/Context;Lcom/igexin/push/core/bean/e;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v0, v4

    goto :goto_10a

    :cond_123
    if-eqz v2, :cond_13c

    sget-object v0, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/a/a;->a()Lcom/igexin/push/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/a/a;->g()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_13c
    return-void

    :cond_13d
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_145
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/e;

    sget v2, Lcom/igexin/push/core/g;->aq:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/igexin/push/core/g;->aq:I

    new-instance v2, Lcom/igexin/push/core/d/e;

    sget-object v3, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/igexin/push/core/d/e;-><init>(Landroid/content/Context;Lcom/igexin/push/core/bean/e;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_145
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"action\":\"received\",\"id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/c/c/d;

    invoke-direct {v1}, Lcom/igexin/push/c/c/d;-><init>()V

    invoke-virtual {v1}, Lcom/igexin/push/c/c/d;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/igexin/push/c/c/d;->a:I

    const-string/jumbo v2, "17258000"

    iput-object v2, v1, Lcom/igexin/push/c/c/d;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v0, v1, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "C-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/igexin/push/c/c/a;Lcom/igexin/push/core/bean/PushTaskBean;)V
    .registers 8

    new-instance v0, Lcom/igexin/push/core/d/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/igexin/push/core/d/a;-><init>(Ljava/lang/String;Lcom/igexin/push/c/c/a;Lcom/igexin/push/core/bean/PushTaskBean;)V

    new-instance v1, Lcom/igexin/push/e/a/a;

    invoke-direct {v1, v0}, Lcom/igexin/push/e/a/a;-><init>(Lcom/igexin/push/e/a/b;)V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.igexin.sdk.action.execute"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "taskid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "messageid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appid"

    sget-object v2, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pkgname"

    sget-object v2, Lcom/igexin/push/core/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/f;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.igexin.sdk.action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "action"

    const/16 v3, 0x2716

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "appid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "taskid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "actionid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v1, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/f;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 11

    sget-object v0, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    if-eqz v0, :cond_80

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_d
    const-string/jumbo v3, "action"

    const-string/jumbo v4, "sendmessage"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "id"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "cid"

    sget-object v4, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "appid"

    sget-object v4, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "taskid"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/igexin/push/core/c/c;->a()Lcom/igexin/push/core/c/c;

    move-result-object v7

    new-instance v0, Lcom/igexin/push/core/bean/i;

    const/4 v4, 0x6

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/igexin/push/core/bean/i;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v7, v0}, Lcom/igexin/push/core/c/c;->a(Lcom/igexin/push/core/bean/i;)V

    new-instance v0, Lcom/igexin/push/c/c/d;

    invoke-direct {v0}, Lcom/igexin/push/c/c/d;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/push/c/c/d;->b()V

    long-to-int v1, v1

    iput v1, v0, Lcom/igexin/push/c/c/d;->a:I

    sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/push/c/c/d;->d:Ljava/lang/String;

    iput-object v3, v0, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;

    iput-object p2, v0, Lcom/igexin/push/c/c/d;->f:Ljava/lang/Object;

    sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "C-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_80} :catch_81

    :cond_80
    :goto_80
    return-void

    :catch_81
    move-exception v0

    goto :goto_80
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a([B)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/b/a;->c([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_313

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_313

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/igexin/push/core/c/f;->f(J)Z

    const-string/jumbo v2, "config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_313

    new-instance v2, Lorg/json/JSONObject;

    const-string/jumbo v3, "config"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "sdk.uploadapplist.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    const-string/jumbo v1, "sdk.uploadapplist.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    :cond_6f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->l:Z

    :cond_79
    const-string/jumbo v1, "sdk.feature.sendmessage.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a5

    const-string/jumbo v1, "sdk.feature.sendmessage.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    :cond_9b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->m:Z

    :cond_a5
    const-string/jumbo v1, "sdk.readlocalcell.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string/jumbo v1, "sdk.readlocalcell.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c7

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    :cond_c7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->k:Z

    :cond_d1
    const-string/jumbo v1, "sdk.ca.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fd

    const-string/jumbo v1, "sdk.ca.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f3

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    :cond_f3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->r:Z

    :cond_fd
    const-string/jumbo v1, "sdk.snl.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_129

    const-string/jumbo v1, "sdk.snl.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11f

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_129

    :cond_11f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->s:Z

    :cond_129
    const-string/jumbo v1, "sdk.domainbackup.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_155

    const-string/jumbo v1, "sdk.domainbackup.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14b

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_155

    :cond_14b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->j:Z

    :cond_155
    const-string/jumbo v1, "sdk.feature.setsilenttime.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_192

    const-string/jumbo v1, "sdk.feature.setsilenttime.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_177

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_192

    :cond_177
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->o:Z

    sget-boolean v1, Lcom/igexin/push/a/j;->o:Z

    if-nez v1, :cond_192

    sget v1, Lcom/igexin/push/a/j;->f:I

    if-eqz v1, :cond_192

    const/16 v1, 0xc

    const/4 v3, 0x0

    const-string/jumbo v4, "server"

    invoke-virtual {p0, v1, v3, v4}, Lcom/igexin/push/core/a/f;->a(IILjava/lang/String;)V

    :cond_192
    const-string/jumbo v1, "sdk.snl.maxactiveflow"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    const-string/jumbo v1, "sdk.snl.maxactiveflow"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a1} :catch_314

    move-result-object v1

    :try_start_1a2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    sput-wide v3, Lcom/igexin/push/a/j;->t:J
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a9} :catch_31d

    :cond_1a9
    :goto_1a9
    :try_start_1a9
    const-string/jumbo v1, "sdk.feature.settag.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d5

    const-string/jumbo v1, "sdk.feature.settag.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1cb

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d5

    :cond_1cb
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->n:Z

    :cond_1d5
    const-string/jumbo v1, "sdk.feature.setheartbeatinterval.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_201

    const-string/jumbo v1, "sdk.feature.setheartbeatinterval.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f7

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_201

    :cond_1f7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->p:Z

    :cond_201
    const-string/jumbo v1, "sdk.feature.setsockettimeout.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22d

    const-string/jumbo v1, "sdk.feature.setsockettimeout.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_223

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22d

    :cond_223
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->q:Z

    :cond_22d
    const-string/jumbo v1, "sdk.guard.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_259

    const-string/jumbo v1, "sdk.guard.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24f

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_259

    :cond_24f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->u:Z

    :cond_259
    const-string/jumbo v1, "sdk.wakeupsdk.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_285

    const-string/jumbo v1, "sdk.wakeupsdk.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27b

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_285

    :cond_27b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->v:Z

    :cond_285
    const-string/jumbo v1, "sdk.feature.feedback.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b1

    const-string/jumbo v1, "sdk.feature.feedback.enable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a7

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b1

    :cond_2a7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/a/j;->w:Z

    :cond_2b1
    const-string/jumbo v1, "ext_infos"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30c

    const-string/jumbo v1, "ext_infos"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30c

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30c

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30c

    const-string/jumbo v1, "version"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    sget-object v4, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    if-eqz v4, :cond_320

    sget-object v4, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v4}, Lcom/igexin/push/core/bean/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_320

    :goto_2f2
    if-eqz v0, :cond_30c

    invoke-virtual {p0, v2}, Lcom/igexin/push/core/a/f;->a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/f;

    move-result-object v0

    if-eqz v0, :cond_30c

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    sget v2, Lcom/igexin/push/core/a;->i:I

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Landroid/os/Message;)Z

    :cond_30c
    invoke-static {}, Lcom/igexin/push/a/a;->a()Lcom/igexin/push/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/a/a;->f()V
    :try_end_313
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_313} :catch_314

    :cond_313
    :goto_313
    return-void

    :catch_314
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/a/f;->f(Ljava/lang/String;)V

    goto :goto_313

    :catch_31d
    move-exception v1

    goto/16 :goto_1a9

    :cond_320
    move v0, v1

    goto :goto_2f2
.end method

.method public a(J)Z
    .registers 9

    const/16 v5, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sget v0, Lcom/igexin/push/a/j;->e:I

    sget v4, Lcom/igexin/push/a/j;->f:I

    add-int/2addr v0, v4

    if-lt v0, v5, :cond_1f

    add-int/lit8 v0, v0, -0x18

    :cond_1f
    sget v4, Lcom/igexin/push/a/j;->f:I

    if-nez v4, :cond_25

    move v0, v1

    :goto_24
    return v0

    :cond_25
    sget v4, Lcom/igexin/push/a/j;->e:I

    if-ge v4, v0, :cond_31

    sget v4, Lcom/igexin/push/a/j;->e:I

    if-lt v3, v4, :cond_43

    if-ge v3, v0, :cond_43

    move v0, v2

    goto :goto_24

    :cond_31
    sget v4, Lcom/igexin/push/a/j;->e:I

    if-le v4, v0, :cond_43

    if-ltz v3, :cond_3b

    if-ge v3, v0, :cond_3b

    move v0, v2

    goto :goto_24

    :cond_3b
    sget v0, Lcom/igexin/push/a/j;->e:I

    if-lt v3, v0, :cond_43

    if-ge v3, v5, :cond_43

    move v0, v2

    goto :goto_24

    :cond_43
    move v0, v1

    goto :goto_24
.end method

.method public a(Lcom/igexin/a/a/d/d;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->a_()I

    move-result v2

    packed-switch v2, :pswitch_data_78

    :goto_9
    :pswitch_9
    return v0

    :pswitch_a
    const-string/jumbo v2, "disconnected|network"

    invoke-static {v2}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/i;->a()Lcom/igexin/push/core/i;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/k;->c:Lcom/igexin/push/core/k;

    invoke-virtual {v2, v3}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/k;)V

    invoke-static {}, Lcom/igexin/push/core/c/q;->d()V

    iget-object v2, p1, Lcom/igexin/a/a/d/d;->N:Ljava/lang/Exception;

    instance-of v2, v2, Ljava/nio/channels/ClosedChannelException;

    if-nez v2, :cond_3a

    iget-object v2, p1, Lcom/igexin/a/a/d/d;->N:Ljava/lang/Exception;

    instance-of v2, v2, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_3a

    iget-object v2, p1, Lcom/igexin/a/a/d/d;->N:Ljava/lang/Exception;

    instance-of v2, v2, Ljava/net/UnknownHostException;

    if-nez v2, :cond_3a

    iget-object v2, p1, Lcom/igexin/a/a/d/d;->N:Ljava/lang/Exception;

    instance-of v2, v2, Ljava/nio/channels/UnresolvedAddressException;

    if-nez v2, :cond_3a

    iget-object v2, p1, Lcom/igexin/a/a/d/d;->N:Ljava/lang/Exception;

    instance-of v2, v2, Ljava/net/UnknownServiceException;

    if-eqz v2, :cond_3d

    :cond_3a
    invoke-static {}, Lcom/igexin/push/core/c/q;->a()V

    :cond_3d
    sget-boolean v2, Lcom/igexin/push/core/g;->l:Z

    if-eqz v2, :cond_45

    sget-boolean v2, Lcom/igexin/push/core/g;->m:Z

    if-nez v2, :cond_50

    :cond_45
    sget-boolean v2, Lcom/igexin/push/core/g;->o:Z

    if-ne v2, v0, :cond_4e

    sput-boolean v1, Lcom/igexin/push/core/g;->o:Z

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->m()V

    :cond_4e
    :goto_4e
    move v0, v1

    goto :goto_9

    :cond_50
    sget-boolean v2, Lcom/igexin/push/core/g;->o:Z

    if-ne v2, v0, :cond_59

    sput-boolean v1, Lcom/igexin/push/core/g;->o:Z

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->m()V

    :cond_59
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/j;->c(Z)V

    goto :goto_4e

    :pswitch_65
    const-string/jumbo v2, "disconnected|user"

    invoke-static {v2}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/c/q;->d()V

    sget-boolean v2, Lcom/igexin/push/core/g;->o:Z

    if-ne v2, v0, :cond_4e

    sput-boolean v1, Lcom/igexin/push/core/g;->o:Z

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->m()V

    goto :goto_4e

    :pswitch_data_78
    .packed-switch -0x7ff
        :pswitch_a
        :pswitch_9
        :pswitch_65
    .end packed-switch
.end method

.method public a(Lcom/igexin/push/c/c/e;)Z
    .registers 4

    if-eqz p1, :cond_1e

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Ljava/util/Map;

    iget v1, p1, Lcom/igexin/push/c/c/e;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/a/a;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/a;->a(Ljava/lang/Object;)Z

    :cond_15
    invoke-static {}, Lcom/igexin/push/e/b/d;->g()Lcom/igexin/push/e/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/e/b/d;->h()V

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v0

    instance-of v1, p1, Lcom/igexin/push/c/c/e;

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    check-cast p1, Lcom/igexin/push/c/c/e;

    invoke-virtual {v0, p1}, Lcom/igexin/push/d/j;->a(Lcom/igexin/push/c/c/e;)V

    :cond_15
    :goto_15
    return v2

    :cond_16
    instance-of v1, p1, Lcom/igexin/a/a/b/a/a/b;

    if-eqz v1, :cond_24

    sget-boolean v0, Lcom/igexin/push/core/g;->o:Z

    if-ne v0, v2, :cond_15

    sput-boolean v3, Lcom/igexin/push/core/g;->o:Z

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->m()V

    goto :goto_15

    :cond_24
    instance-of v1, p1, Lcom/igexin/a/a/b/a/a/a;

    if-nez v1, :cond_15

    instance-of v1, p1, Lcom/igexin/push/c/b/a;

    if-eqz v1, :cond_30

    invoke-virtual {v0, v3}, Lcom/igexin/push/d/j;->c(Z)V

    goto :goto_15

    :cond_30
    instance-of v1, p1, Lcom/igexin/push/c/b/b;

    if-eqz v1, :cond_15

    invoke-virtual {v0, v2}, Lcom/igexin/push/d/j;->c(Z)V

    goto :goto_15
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "taskid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "messageid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "actionid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    sget v2, Lcom/igexin/push/core/a;->h:I

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)Z
    .registers 13

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    const-string/jumbo v0, "action_chains"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v1, v2

    :goto_f
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_53

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4f

    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/extension/stub/IPushExtension;

    invoke-interface {v0, v4}, Lcom/igexin/push/extension/stub/IPushExtension;->isActionSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v3

    :goto_43
    if-nez v0, :cond_4f

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4f

    move v0, v2

    :goto_4e
    return v0

    :cond_4f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_53
    move v5, v2

    :goto_54
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_a4

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9f

    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/extension/a;->c()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_76
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/extension/stub/IPushExtension;

    invoke-interface {v1, v0}, Lcom/igexin/push/extension/stub/IPushExtension;->parseAction(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;

    move-result-object v4

    if-eqz v4, :cond_76

    :cond_88
    if-nez v4, :cond_a9

    sget-object v1, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/core/a/a/a;

    if-eqz v1, :cond_a9

    invoke-interface {v1, v0}, Lcom/igexin/push/core/a/a/a;->a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;

    move-result-object v0

    :goto_98
    if-nez v0, :cond_9c

    move v0, v2

    goto :goto_4e

    :cond_9c
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_9f} :catch_a3

    :cond_9f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_54

    :catch_a3
    move-exception v0

    :cond_a4
    invoke-virtual {p2, v6}, Lcom/igexin/push/core/bean/PushTaskBean;->setActionChains(Ljava/util/List;)V

    move v0, v3

    goto :goto_4e

    :cond_a9
    move-object v0, v4

    goto :goto_98

    :cond_ab
    move v0, v2

    goto :goto_43
.end method

.method public a(Lorg/json/JSONObject;[BZ)Z
    .registers 16

    :try_start_0
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pushmessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "appid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "messageid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "taskid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "appkey"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "action_chains"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pushmessage|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_1b6

    if-eqz v0, :cond_1b6

    if-eqz v7, :cond_1b6

    if-eqz v8, :cond_1b6

    if-eqz v3, :cond_1b6

    sget-object v4, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b6

    new-instance v9, Lcom/igexin/push/core/bean/PushTaskBean;

    invoke-direct {v9}, Lcom/igexin/push/core/bean/PushTaskBean;-><init>()V

    invoke-virtual {v9, v1}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppid(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lcom/igexin/push/core/bean/PushTaskBean;->setMessageId(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lcom/igexin/push/core/bean/PushTaskBean;->setTaskId(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setId(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setCurrentActionid(I)V

    const-string/jumbo v0, "cdnType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    const-string/jumbo v0, "cdnType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setCDNType(Z)V

    :cond_b8
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz p3, :cond_dc

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v9, v2}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/igexin/push/core/a/f;->a(J)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/4 v0, 0x1

    :cond_db
    :goto_db
    return v0

    :cond_dc
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "messageid"

    invoke-virtual {v11, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "taskid"

    invoke-virtual {v11, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "appid"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "key"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACHE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "info"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/b/a;->b([B)[B

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v0, "createtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p2, :cond_138

    const-string/jumbo v0, "msgextra"

    invoke-virtual {v11, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {v9, p2}, Lcom/igexin/push/core/bean/PushTaskBean;->setMsgExtra([B)V

    :cond_138
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_14a

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Lcom/igexin/push/core/a/f;->a(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)Z
    :try_end_145
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_145} :catch_1d3

    move-result v0

    if-nez v0, :cond_14a

    const/4 v0, 0x1

    goto :goto_db

    :cond_14a
    if-eqz p3, :cond_1f3

    const/4 v6, 0x0

    :try_start_14d
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    const-string/jumbo v1, "message"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "taskid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16c
    .catchall {:try_start_14d .. :try_end_16c} :catchall_20a
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_16c} :catch_20d

    move-result-object v1

    if-eqz v1, :cond_1b1

    :try_start_16f
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1eb

    const-string/jumbo v0, "condition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    invoke-direct {p0, p1, v9}, Lcom/igexin/push/core/a/f;->b(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)V

    sget v0, Lcom/igexin/push/core/a;->k:I

    invoke-virtual {v9, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setStatus(I)V

    const-string/jumbo v0, "status"

    sget v2, Lcom/igexin/push/core/a;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_192
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, v11}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    sget-object v0, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "condition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->s()V
    :try_end_1b1
    .catchall {:try_start_16f .. :try_end_1b1} :catchall_1e4
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_1b1} :catch_1cb

    :cond_1b1
    :goto_1b1
    if-eqz v1, :cond_1b6

    :try_start_1b3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1b6
    .catch Lorg/json/JSONException; {:try_start_1b3 .. :try_end_1b6} :catch_1d3

    :cond_1b6
    :goto_1b6
    const/4 v0, 0x1

    goto/16 :goto_db

    :cond_1b9
    :try_start_1b9
    sget v0, Lcom/igexin/push/core/a;->l:I

    invoke-virtual {v9, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setStatus(I)V

    const-string/jumbo v0, "status"

    sget v2, Lcom/igexin/push/core/a;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1ca
    .catchall {:try_start_1b9 .. :try_end_1ca} :catchall_1e4
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1ca} :catch_1cb

    goto :goto_192

    :catch_1cb
    move-exception v0

    move-object v0, v1

    :goto_1cd
    if-eqz v0, :cond_1b6

    :try_start_1cf
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1d2
    .catch Lorg/json/JSONException; {:try_start_1cf .. :try_end_1d2} :catch_1d3

    goto :goto_1b6

    :catch_1d3
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1b6

    :cond_1d8
    :try_start_1d8
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    sget-object v3, Lcom/igexin/push/core/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v8, v7, v2, v3}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e3
    .catchall {:try_start_1d8 .. :try_end_1e3} :catchall_1e4
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1e3} :catch_1cb

    goto :goto_1b1

    :catchall_1e4
    move-exception v0

    :goto_1e5
    if-eqz v1, :cond_1ea

    :try_start_1e7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1ea
    throw v0

    :cond_1eb
    const/4 v0, 0x1

    if-eqz v1, :cond_db

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_db

    :cond_1f3
    const-string/jumbo v0, "condition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ff

    invoke-direct {p0, p1, v9}, Lcom/igexin/push/core/a/f;->b(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)V

    :cond_1ff
    sget v0, Lcom/igexin/push/core/a;->l:I

    invoke-virtual {v9, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setStatus(I)V

    sget-object v0, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_209
    .catch Lorg/json/JSONException; {:try_start_1e7 .. :try_end_209} :catch_1d3

    goto :goto_1b6

    :catchall_20a
    move-exception v0

    move-object v1, v6

    goto :goto_1e5

    :catch_20d
    move-exception v0

    move-object v0, v6

    goto :goto_1cd
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/push/core/b;
    .registers 11

    sget-object v2, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/PushTaskBean;

    if-nez v0, :cond_28

    sget-object v5, Lcom/igexin/push/core/b;->c:Lcom/igexin/push/core/b;

    :cond_27
    :goto_27
    return-object v5

    :cond_28
    invoke-virtual {v0}, Lcom/igexin/push/core/bean/PushTaskBean;->getActionChains()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v1

    move-object v4, v2

    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/core/bean/BaseAction;

    sget-object v2, Lcom/igexin/push/core/b;->c:Lcom/igexin/push/core/b;

    if-nez v1, :cond_44

    move-object v5, v2

    goto :goto_27

    :cond_44
    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igexin/push/extension/a;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/extension/stub/IPushExtension;

    invoke-interface {v2, v0, v1}, Lcom/igexin/push/extension/stub/IPushExtension;->prepareExecuteAction(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/b;

    move-result-object v2

    sget-object v7, Lcom/igexin/push/core/b;->c:Lcom/igexin/push/core/b;

    if-eq v2, v7, :cond_50

    move-object v5, v2

    :goto_65
    sget-object v2, Lcom/igexin/push/core/b;->c:Lcom/igexin/push/core/b;

    if-ne v5, v2, :cond_7f

    sget-object v2, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/BaseAction;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/core/a/a/a;

    if-eqz v2, :cond_27

    invoke-interface {v2, v0, v1}, Lcom/igexin/push/core/a/a/a;->a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/b;

    move-result-object v5

    sget-object v1, Lcom/igexin/push/core/b;->c:Lcom/igexin/push/core/b;

    if-eq v5, v1, :cond_27

    :cond_7f
    sget-object v1, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;

    if-ne v4, v1, :cond_a0

    move-object v2, v5

    :goto_84
    sget-object v1, Lcom/igexin/push/core/b;->b:Lcom/igexin/push/core/b;

    if-ne v5, v1, :cond_9e

    add-int/lit8 v1, v3, 0x1

    :goto_8a
    move v3, v1

    move-object v4, v2

    goto :goto_32

    :cond_8d
    if-eqz v3, :cond_9c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/igexin/push/core/g;->a(Ljava/lang/String;Ljava/lang/Integer;Z)Z

    move-result v0

    if-nez v0, :cond_9c

    sget-object v4, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;

    :cond_9c
    move-object v5, v4

    goto :goto_27

    :cond_9e
    move v1, v3

    goto :goto_8a

    :cond_a0
    move-object v2, v4

    goto :goto_84

    :cond_a2
    move-object v5, v2

    goto :goto_65
.end method

.method public b(Lcom/igexin/push/core/bean/f;)Ljava/lang/String;
    .registers 10

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-virtual {p1}, Lcom/igexin/push/core/bean/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v0, "[]"

    if-eqz v1, :cond_18

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18
    if-eqz v3, :cond_f9

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_f9

    const-string/jumbo v1, "["

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/e;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "id"

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->a()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "version"

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "name"

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "cls_name"

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "url"

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "checksum"

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "isdestroy"

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->g()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v5, "effective"

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->h()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v5, "loadTime"

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->i()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v5, "key"

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2b

    :cond_d1
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_e5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "extensions"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_107
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_107} :catch_109

    move-result-object v0

    :goto_108
    return-object v0

    :catch_109
    move-exception v0

    const/4 v0, 0x0

    goto :goto_108

    :cond_10c
    move-object v0, v1

    goto :goto_e5
.end method

.method public b()V
    .registers 1

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->d()I

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4

    sput p1, Lcom/igexin/push/a/j;->i:I

    invoke-static {}, Lcom/igexin/push/a/a;->a()Lcom/igexin/push/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/a/a;->d()V

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_36

    const-string/jumbo v0, "isSlave"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "isSlave"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Z)Z

    const-string/jumbo v0, "op_app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v0, "op_app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->E:Ljava/lang/String;

    :goto_2f
    sget-boolean v0, Lcom/igexin/push/core/g;->o:Z

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->l()V

    :cond_36
    return-void

    :cond_37
    const-string/jumbo v0, ""

    sput-object v0, Lcom/igexin/push/core/g;->E:Ljava/lang/String;

    goto :goto_2f
.end method

.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/igexin/push/core/g;->am:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    sget-object v0, Lcom/igexin/push/core/g;->am:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/c/c/c;

    invoke-virtual {v0}, Lcom/igexin/push/c/c/c;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_60

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "C-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    invoke-virtual {v0}, Lcom/igexin/push/c/c/c;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/igexin/push/c/c/c;->a(I)V

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/c/c/c;Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    :goto_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cdnfeedback|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    return-void

    :cond_96
    new-instance v0, Lcom/igexin/push/c/c/c;

    invoke-direct {v0}, Lcom/igexin/push/c/c/c;-><init>()V

    const-string/jumbo v2, "ok"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/igexin/push/c/c/c;->b()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FDB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/igexin/push/c/c/c;->c:Ljava/lang/Object;

    sget-object v2, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v2, v0, Lcom/igexin/push/c/c/c;->d:Ljava/lang/String;

    long-to-int v2, v3

    iput v2, v0, Lcom/igexin/push/c/c/c;->a:I

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "C-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/c/c/c;Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_60
.end method

.method public b(Ljava/lang/String;)V
    .registers 10

    if-eqz p1, :cond_82

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"action\":\"bindapp\",\"appid\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\",\"cid\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\",\"id\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\",\"type\":\"bind\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/igexin/push/core/c/c;->a()Lcom/igexin/push/core/c/c;

    move-result-object v7

    if-eqz v7, :cond_49

    new-instance v0, Lcom/igexin/push/core/bean/i;

    const/4 v4, 0x1

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/igexin/push/core/bean/i;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v7, v0}, Lcom/igexin/push/core/c/c;->a(Lcom/igexin/push/core/bean/i;)V

    :cond_49
    if-eqz v3, :cond_82

    new-instance v0, Lcom/igexin/push/c/c/d;

    invoke-direct {v0}, Lcom/igexin/push/c/c/d;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/push/c/c/d;->b()V

    long-to-int v1, v1

    iput v1, v0, Lcom/igexin/push/c/c/d;->a:I

    const-string/jumbo v1, "17258000"

    iput-object v1, v0, Lcom/igexin/push/c/c/d;->d:Ljava/lang/String;

    iput-object v3, v0, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;

    sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "C-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    :cond_82
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "action"

    const/16 v1, 0x2711

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "taskid"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "messageid"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "appid"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "packagename"

    sget-object v1, Lcom/igexin/push/core/g;->g:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.igexin.sdk.action."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz p4, :cond_85

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_4a
    if-eqz v0, :cond_4c

    :cond_4c
    const-string/jumbo v1, "payload"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startapp|broadcast|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_7f} :catch_98

    :goto_7f
    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_85
    invoke-virtual {p0, p1, p2}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/PushTaskBean;

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/PushTaskBean;->getMsgExtra()[B

    move-result-object v0

    goto :goto_4a

    :catch_98
    move-exception v0

    goto :goto_7f

    :cond_9a
    move-object v0, v1

    goto :goto_4a
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/igexin/push/core/bean/PushTaskBean;

    if-nez v6, :cond_c3

    :try_start_26
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    const-string/jumbo v1, "message"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "taskid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "messageid"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_da
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4e} :catch_d2

    move-result-object v1

    if-eqz v1, :cond_b7

    :try_start_51
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b0

    :goto_57
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_be

    const-string/jumbo v0, "info"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const-string/jumbo v2, "msgextra"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lcom/igexin/a/b/a;->c([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/igexin/push/core/a/f;->a(Lorg/json/JSONObject;[BZ)Z

    sget-object v0, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/PushTaskBean;
    :try_end_a5
    .catchall {:try_start_51 .. :try_end_a5} :catchall_11d
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_a5} :catch_11f

    if-nez v0, :cond_ae

    if-eqz v1, :cond_ac

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ac
    move v0, v7

    :goto_ad
    return v0

    :cond_ae
    move-object v6, v0

    goto :goto_57

    :cond_b0
    if-eqz v1, :cond_b5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b5
    move v0, v7

    goto :goto_ad

    :cond_b7
    if-eqz v1, :cond_bc

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_bc
    move v0, v7

    goto :goto_ad

    :cond_be
    if-eqz v1, :cond_c3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c3
    :goto_c3
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, v6, p3}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Lcom/igexin/push/core/bean/PushTaskBean;->getBaseAction(Ljava/lang/String;)Lcom/igexin/push/core/bean/BaseAction;

    move-result-object v1

    if-nez v1, :cond_e2

    move v0, v7

    goto :goto_ad

    :catch_d2
    move-exception v0

    move-object v0, v9

    :goto_d4
    if-eqz v0, :cond_c3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_c3

    :catchall_da
    move-exception v0

    move-object v1, v9

    :goto_dc
    if-eqz v1, :cond_e1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e1
    throw v0

    :cond_e2
    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ee
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_102

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/extension/stub/IPushExtension;

    invoke-interface {v0, v6, v1}, Lcom/igexin/push/extension/stub/IPushExtension;->executeAction(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z

    move-result v0

    if-ne v0, v8, :cond_ee

    move v0, v8

    goto :goto_ad

    :cond_102
    sget-object v0, Lcom/igexin/push/core/a/f;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/BaseAction;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/a/a/a;

    if-eqz v0, :cond_116

    invoke-virtual {v6}, Lcom/igexin/push/core/bean/PushTaskBean;->isStop()Z

    move-result v2

    if-eqz v2, :cond_118

    :cond_116
    move v0, v7

    goto :goto_ad

    :cond_118
    invoke-interface {v0, v6, v1}, Lcom/igexin/push/core/a/a/a;->b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z

    move-result v0

    goto :goto_ad

    :catchall_11d
    move-exception v0

    goto :goto_dc

    :catch_11f
    move-exception v0

    move-object v0, v1

    goto :goto_d4
.end method

.method public c()Lcom/igexin/push/c/c/i;
    .registers 7

    new-instance v1, Lcom/igexin/push/c/c/i;

    invoke-direct {v1}, Lcom/igexin/push/c/c/i;-><init>()V

    sget-wide v2, Lcom/igexin/push/core/g;->t:J

    iput-wide v2, v1, Lcom/igexin/push/c/c/i;->a:J

    const/4 v0, 0x0

    iput-byte v0, v1, Lcom/igexin/push/c/c/i;->b:B

    const v0, 0xff00

    iput v0, v1, Lcom/igexin/push/c/c/i;->c:I

    :try_start_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_44

    new-instance v4, Lcom/igexin/push/c/c/j;

    invoke-direct {v4}, Lcom/igexin/push/c/c/j;-><init>()V

    const/4 v5, 0x1

    iput-byte v5, v4, Lcom/igexin/push/c/c/j;->a:B

    iput-object v3, v4, Lcom/igexin/push/c/c/j;->b:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    if-eqz v0, :cond_53

    new-instance v3, Lcom/igexin/push/c/c/j;

    invoke-direct {v3}, Lcom/igexin/push/c/c/j;-><init>()V

    const/4 v4, 0x4

    iput-byte v4, v3, Lcom/igexin/push/c/c/j;->a:B

    iput-object v0, v3, Lcom/igexin/push/c/c/j;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5b

    iput-object v2, v1, Lcom/igexin/push/c/c/i;->d:Ljava/util/List;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_5b} :catch_5c

    :cond_5b
    :goto_5b
    return-object v1

    :catch_5c
    move-exception v0

    goto :goto_5b
.end method

.method public c(Landroid/content/Intent;)V
    .registers 13

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    :try_start_6
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/igexin/push/core/i;->a()Lcom/igexin/push/core/i;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/k;->d:Lcom/igexin/push/core/k;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/k;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->h()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->h()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-ne v0, v3, :cond_61

    const/4 v0, 0x1

    sput-boolean v0, Lcom/igexin/push/core/g;->k:Z

    :goto_45
    sget-boolean v0, Lcom/igexin/push/core/g;->o:Z

    if-nez v0, :cond_65

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/j;->c(Z)V

    :cond_55
    :goto_55
    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->s()V

    goto :goto_5

    :catch_5f
    move-exception v0

    goto :goto_5

    :cond_61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igexin/push/core/g;->k:Z

    goto :goto_45

    :cond_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/g;->U:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_55

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/push/core/g;->U:J

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->f()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_55

    const/4 v0, 0x0

    sput-boolean v0, Lcom/igexin/push/core/g;->o:Z

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->m()V

    goto :goto_55

    :cond_86
    const-string/jumbo v1, "com.igexin.sdk.action.snlrefresh"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    sget-object v1, Lcom/igexin/push/core/g;->W:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    const-string/jumbo v1, "com.igexin.sdk.action.snlretire"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    :cond_ac
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/d/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_b9
    const-string/jumbo v1, "com.igexin.sdk.action.execute"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_191

    const-string/jumbo v0, "taskid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "messageid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "appid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkgname"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EXEC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "taskid"

    invoke-virtual {v10, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "appid"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "key"

    invoke-virtual {v10, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "createtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11b} :catch_5f

    :try_start_11b
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    const-string/jumbo v1, "message"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "key"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13a
    .catchall {:try_start_11b .. :try_end_13a} :catchall_18a
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_13a} :catch_181

    move-result-object v0

    if-eqz v0, :cond_17a

    :try_start_13d
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_17a

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, v10}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    if-eqz v9, :cond_17a

    sget-object v1, Lcom/igexin/push/core/g;->g:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_158
    .catchall {:try_start_13d .. :try_end_158} :catchall_30e
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_158} :catch_313

    move-result v1

    if-eqz v1, :cond_17a

    if-eqz v8, :cond_15f

    if-nez v7, :cond_166

    :cond_15f
    if-eqz v0, :cond_5

    :try_start_161
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_164} :catch_5f

    goto/16 :goto_5

    :cond_166
    :try_start_166
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    if-eqz v1, :cond_17a

    invoke-virtual {p0, v7, v8}, Lcom/igexin/push/core/a/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/push/core/b;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;

    if-ne v1, v2, :cond_17a

    const-string/jumbo v1, "1"

    invoke-virtual {p0, v7, v8, v1}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_17a
    .catchall {:try_start_166 .. :try_end_17a} :catchall_30e
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_17a} :catch_313

    :cond_17a
    if-eqz v0, :cond_5

    :try_start_17c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catch_181
    move-exception v0

    move-object v0, v6

    :goto_183
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catchall_18a
    move-exception v0

    :goto_18b
    if-eqz v6, :cond_190

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_190
    throw v0

    :cond_191
    const-string/jumbo v1, "com.igexin.sdk.action.doaction"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f7

    const-string/jumbo v0, "taskid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "messageid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "actionid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "accesstoken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "notifID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v1, :cond_1df

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1d2
    :goto_1d2
    sget-object v0, Lcom/igexin/push/core/g;->av:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2, v3, v4}, Lcom/igexin/push/core/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    :cond_1df
    sget-object v1, Lcom/igexin/push/core/g;->ak:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d2

    sget-object v1, Lcom/igexin/push/core/g;->ak:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1d2

    :cond_1f7
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_211

    sget v0, Lcom/igexin/push/a/j;->f:I

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/igexin/push/e/b/g;->g()Lcom/igexin/push/e/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/e/b/g;->h()V

    goto/16 :goto_5

    :cond_211
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22c

    const/4 v0, 0x1

    sput v0, Lcom/igexin/push/core/g;->s:I

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->s()V

    goto/16 :goto_5

    :cond_22c
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23e

    const/4 v0, 0x0

    sput v0, Lcom/igexin/push/core/g;->s:I

    goto/16 :goto_5

    :cond_23e
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b3

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_25f} :catch_5f

    move-result-object v1

    :try_start_260
    sget-object v2, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_5

    array-length v3, v2

    :goto_272
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    sget-object v5, Lcom/igexin/push/core/a;->o:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29e

    sget-object v5, Lcom/igexin/push/core/a;->n:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29e

    sget-object v5, Lcom/igexin/push/core/a;->p:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29e

    sget-object v5, Lcom/igexin/push/core/a;->q:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b0

    :cond_29e
    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/c/f;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v2, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2ab
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_260 .. :try_end_2ab} :catch_2ad
    .catch Ljava/lang/Exception; {:try_start_260 .. :try_end_2ab} :catch_5f

    goto/16 :goto_5

    :catch_2ad
    move-exception v0

    goto/16 :goto_5

    :cond_2b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_272

    :cond_2b3
    :try_start_2b3
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/c/f;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/c/f;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2f0
    const-string/jumbo v0, "com.igexin.sdk.action.core.clearmsg"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    const-string/jumbo v1, "message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30c
    .catch Ljava/lang/Exception; {:try_start_2b3 .. :try_end_30c} :catch_5f

    goto/16 :goto_5

    :catchall_30e
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto/16 :goto_18b

    :catch_313
    move-exception v1

    goto/16 :goto_183
.end method

.method public c(Ljava/lang/String;)V
    .registers 10

    sget-object v0, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    if-eqz v0, :cond_80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"action\":\"set_tag\",\"id\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\", \"cid\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\", \"appid\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\", \"tags\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/igexin/push/core/c/c;->a()Lcom/igexin/push/core/c/c;

    move-result-object v7

    if-eqz v7, :cond_58

    new-instance v0, Lcom/igexin/push/core/bean/i;

    const/4 v4, 0x2

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/igexin/push/core/bean/i;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v7, v0}, Lcom/igexin/push/core/c/c;->a(Lcom/igexin/push/core/bean/i;)V

    :cond_58
    new-instance v4, Lcom/igexin/push/c/c/d;

    invoke-direct {v4}, Lcom/igexin/push/c/c/d;-><init>()V

    invoke-virtual {v4}, Lcom/igexin/push/c/c/d;->b()V

    const-string/jumbo v0, "17258000"

    iput-object v0, v4, Lcom/igexin/push/c/c/d;->d:Ljava/lang/String;

    iput-object v3, v4, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->a:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/push/core/f;->d()Lcom/igexin/a/a/b/c;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/String;ILcom/igexin/a/a/b/c;Ljava/lang/Object;Z)Lcom/igexin/a/a/b/f;

    const-string/jumbo v0, "settag"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_80
    return-void
.end method

.method public d()I
    .registers 12

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    sget-boolean v0, Lcom/igexin/push/core/g;->l:Z

    if-eqz v0, :cond_1b

    sget-boolean v0, Lcom/igexin/push/core/g;->m:Z

    if-eqz v0, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/igexin/push/core/a/f;->a(J)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->n()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_1b
    const/4 v1, -0x1

    :cond_1c
    :goto_1c
    return v1

    :cond_1d
    sget-boolean v0, Lcom/igexin/push/core/g;->n:Z

    if-eqz v0, :cond_43

    sget-boolean v0, Lcom/igexin/push/core/g;->n:Z

    if-nez v0, :cond_f9

    move v0, v1

    :goto_26
    sput-boolean v0, Lcom/igexin/push/core/g;->n:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/igexin/push/core/g;->O:J

    :cond_43
    invoke-static {}, Lcom/igexin/push/core/c/q;->b()V

    sget-wide v2, Lcom/igexin/push/core/g;->t:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_fc

    const-string/jumbo v0, "registerReq"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/igexin/push/c/c/f;

    sget-object v2, Lcom/igexin/push/core/g;->w:Ljava/lang/String;

    sget-object v3, Lcom/igexin/push/core/g;->x:Ljava/lang/String;

    sget-object v4, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    sget-object v5, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/igexin/push/c/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "R-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    move-result v0

    if-gez v0, :cond_232

    move v0, v6

    :cond_86
    :goto_86
    if-nez v0, :cond_1c

    :try_start_88
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    const-string/jumbo v1, "bi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_bb
    .catchall {:try_start_88 .. :try_end_bb} :catchall_226
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_bb} :catch_229

    move-result-object v1

    if-eqz v1, :cond_f1

    :try_start_be
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_22c

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "loginerror_nonetwork_count"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "create_time"

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v2

    const-string/jumbo v3, "bi"

    invoke-virtual {v2, v3, v0}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_f1
    .catchall {:try_start_be .. :try_end_f1} :catchall_21f
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_f1} :catch_1bb

    :cond_f1
    if-eqz v1, :cond_f6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_f6
    :goto_f6
    move v1, v6

    goto/16 :goto_1c

    :cond_f9
    move v0, v6

    goto/16 :goto_26

    :cond_fc
    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->c()Lcom/igexin/push/c/c/i;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loginReqBefore|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/igexin/push/c/c/i;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "S-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/igexin/push/core/g;->t:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    move-result v0

    if-gez v0, :cond_22f

    move v0, v6

    :goto_142
    if-eqz v0, :cond_86

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loginReq|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    goto/16 :goto_86

    :goto_15f
    :try_start_15f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f1

    const-string/jumbo v2, "create_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c4

    const-string/jumbo v0, "loginerror_nonetwork_count"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "loginerror_nonetwork_count"

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v4

    const-string/jumbo v5, "bi"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "id"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v4, v5, v2, v7, v9}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1ba
    .catchall {:try_start_15f .. :try_end_1ba} :catchall_21f
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_1ba} :catch_1bb

    goto :goto_15f

    :catch_1bb
    move-exception v0

    move-object v0, v1

    :goto_1bd
    if-eqz v0, :cond_f6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f6

    :cond_1c4
    :try_start_1c4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "2"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v4

    const-string/jumbo v5, "bi"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "id"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v4, v5, v2, v7, v9}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "loginerror_nonetwork_count"

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "create_time"

    invoke-virtual {v2, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v3

    const-string/jumbo v4, "bi"

    invoke-virtual {v3, v4, v2}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_21d
    .catchall {:try_start_1c4 .. :try_end_21d} :catchall_21f
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_21d} :catch_1bb

    goto/16 :goto_15f

    :catchall_21f
    move-exception v0

    :goto_220
    if-eqz v1, :cond_225

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_225
    throw v0

    :catchall_226
    move-exception v0

    move-object v1, v7

    goto :goto_220

    :catch_229
    move-exception v0

    move-object v0, v7

    goto :goto_1bd

    :cond_22c
    move v0, v6

    goto/16 :goto_15f

    :cond_22f
    move v0, v1

    goto/16 :goto_142

    :cond_232
    move v0, v1

    goto/16 :goto_86
.end method

.method public d(Landroid/content/Intent;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v2, -0x1

    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v1, "result"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v8, v2, :cond_13b

    sget v2, Lcom/igexin/push/core/g;->as:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/igexin/push/core/g;->as:I

    if-eqz v1, :cond_12a

    sget v1, Lcom/igexin/push/core/g;->ar:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/igexin/push/core/g;->ar:I

    sget-object v1, Lcom/igexin/push/core/g;->at:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v3

    sget-object v1, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    if-eqz v1, :cond_13c

    sget-object v1, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    const/4 v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/igexin/push/core/g;->ac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v2

    :goto_79
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/igexin/push/core/bean/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/core/g;->ac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/g;->ac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12a

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/igexin/push/core/g;->ar:I

    sget v3, Lcom/igexin/push/core/g;->aq:I

    if-ne v0, v3, :cond_f2

    sget-object v0, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    sget-object v3, Lcom/igexin/push/core/g;->at:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v3}, Lcom/igexin/push/core/bean/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/igexin/push/core/bean/f;->a(Ljava/lang/String;)V

    :cond_f2
    if-nez v1, :cond_123

    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/igexin/push/core/bean/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/igexin/push/core/bean/e;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/extension/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/igexin/push/core/bean/e;->b(J)V

    invoke-virtual {v6}, Lcom/igexin/push/core/bean/e;->g()Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_123
    invoke-static {}, Lcom/igexin/push/a/a;->a()Lcom/igexin/push/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/a/a;->g()V

    :cond_12a
    sget v0, Lcom/igexin/push/core/g;->as:I

    sget v1, Lcom/igexin/push/core/g;->aq:I

    if-ne v0, v1, :cond_13b

    sget-boolean v0, Lcom/igexin/push/core/g;->au:Z

    if-eqz v0, :cond_13b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_13b
    return-void

    :cond_13c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/igexin/push/core/bean/f;

    invoke-direct {v2}, Lcom/igexin/push/core/bean/f;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Lcom/igexin/push/core/bean/f;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/igexin/push/core/bean/f;->a(Ljava/util/Map;)V

    sput-object v2, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    move-object v7, v1

    move v1, v0

    goto/16 :goto_79

    :cond_155
    move v1, v0

    move-object v7, v2

    goto/16 :goto_79
.end method

.method public d(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_35
    return v0

    :cond_36
    move v0, v1

    goto :goto_35
.end method

.method public e()V
    .registers 5

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->a:Ljava/lang/String;

    const-string/jumbo v2, "socket"

    const-string/jumbo v3, "disConnect"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/String;ILcom/igexin/a/a/b/c;)Lcom/igexin/a/a/b/f;

    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    move v0, v1

    goto :goto_29
.end method

.method public f()I
    .registers 4

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "H-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/igexin/push/c/c/h;

    invoke-direct {v2}, Lcom/igexin/push/c/c/h;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x4

    invoke-virtual {p0, v4, v0}, Lcom/igexin/push/core/a/f;->a(ZI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "2.2.5.7|sdkconfig-error|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Lcom/igexin/push/e/a/c;

    new-instance v2, Lcom/igexin/push/core/d/f;

    invoke-static {}, Lcom/igexin/push/core/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v5, v4}, Lcom/igexin/push/core/d/f;-><init>(Ljava/lang/String;[BIZ)V

    invoke-direct {v1, v2}, Lcom/igexin/push/e/a/c;-><init>(Lcom/igexin/push/e/a/b;)V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v4}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method public g()V
    .registers 7

    invoke-static {}, Lcom/igexin/push/core/c/c;->a()Lcom/igexin/push/core/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/c/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/i;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/i;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/igexin/push/c/c/d;

    invoke-direct {v3}, Lcom/igexin/push/c/c/d;-><init>()V

    invoke-virtual {v3}, Lcom/igexin/push/c/c/d;->b()V

    long-to-int v1, v1

    iput v1, v3, Lcom/igexin/push/c/c/d;->a:I

    const-string/jumbo v1, "17258000"

    iput-object v1, v3, Lcom/igexin/push/c/c/d;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/i;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;

    sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v1, v3, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "C-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "freshral|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_81
    return-void
.end method

.method public h()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"action\":\"request_deviceid\",\"id\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/c/c/d;

    invoke-direct {v3}, Lcom/igexin/push/c/c/d;-><init>()V

    invoke-virtual {v3}, Lcom/igexin/push/c/c/d;->b()V

    long-to-int v0, v0

    iput v0, v3, Lcom/igexin/push/c/c/d;->a:I

    const-string/jumbo v0, "17258000"

    iput-object v0, v3, Lcom/igexin/push/c/c/d;->d:Ljava/lang/String;

    iput-object v2, v3, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v0, v3, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "C-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    const-string/jumbo v0, "deviceidReq"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .registers 9

    const/4 v3, 0x0

    const-wide/16 v0, -0x1

    :try_start_3
    new-instance v2, Lcom/igexin/push/core/bean/a;

    invoke-direct {v2}, Lcom/igexin/push/core/bean/a;-><init>()V

    iget-wide v0, v2, Lcom/igexin/push/core/bean/a;->l:J

    invoke-static {v2}, Lcom/igexin/push/core/bean/a;->a(Lcom/igexin/push/core/bean/a;)Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_d} :catch_5f

    move-result-object v3

    move-wide v1, v0

    :goto_f
    if-eqz v3, :cond_5e

    const-string/jumbo v0, "addphoneinfo"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/c/c;->a()Lcom/igexin/push/core/c/c;

    move-result-object v7

    if-eqz v7, :cond_27

    new-instance v0, Lcom/igexin/push/core/bean/i;

    const/4 v4, 0x5

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/igexin/push/core/bean/i;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v7, v0}, Lcom/igexin/push/core/c/c;->a(Lcom/igexin/push/core/bean/i;)V

    :cond_27
    new-instance v0, Lcom/igexin/push/c/c/d;

    invoke-direct {v0}, Lcom/igexin/push/c/c/d;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/push/c/c/d;->b()V

    long-to-int v1, v1

    iput v1, v0, Lcom/igexin/push/c/c/d;->a:I

    const-string/jumbo v1, "17258000"

    iput-object v1, v0, Lcom/igexin/push/c/c/d;->d:Ljava/lang/String;

    iput-object v3, v0, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;

    sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "C-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    :cond_5e
    return-void

    :catch_5f
    move-exception v2

    move-wide v1, v0

    goto :goto_f
.end method

.method public j()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"action\":\"request_ca_list\",\"id\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\", \"appid\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\", \"cid\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/c/c/d;

    invoke-direct {v3}, Lcom/igexin/push/c/c/d;-><init>()V

    invoke-virtual {v3}, Lcom/igexin/push/c/c/d;->b()V

    long-to-int v0, v0

    iput v0, v3, Lcom/igexin/push/c/c/d;->a:I

    const-string/jumbo v0, "17258000"

    iput-object v0, v3, Lcom/igexin/push/c/c/d;->d:Ljava/lang/String;

    iput-object v2, v3, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v0, v3, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "C-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I

    return-void
.end method

.method public k()J
    .registers 5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public l()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.igexin.sdk.action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "action"

    const/16 v3, 0x2712

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "clientid"

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/f;->a(Landroid/content/Intent;)Z

    const-string/jumbo v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clientid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public m()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.igexin.sdk.action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "action"

    const/16 v3, 0x2717

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "onlineState"

    sget-boolean v3, Lcom/igexin/push/core/g;->o:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/f;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public n()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/a/j;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public o()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3}, Lcom/igexin/push/core/a/f;->a(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_28

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, v4, :cond_28

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/l;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_28
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .registers 12

    const/4 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    if-nez v0, :cond_7

    :cond_7
    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :try_start_11
    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_a6

    array-length v6, v4
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_21} :catch_83

    move v3, v2

    move v0, v2

    :goto_23
    if-ge v3, v6, :cond_36

    :try_start_25
    aget-object v7, v4, v3

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string/jumbo v8, "DownloadService"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_2f} :catch_90

    move-result v7

    if-eq v7, v10, :cond_33

    move v0, v1

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_36
    move v4, v0

    :goto_37
    :try_start_37
    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v6, :cond_a4

    array-length v7, v6
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_48} :catch_95

    move v3, v2

    move v0, v2

    :goto_4a
    if-ge v3, v7, :cond_5d

    :try_start_4c
    aget-object v8, v6, v3

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string/jumbo v9, "DownloadProvider"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4c .. :try_end_56} :catch_99

    move-result v8

    if-eq v8, v10, :cond_5a

    move v0, v1

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_5d
    move v3, v0

    :goto_5e
    :try_start_5e
    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_a2

    array-length v7, v6
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5e .. :try_end_6e} :catch_9d

    move v5, v2

    move v0, v2

    :goto_70
    if-ge v5, v7, :cond_87

    :try_start_72
    aget-object v8, v6, v5

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v9, "DownloadReceiver"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_7c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_72 .. :try_end_7c} :catch_a0

    move-result v8

    if-eq v8, v10, :cond_80

    move v0, v1

    :cond_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :catch_83
    move-exception v0

    move v0, v2

    move v3, v2

    move v4, v2

    :cond_87
    :goto_87
    if-eqz v4, :cond_8e

    if-eqz v3, :cond_8e

    if-eqz v0, :cond_8e

    :goto_8d
    return v1

    :cond_8e
    move v1, v2

    goto :goto_8d

    :catch_90
    move-exception v3

    move v3, v2

    move v4, v0

    move v0, v2

    goto :goto_87

    :catch_95
    move-exception v0

    move v0, v2

    move v3, v2

    goto :goto_87

    :catch_99
    move-exception v3

    move v3, v0

    move v0, v2

    goto :goto_87

    :catch_9d
    move-exception v0

    move v0, v2

    goto :goto_87

    :catch_a0
    move-exception v5

    goto :goto_87

    :cond_a2
    move v0, v2

    goto :goto_87

    :cond_a4
    move v3, v2

    goto :goto_5e

    :cond_a6
    move v4, v2

    goto :goto_37
.end method

.method public q()V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v2

    const-string/jumbo v3, "message"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createtime <= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .registers 14

    const/4 v2, 0x0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/sdcard/libs/"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/g;->g:Ljava/lang/String;

    if-nez v0, :cond_21

    const-string/jumbo v0, "unknowPacageName"

    :cond_21
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v1, v2

    :goto_2d
    if-ge v1, v7, :cond_b1

    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    aget-object v9, v6, v1

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ad

    aget-object v9, v6, v1

    const-string/jumbo v10, ".log"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ad

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xe

    if-le v8, v9, :cond_ad

    aget-object v9, v6, v1

    add-int/lit8 v10, v8, -0xf

    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad

    aget-object v9, v6, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :try_start_6c
    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long v8, v9, v11

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x6

    cmp-long v8, v8, v10

    if-lez v8, :cond_ad

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_ad

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_ad} :catch_b2

    :cond_ad
    :goto_ad
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2d

    :cond_b1
    return-void

    :catch_b2
    move-exception v8

    goto :goto_ad
.end method

.method public s()V
    .registers 13

    invoke-direct {p0}, Lcom/igexin/push/core/a/f;->B()I

    move-result v0

    if-lez v0, :cond_46

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_135

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/core/bean/PushTaskBean;

    const-string/jumbo v3, ""

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/PushTaskBean;->getStatus()I

    move-result v2

    sget v6, Lcom/igexin/push/core/a;->k:I

    if-ne v2, v6, :cond_15

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/PushTaskBean;->getConditionMap()Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_47

    :cond_46
    :goto_46
    return-void

    :cond_47
    const-string/jumbo v2, "endTime"

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    const-string/jumbo v2, "endTime"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-gez v2, :cond_72

    sget v1, Lcom/igexin/push/core/a;->m:I

    invoke-direct {p0, v1, v6, v0}, Lcom/igexin/push/core/a/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_72
    const-string/jumbo v2, "wifi"

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    const-string/jumbo v2, "wifi"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->v()V

    sget v8, Lcom/igexin/push/core/g;->r:I

    if-ne v2, v8, :cond_15

    :cond_93
    const-string/jumbo v2, "screenOn"

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    const-string/jumbo v2, "screenOn"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->u()V

    sget v8, Lcom/igexin/push/core/g;->s:I

    if-ne v2, v8, :cond_15

    :cond_b4
    const-string/jumbo v2, "ssid"

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const-string/jumbo v2, "ssid"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->w()V

    sget-object v3, Lcom/igexin/push/core/g;->ap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object v3, v2

    :cond_d2
    const-string/jumbo v2, "bssid"

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    const-string/jumbo v2, "bssid"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v8, Lcom/igexin/push/core/g;->ap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    sget-object v8, Lcom/igexin/push/core/g;->ap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_fa
    const-string/jumbo v2, "startTime"

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    const-string/jumbo v2, "startTime"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v2, v2, v7

    if-gtz v2, :cond_15

    :cond_11c
    invoke-virtual {v1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    sget-object v7, Lcom/igexin/push/core/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v6, v1, v3, v7}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/igexin/push/core/a;->l:I

    invoke-direct {p0, v1, v6, v0}, Lcom/igexin/push/core/a/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_135
    invoke-direct {p0, v4}, Lcom/igexin/push/core/a/f;->b(Ljava/util/List;)V

    goto/16 :goto_46
.end method

.method public t()Z
    .registers 10

    const-wide/32 v7, 0xea60

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/igexin/push/core/g;->L:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1b

    sget-wide v3, Lcom/igexin/push/core/g;->L:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_1f

    sput-wide v1, Lcom/igexin/push/core/g;->L:J

    :goto_1a
    return v0

    :cond_1b
    sub-long/2addr v1, v7

    sput-wide v1, Lcom/igexin/push/core/g;->L:J

    goto :goto_1a

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public u()V
    .registers 3

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    sput v0, Lcom/igexin/push/core/g;->s:I

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x0

    sput v0, Lcom/igexin/push/core/g;->s:I

    goto :goto_14
.end method

.method public v()V
    .registers 4

    const/4 v2, 0x1

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1c

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1f

    :cond_1c
    sput v2, Lcom/igexin/push/core/g;->r:I

    :goto_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    sput v0, Lcom/igexin/push/core/g;->r:I

    goto :goto_1e
.end method

.method public w()V
    .registers 6

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    sget-object v0, Lcom/igexin/push/core/g;->ap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz v2, :cond_37

    const/4 v0, 0x0

    move v1, v0

    :goto_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_37

    sget-object v3, Lcom/igexin/push/core/g;->ap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    :cond_37
    return-void
.end method

.method public x()V
    .registers 6

    sget-boolean v0, Lcom/igexin/push/a/j;->u:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3f

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/c/f;->c()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_2f
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_3d

    goto :goto_1d

    :catch_3d
    move-exception v0

    goto :goto_1d

    :cond_3f
    return-void
.end method

.method public y()V
    .registers 11

    sget v0, Lcom/igexin/push/core/g;->ao:I

    add-int/lit8 v0, v0, -0x64

    if-gez v0, :cond_45

    const/4 v0, 0x0

    sput v0, Lcom/igexin/push/core/g;->ao:I

    :goto_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v0, Lcom/igexin/push/core/g;->an:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v3, v6

    const-wide/32 v8, 0x36ee80

    cmp-long v1, v6, v8

    if-lez v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_45
    sput v0, Lcom/igexin/push/core/g;->ao:I

    goto :goto_9

    :cond_48
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/igexin/push/core/g;->an:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    :cond_5e
    return-void
.end method

.method public z()V
    .registers 5

    sget-wide v0, Lcom/igexin/push/core/g;->R:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/f;->a(Z)Z

    :cond_12
    return-void
.end method
