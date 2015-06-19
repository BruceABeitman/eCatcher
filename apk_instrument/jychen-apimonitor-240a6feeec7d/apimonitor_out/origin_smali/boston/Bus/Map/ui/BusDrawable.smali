.class public Lboston/Bus/Map/ui/BusDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BusDrawable.java"


# instance fields
.field private final arrow:Landroid/graphics/drawable/Drawable;

.field private final bus:Landroid/graphics/drawable/Drawable;

.field private final heading:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lboston/Bus/Map/ui/BusDrawable;->heading:I

    iput-object p3, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_e
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    iget-object v7, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v7, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5c

    iget-object v7, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    neg-int v2, v7

    iget-object v7, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    neg-int v7, v7

    add-int/lit8 v4, v7, 0x7

    iget-object v7, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x6

    div-int/lit8 v5, v7, 0xa

    iget-object v7, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x6

    div-int/lit8 v1, v7, 0xa

    add-int v3, v2, v5

    add-int v0, v4, v1

    iget-object v7, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v7, p0, Lboston/Bus/Map/ui/BusDrawable;->heading:I

    int-to-float v7, v7

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v2

    int-to-float v8, v8

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v4

    int-to-float v9, v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v7, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v7, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5c
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    :cond_e
    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_e
    return-void
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_9
    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_e
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_e
    return-void
.end method

.method public setBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_e
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_e
    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    :cond_e
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_e
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_e
    return-void
.end method

.method public setDither(Z)V
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_e
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_e
    return-void
.end method

.method public setState([I)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    iget-object v2, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    move v0, v2

    :goto_12
    if-nez v0, :cond_16

    if-eqz v1, :cond_1a

    :cond_16
    const/4 v2, 0x1

    :goto_17
    return v2

    :cond_18
    move v0, v3

    goto :goto_12

    :cond_1a
    move v2, v3

    goto :goto_17
.end method

.method public setVisible(ZZ)Z
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    iget-object v2, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v2

    move v0, v2

    :goto_12
    if-nez v0, :cond_16

    if-eqz v1, :cond_1a

    :cond_16
    const/4 v2, 0x1

    :goto_17
    return v2

    :cond_18
    move v0, v3

    goto :goto_12

    :cond_1a
    move v2, v3

    goto :goto_17
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->bus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/ui/BusDrawable;->arrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method
