.class public Lcom/igexin/push/core/d/f;
.super Lcom/igexin/push/e/a/b;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[BIZ)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/igexin/push/e/a/b;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/core/d/f;->a:Z

    iput-boolean p4, p0, Lcom/igexin/push/core/d/f;->a:Z

    invoke-direct {p0, p2, p3}, Lcom/igexin/push/core/d/f;->a([BI)V

    return-void
.end method

.method private a([BI)V
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "upload_BI"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "BIType"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "cid"

    sget-object v2, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "BIData"

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/igexin/a/a/b/g;->e([BI)[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/b/a;->b([B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/d/f;->b([B)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_43

    :goto_42
    return-void

    :catch_43
    move-exception v0

    goto :goto_42
.end method


# virtual methods
.method public a([B)V
    .registers 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/igexin/push/core/d/f;->a:Z

    if-eqz v0, :cond_5e

    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v1

    const-string/jumbo v2, "bi"

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "type"

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "2"

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/igexin/push/core/c/f;->c(J)Z

    :cond_5e
    return-void
.end method

.method public a_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
