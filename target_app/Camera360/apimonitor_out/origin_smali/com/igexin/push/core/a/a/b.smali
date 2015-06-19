.class public Lcom/igexin/push/core/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/a/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/b;
    .registers 4

    sget-object v0, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
    .registers 5

    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string/jumbo v0, "actionid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    new-instance v0, Lcom/igexin/push/core/bean/b;

    invoke-direct {v0}, Lcom/igexin/push/core/bean/b;-><init>()V

    const-string/jumbo v1, "checkapp"

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/b;->setType(Ljava/lang/String;)V

    const-string/jumbo v1, "actionid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/b;->setActionId(Ljava/lang/String;)V

    const-string/jumbo v1, "appstartupid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    const-string/jumbo v1, "appstartupid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/b;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "do_installed"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string/jumbo v1, "do_uninstalled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    :cond_5c
    const-string/jumbo v1, "do_installed"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string/jumbo v1, "do_installed"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/b;->b(Ljava/lang/String;)V

    :cond_6f
    const-string/jumbo v1, "do_uninstalled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    const-string/jumbo v1, "do_uninstalled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/b;->c(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_82} :catch_83

    :cond_82
    :goto_82
    return-object v0

    :catch_83
    move-exception v0

    :cond_84
    const/4 v0, 0x0

    goto :goto_82
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/igexin/push/core/g;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
    .registers 7

    check-cast p2, Lcom/igexin/push/core/bean/b;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/igexin/push/core/a/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/b;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/b;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v2

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_32
    :goto_32
    const/4 v0, 0x1

    return v0

    :cond_34
    invoke-virtual {p2}, Lcom/igexin/push/core/bean/b;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v2

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_32
.end method
