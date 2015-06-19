.class public Lcom/pinguo/camera360/shop/model/ShopPreferences;
.super Ljava/lang/Object;
.source "ShopPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;
    }
.end annotation


# static fields
.field private static final PREFERENCES_KEY:Ljava/lang/String; = "CAMERA360_SHOP"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "CAMERA360_SHOP"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public getActiveIndex()I
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->ACTIVE_INDEX:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_12

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    return v0
.end method

.method public getShownVersionInShopOfCategory(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->SHOWN_VERSION_IN_SHOP_OF_CATEGORY_:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShownVersionInShopOfProduct(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->SHOWN_VERSION_IN_SHOP_OF_PRODUCT_:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public putActiveIndex(I)V
    .registers 4

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    :cond_5
    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->ACTIVE_INDEX:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_15
    return-void
.end method

.method public putShowVersionInShopOfCategory(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->SHOWN_VERSION_IN_SHOP_OF_CATEGORY_:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putShowVersionInShopOfProduct(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->SHOWN_VERSION_IN_SHOP_OF_PRODUCT_:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
