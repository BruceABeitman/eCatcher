.class public Lcom/lenovo/anyshare/sdk/internal/g$f;
.super Lcom/lenovo/anyshare/sdk/internal/n;
.source "ShareMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "content_item"

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/n;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$f;->a:Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$f;->b:Ljava/lang/String;

    if-nez v2, :cond_1c

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$f;->a:Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v2, 0x0

    :goto_12
    return-object v2

    :cond_13
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$f;->b:Ljava/lang/String;

    :cond_1c
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$f;->b:Ljava/lang/String;

    goto :goto_12
.end method

.method public a(Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;)V
    .registers 3

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/g$f;->a:Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$f;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x5b

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eqz v5, :cond_b

    :goto_a
    return-void

    :cond_b
    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/g$f;->b:Ljava/lang/String;

    :try_start_d
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v5, v3, :cond_46

    :goto_18
    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->create(Lorg/json/JSONObject;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/g$f;->a:Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/g$f;->a:Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/n;->g()Ljava/lang/String;

    move-result-object v4

    invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/n;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->setTo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_39} :catch_3a

    goto :goto_a

    :catch_3a
    move-exception v0

    const-string/jumbo v3, "Message"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_46
    move v3, v4

    goto :goto_18
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/n;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/g$f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/n;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "packet_type"

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "message"

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/g$f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "subject"

    const-string/jumbo v2, "command"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
