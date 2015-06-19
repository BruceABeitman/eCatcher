.class public Lcom/igexin/push/core/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/a/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/igexin/push/core/bean/e;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/core/g;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/b;
    .registers 4

    sget-object v0, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
    .registers 6

    const-string/jumbo v0, "ids"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :try_start_9
    const-string/jumbo v0, "ids"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5a

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_24
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_33

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_33
    new-instance v0, Lcom/igexin/push/core/bean/c;

    invoke-direct {v0}, Lcom/igexin/push/core/bean/c;-><init>()V

    const-string/jumbo v1, "cleanext"

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/c;->setType(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/igexin/push/core/bean/c;->a([I)V

    const-string/jumbo v1, "actionid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/c;->setActionId(Ljava/lang/String;)V

    const-string/jumbo v1, "do"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/c;->setDoActionId(Ljava/lang/String;)V
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_55} :catch_56

    :goto_55
    return-object v0

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5a
    const/4 v0, 0x0

    goto :goto_55
.end method

.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
    .registers 11

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    move v5, v1

    :cond_1b
    :goto_1b
    return v5

    :cond_1c
    if-eqz p1, :cond_79

    if-eqz p2, :cond_79

    move-object v0, p2

    check-cast v0, Lcom/igexin/push/core/bean/c;

    sget-object v2, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v2}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/c;->a()[I

    move-result-object v7

    if-eqz v7, :cond_9d

    array-length v2, v7

    if-lez v2, :cond_9d

    move v2, v1

    move v3, v1

    :goto_34
    invoke-virtual {v0}, Lcom/igexin/push/core/bean/c;->a()[I

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_67

    aget v4, v7, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    aget v1, v7, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/core/bean/e;

    invoke-direct {p0, v1}, Lcom/igexin/push/core/a/a/c;->a(Lcom/igexin/push/core/bean/e;)Z

    aget v1, v7, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v5

    move v4, v5

    :goto_61
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    move v3, v4

    goto :goto_34

    :cond_67
    if-eqz v1, :cond_70

    invoke-static {}, Lcom/igexin/push/a/a;->a()Lcom/igexin/push/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/a/a;->g()V

    :cond_70
    :goto_70
    if-eqz v3, :cond_79

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_79
    invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1b

    :cond_9a
    move v4, v3

    move v3, v1

    goto :goto_61

    :cond_9d
    move v3, v1

    goto :goto_70
.end method
