.class public Lcom/lenovo/anyshare/sdk/internal/g$c;
.super Lcom/lenovo/anyshare/sdk/internal/n;
.source "ShareMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/lenovo/content/base/ContentType;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "content_item_exist"

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/n;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "content_item_exist"

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/n;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->b:Lcom/lenovo/content/base/ContentType;

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->a:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "is_collection"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string/jumbo v1, "is_collection"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_15
    iput-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->a:Z

    iget-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->a:Z

    if-nez v1, :cond_37

    const-string/jumbo v1, "item_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/content/base/ContentType;->fromString(Ljava/lang/String;)Lcom/lenovo/content/base/ContentType;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->b:Lcom/lenovo/content/base/ContentType;

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->b:Lcom/lenovo/content/base/ContentType;

    if-nez v1, :cond_37

    new-instance v1, Lorg/json/JSONException;

    const-string/jumbo v2, "invalid item type"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    const/4 v1, 0x0

    goto :goto_15

    :cond_37
    const-string/jumbo v1, "item_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v1, "is_collection"

    iget-boolean v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->a:Z

    if-nez v1, :cond_1d

    const-string/jumbo v1, "item_type"

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->b:Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v2}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    const-string/jumbo v1, "item_id"

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_25} :catch_2a

    :goto_25
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_2a
    move-exception v1

    goto :goto_25
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

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/g$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/lenovo/content/base/ContentType;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->b:Lcom/lenovo/content/base/ContentType;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->c:Ljava/lang/String;

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

    const-string/jumbo v1, "packet_type"

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "message"

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/g$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "subject"

    const-string/jumbo v2, "item_exists"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$c;->a:Z

    return v0
.end method
