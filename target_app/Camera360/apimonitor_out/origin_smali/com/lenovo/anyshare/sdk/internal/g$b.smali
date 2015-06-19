.class public Lcom/lenovo/anyshare/sdk/internal/g$b;
.super Lcom/lenovo/anyshare/sdk/internal/n;
.source "ShareMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/lenovo/channel/base/ShareRecord$ShareType;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "content_item_error"

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/n;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "content_item_error"

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/n;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->b:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->a:Ljava/lang/String;

    iput p3, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v1, "record_id"

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "share_type"

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->b:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ShareType;->toInt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "error_code"

    iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_26

    :goto_21
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_26
    move-exception v1

    goto :goto_21
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "record_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->a:Ljava/lang/String;

    const-string/jumbo v2, "share_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/channel/base/ShareRecord$ShareType;->fromInt(I)Lcom/lenovo/channel/base/ShareRecord$ShareType;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->b:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    const-string/jumbo v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->c:I
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    const-string/jumbo v2, "Message"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
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

    invoke-virtual {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/g$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/lenovo/channel/base/ShareRecord$ShareType;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->b:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    return-object v0
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

    const-string/jumbo v1, "message"

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/g$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$b;->c:I

    return v0
.end method
