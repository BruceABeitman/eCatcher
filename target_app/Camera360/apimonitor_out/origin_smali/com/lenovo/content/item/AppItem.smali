.class public Lcom/lenovo/content/item/AppItem;
.super Lcom/lenovo/content/base/ContentItem;
.source "AppItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

.field protected e:Lcom/lenovo/anyshare/sdk/internal/ax$a;


# direct methods
.method public constructor <init>(Lcom/lenovo/content/base/ContentProperties;)V
    .registers 3

    sget-object v0, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/content/base/ContentItem;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/content/item/AppItem;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/lenovo/content/base/ContentItem;-><init>(Lcom/lenovo/content/base/ContentItem;)V

    iget-object v0, p1, Lcom/lenovo/content/item/AppItem;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->a:Ljava/lang/String;

    iget v0, p1, Lcom/lenovo/content/item/AppItem;->b:I

    iput v0, p0, Lcom/lenovo/content/item/AppItem;->b:I

    iget-object v0, p1, Lcom/lenovo/content/item/AppItem;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/lenovo/content/item/AppItem;->d:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->d:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    iget-object v0, p1, Lcom/lenovo/content/item/AppItem;->e:Lcom/lenovo/anyshare/sdk/internal/ax$a;

    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->e:Lcom/lenovo/anyshare/sdk/internal/ax$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget-object v0, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/content/base/ContentItem;-><init>(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/lenovo/content/base/ContentProperties;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->a(Lcom/lenovo/content/base/ContentProperties;)V

    const-string/jumbo v0, "package_name"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->a:Ljava/lang/String;

    const-string/jumbo v0, "version_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/content/item/AppItem;->b:I

    const-string/jumbo v0, "version_name"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->c:Ljava/lang/String;

    const-string/jumbo v0, "category_location"

    sget-object v1, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->UNKNOWN:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->d:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    const-string/jumbo v0, "category_type"

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ax$a;->c:Lcom/lenovo/anyshare/sdk/internal/ax$a;

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/ax$a;

    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->e:Lcom/lenovo/anyshare/sdk/internal/ax$a;

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "packagename"

    iget-object v1, p0, Lcom/lenovo/content/item/AppItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "versionname"

    iget-object v1, p0, Lcom/lenovo/content/item/AppItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "versioncode"

    iget v1, p0, Lcom/lenovo/content/item/AppItem;->b:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/lenovo/content/item/AppItem;->d:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "location"

    iget-object v1, p0, Lcom/lenovo/content/item/AppItem;->d:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    invoke-virtual {v1}, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->toInt()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2b
    return-void
.end method

.method protected b(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->b(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "packagename"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->a:Ljava/lang/String;

    const-string/jumbo v0, "versionname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "versionname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->c:Ljava/lang/String;

    const-string/jumbo v0, "versioncode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/content/item/AppItem;->b:I

    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->fromInt(I)Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->d:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    :goto_3d
    return-void

    :cond_3e
    const-string/jumbo v0, ""

    goto :goto_1c

    :cond_42
    sget-object v0, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->UNKNOWN:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    iput-object v0, p0, Lcom/lenovo/content/item/AppItem;->d:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    goto :goto_3d
.end method

.method public compareTo(Lcom/lenovo/content/base/ContentObject;)I
    .registers 5

    instance-of v1, p1, Lcom/lenovo/content/item/AppItem;

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_a
    invoke-virtual {p1}, Lcom/lenovo/content/base/ContentObject;->getContentType()Lcom/lenovo/content/base/ContentType;

    move-result-object v1

    sget-object v2, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;

    if-eq v1, v2, :cond_18

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_18
    check-cast p1, Lcom/lenovo/content/item/AppItem;

    invoke-virtual {p1}, Lcom/lenovo/content/item/AppItem;->getVersionCode()I

    move-result v0

    iget v1, p0, Lcom/lenovo/content/item/AppItem;->b:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getCategoryLocation()Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/item/AppItem;->d:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;

    return-object v0
.end method

.method public getCategoryType()Lcom/lenovo/anyshare/sdk/internal/ax$a;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/item/AppItem;->e:Lcom/lenovo/anyshare/sdk/internal/ax$a;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/item/AppItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/lenovo/content/item/AppItem;->b:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/item/AppItem;->c:Ljava/lang/String;

    return-object v0
.end method
