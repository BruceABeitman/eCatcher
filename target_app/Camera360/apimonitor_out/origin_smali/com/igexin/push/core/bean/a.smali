.class public Lcom/igexin/push/core/bean/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "open"

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->f:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/g;->g:Ljava/lang/String;

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->f:Ljava/lang/String;

    :cond_2a
    const-string/jumbo v0, "2.2.5.7"

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->e:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/g;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->b:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/g;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->d:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/g;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->i:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/g;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->a:Ljava/lang/String;

    const-string/jumbo v0, "ANDROID"

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->j:Ljava/lang/String;

    const-string/jumbo v0, "MDP"

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->k:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/core/bean/a;->l:J

    return-void
.end method

.method public static a(Lcom/igexin/push/core/bean/a;)Ljava/lang/String;
    .registers 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "model"

    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->a:Ljava/lang/String;

    if-nez v0, :cond_c9

    const-string/jumbo v0, ""

    :goto_f
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sim"

    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->b:Ljava/lang/String;

    if-nez v0, :cond_cd

    const-string/jumbo v0, ""

    :goto_1c
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "imei"

    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->c:Ljava/lang/String;

    if-nez v0, :cond_d1

    const-string/jumbo v0, ""

    :goto_29
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "mac"

    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->d:Ljava/lang/String;

    if-nez v0, :cond_d5

    const-string/jumbo v0, ""

    :goto_36
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "version"

    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->e:Ljava/lang/String;

    if-nez v0, :cond_d9

    const-string/jumbo v0, ""

    :goto_43
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "channelid"

    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->f:Ljava/lang/String;

    if-nez v0, :cond_dd

    const-string/jumbo v0, ""

    :goto_50
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "type"

    const-string/jumbo v2, "ANDROID"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "app"

    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->k:Ljava/lang/String;

    if-nez v0, :cond_e1

    const-string/jumbo v0, ""

    :goto_66
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "deviceid"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ANDROID-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->g:Ljava/lang/String;

    if-nez v0, :cond_e4

    const-string/jumbo v0, ""

    :goto_7f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "system_version"

    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->j:Ljava/lang/String;

    if-nez v0, :cond_e7

    const-string/jumbo v0, ""

    :goto_94
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "cell"

    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->i:Ljava/lang/String;

    if-nez v0, :cond_ea

    const-string/jumbo v0, ""

    :goto_a1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "addphoneinfo"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "id"

    iget-wide v3, p0, Lcom/igexin/push/core/bean/a;->l:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c9
    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->a:Ljava/lang/String;

    goto/16 :goto_f

    :cond_cd
    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->b:Ljava/lang/String;

    goto/16 :goto_1c

    :cond_d1
    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->c:Ljava/lang/String;

    goto/16 :goto_29

    :cond_d5
    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->d:Ljava/lang/String;

    goto/16 :goto_36

    :cond_d9
    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->e:Ljava/lang/String;

    goto/16 :goto_43

    :cond_dd
    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->f:Ljava/lang/String;

    goto/16 :goto_50

    :cond_e1
    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->k:Ljava/lang/String;

    goto :goto_66

    :cond_e4
    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->g:Ljava/lang/String;

    goto :goto_7f

    :cond_e7
    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->j:Ljava/lang/String;

    goto :goto_94

    :cond_ea
    iget-object v0, p0, Lcom/igexin/push/core/bean/a;->i:Ljava/lang/String;

    goto :goto_a1
.end method
