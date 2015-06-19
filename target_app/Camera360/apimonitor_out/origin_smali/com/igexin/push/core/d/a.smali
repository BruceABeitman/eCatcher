.class public Lcom/igexin/push/core/d/a;
.super Lcom/igexin/push/e/a/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/igexin/push/c/c/a;

.field private d:Lcom/igexin/push/core/bean/PushTaskBean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/igexin/push/c/c/a;Lcom/igexin/push/core/bean/PushTaskBean;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/igexin/push/e/a/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/igexin/push/core/d/a;->b:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/d/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/igexin/push/core/d/a;->c:Lcom/igexin/push/c/c/a;

    iput-object p3, p0, Lcom/igexin/push/core/d/a;->d:Lcom/igexin/push/core/bean/PushTaskBean;

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/d/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/igexin/push/core/d/a;)Lcom/igexin/push/c/c/a;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/d/a;->c:Lcom/igexin/push/c/c/a;

    return-object v0
.end method

.method static synthetic c(Lcom/igexin/push/core/d/a;)Lcom/igexin/push/core/bean/PushTaskBean;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/d/a;->d:Lcom/igexin/push/core/bean/PushTaskBean;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/c/c/a;)V
    .registers 7

    new-instance v0, Lcom/igexin/push/c/c/c;

    invoke-direct {v0}, Lcom/igexin/push/c/c/c;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/push/c/c/c;->b()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RTV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

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

    const-string/jumbo v1, "cdnRetrieve|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/push/c/c/a;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_ac

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->k()J

    move-result-wide v0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/igexin/push/core/d/c;

    invoke-direct {v3, p0, p1, p2}, Lcom/igexin/push/core/d/c;-><init>(Lcom/igexin/push/core/d/a;Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/c/c/a;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    sget-object v0, Lcom/igexin/push/core/g;->al:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ac
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 6

    iget-object v0, p0, Lcom/igexin/push/core/d/a;->c:Lcom/igexin/push/c/c/a;

    invoke-virtual {v0}, Lcom/igexin/push/c/c/a;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1f

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->k()J

    move-result-wide v0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/igexin/push/core/d/b;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/d/b;-><init>(Lcom/igexin/push/core/d/a;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/igexin/push/core/d/a;->d:Lcom/igexin/push/core/bean/PushTaskBean;

    iget-object v1, p0, Lcom/igexin/push/core/d/a;->c:Lcom/igexin/push/c/c/a;

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/d/a;->a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/c/c/a;)V

    goto :goto_1e
.end method

.method public a([B)V
    .registers 7

    const/4 v4, 0x1

    if-eqz p1, :cond_5f

    sget-object v0, Lcom/igexin/push/core/g;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/b/g;->b([B)[B

    move-result-object v0

    if-eqz v0, :cond_65

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/igexin/push/core/d/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "messageid"

    iget-object v2, p0, Lcom/igexin/push/core/d/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "cdnType"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v0, 0x0

    :try_start_33
    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pushmessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string/jumbo v2, "extraData"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v0, "extraData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_57
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/igexin/push/core/a/f;->a(Lorg/json/JSONObject;[BZ)Z
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    return-void

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5f

    :cond_65
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Get error CDNData, can not UnGzip it..."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
