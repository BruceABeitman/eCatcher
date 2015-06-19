.class public Lcom/lenovo/anyshare/sdk/internal/n;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :try_start_9
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/n;->a:I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_16} :catch_42

    :cond_16
    :goto_16
    const-string/jumbo v0, "packet_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/n;->c:Ljava/lang/String;

    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/n;->d:Ljava/lang/String;

    const-string/jumbo v0, "to"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/n;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/n;->e:Ljava/lang/String;

    const-string/jumbo v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/n;->e:Ljava/lang/String;

    :cond_41
    return-void

    :catch_42
    move-exception v0

    goto :goto_16
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/n;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;

    move-result-object v0

    :cond_11
    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->a()Lcom/lenovo/channel/base/UserInfo;

    move-result-object v5

    iget-object v3, v5, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/n;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string/jumbo v4, ""

    :cond_22
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/n;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_32
    const-string/jumbo v5, "version"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "msg_type"

    iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "packet_id"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "from"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "to"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "identity"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "nickname"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/n;->e:Ljava/lang/String;

    return-object v0
.end method
