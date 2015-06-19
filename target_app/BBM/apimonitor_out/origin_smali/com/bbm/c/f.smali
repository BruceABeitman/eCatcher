.class public final Lcom/bbm/c/f;
.super Lcom/bbm/j/u;
.source "EventTracker.java"


# instance fields
.field final synthetic a:Lcom/bbm/d/fg;

.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:Lcom/bbm/c/c;


# direct methods
.method public constructor <init>(Lcom/bbm/c/c;Lcom/bbm/d/fg;ZJ)V
    .registers 6

    iput-object p1, p0, Lcom/bbm/c/f;->d:Lcom/bbm/c/c;

    iput-object p2, p0, Lcom/bbm/c/f;->a:Lcom/bbm/d/fg;

    iput-boolean p3, p0, Lcom/bbm/c/f;->b:Z

    iput-wide p4, p0, Lcom/bbm/c/f;->c:J

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 11

    const/4 v1, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/c/f;->a:Lcom/bbm/d/fg;

    iget-object v2, v2, Lcom/bbm/d/fg;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->r(Ljava/lang/String;)Lcom/bbm/d/gf;

    move-result-object v2

    iget-object v0, v2, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-eq v0, v3, :cond_5c

    const/4 v0, 0x1

    :goto_14
    iget-object v3, v2, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v3, v4, :cond_5b

    iget-object v3, p0, Lcom/bbm/c/f;->d:Lcom/bbm/c/c;

    iget-boolean v4, p0, Lcom/bbm/c/f;->b:Z

    iget-wide v5, p0, Lcom/bbm/c/f;->c:J

    :try_start_20
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    sget-object v8, Lcom/bbm/c/n;->N:Lcom/bbm/c/n;

    invoke-virtual {v8}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/bbm/d/gf;->b:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v8, Lcom/bbm/c/n;->P:Lcom/bbm/c/n;

    invoke-virtual {v8}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v2, Lcom/bbm/d/gf;->c:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/bbm/c/n;->ab:Lcom/bbm/c/n;

    invoke-virtual {v2}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/bbm/c/l;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/bbm/c/n;->Z:Lcom/bbm/c/n;

    invoke-virtual {v2}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v2, Lcom/bbm/c/m;->h:Lcom/bbm/c/m;

    invoke-virtual {v3, v2, v7}, Lcom/bbm/c/c;->a(Lcom/bbm/c/m;Lorg/json/JSONObject;)V

    iget-object v2, v3, Lcom/bbm/c/c;->aG:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/bbm/x;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_5b} :catch_5e

    :cond_5b
    :goto_5b
    return v0

    :cond_5c
    move v0, v1

    goto :goto_14

    :catch_5e
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EventTracker.trackStickerReceived() JSONException - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_5b
.end method
