.class public Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
.source "PGEditMenusBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditEffectMenusBean"
.end annotation


# instance fields
.field private effectOpacity:I

.field private key:Ljava/lang/String;

.field private textureIndex:I

.field private texturePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->effectOpacity:I

    return-void
.end method


# virtual methods
.method public getEffectOpacity()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->effectOpacity:I

    return v0
.end method

.method public getEffectValue()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->effectValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "|EffectOpacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->effectOpacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectValueNoOpacity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->effectValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->icon:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_19

    move-result-object v0

    :goto_15
    if-nez v0, :cond_1e

    const/4 v2, 0x0

    :goto_18
    return-object v2

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    :cond_1e
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_18
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureIndex()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->textureIndex:I

    return v0
.end method

.method public getTexturePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->texturePath:Ljava/lang/String;

    return-object v0
.end method

.method public setEffectOpacity(F)V
    .registers 3

    const/high16 v0, 0x42c8

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->effectOpacity:I

    return-void
.end method

.method public setEffectOpacity(I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->effectOpacity:I

    return-void
.end method

.method public setEffectValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->effectValue:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setTextureIndex(I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->textureIndex:I

    return-void
.end method

.method public setTexturePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->texturePath:Ljava/lang/String;

    return-void
.end method
