.class public Lcom/lenovo/anyshare/sdk/internal/bk;
.super Lcom/lenovo/content/base/ContentContainer;
.source "Folder.java"


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Z

.field protected f:Z

.field protected g:J


# direct methods
.method public constructor <init>(Lcom/lenovo/content/base/ContentProperties;)V
    .registers 4

    sget-object v0, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/content/base/ContentContainer;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/bk;->g:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bk;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/lenovo/content/base/ContentProperties;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentContainer;->a(Lcom/lenovo/content/base/ContentProperties;)V

    const-string/jumbo v0, "file_path"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bk;->d:Ljava/lang/String;

    const-string/jumbo v0, "is_root_folder"

    invoke-virtual {p1, v0, v2}, Lcom/lenovo/content/base/ContentProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/bk;->e:Z

    const-string/jumbo v0, "is_volume"

    invoke-virtual {p1, v0, v2}, Lcom/lenovo/content/base/ContentProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/bk;->f:Z

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentContainer;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "filepath"

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bk;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method protected b(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentContainer;->b(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "filepath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bk;->d:Ljava/lang/String;

    return-void
.end method
