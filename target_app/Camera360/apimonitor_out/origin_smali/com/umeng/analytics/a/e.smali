.class public Lcom/umeng/analytics/a/e;
.super Lcom/umeng/analytics/a/l;
.source "Event.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V

    const-string/jumbo v0, "tag"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->k:Ljava/lang/String;

    const-string/jumbo v0, "label"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->l:Ljava/lang/String;

    const-string/jumbo v0, "acc"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->m:Ljava/lang/String;

    const-string/jumbo v0, "du"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 8

    invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V

    const-string/jumbo v0, "tag"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->k:Ljava/lang/String;

    const-string/jumbo v0, "label"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->l:Ljava/lang/String;

    const-string/jumbo v0, "acc"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->m:Ljava/lang/String;

    const-string/jumbo v0, "du"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->n:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/analytics/a/e;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/umeng/analytics/a/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/analytics/a/e;->b:Ljava/lang/String;

    iput p4, p0, Lcom/umeng/analytics/a/e;->c:I

    iput-wide p5, p0, Lcom/umeng/analytics/a/e;->d:J

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "tag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->a:Ljava/lang/String;

    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->b:Ljava/lang/String;

    :cond_21
    const-string/jumbo v0, "acc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/a/e;->c:I

    const-string/jumbo v0, "du"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "du"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/e;->d:J
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3c} :catch_3d

    goto :goto_2

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public a()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/umeng/analytics/a/e;->a:Ljava/lang/String;

    if-nez v1, :cond_f

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "mTag is not initilized"

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return v0

    :cond_f
    iget v1, p0, Lcom/umeng/analytics/a/e;->c:I

    if-lez v1, :cond_19

    iget v1, p0, Lcom/umeng/analytics/a/e;->c:I

    const/16 v2, 0x2710

    if-le v1, v2, :cond_32

    :cond_19
    const-string/jumbo v1, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mAcc is invalid : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/umeng/analytics/a/e;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_32
    invoke-super {p0}, Lcom/umeng/analytics/a/l;->a()Z

    move-result v0

    goto :goto_e
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "tag"

    iget-object v1, p0, Lcom/umeng/analytics/a/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "acc"

    iget v1, p0, Lcom/umeng/analytics/a/e;->c:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/umeng/analytics/a/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "label"

    iget-object v1, p0, Lcom/umeng/analytics/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    iget-wide v0, p0, Lcom/umeng/analytics/a/e;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    const-string/jumbo v0, "du"

    iget-wide v1, p0, Lcom/umeng/analytics/a/e;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2c
    invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->b(Lorg/json/JSONObject;)V

    return-void
.end method
