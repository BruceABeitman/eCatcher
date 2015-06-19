.class public Lcom/spotify/android/paste/widget/ThrobberView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/android/paste/graphics/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/ThrobberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/ThrobberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/spotify/android/paste/widget/ThrobberView;

    invoke-static {v0, p0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/spotify/android/paste/graphics/g;

    const/high16 v1, 0x4280

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/spotify/android/paste/graphics/g;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/android/paste/widget/ThrobberView;->a:Lcom/spotify/android/paste/graphics/g;

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ThrobberView;->a:Lcom/spotify/android/paste/graphics/g;

    invoke-virtual {v0, p0}, Lcom/spotify/android/paste/graphics/g;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ThrobberView;->a:Lcom/spotify/android/paste/graphics/g;

    invoke-virtual {v0}, Lcom/spotify/android/paste/graphics/g;->start()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ThrobberView;->a:Lcom/spotify/android/paste/graphics/g;

    invoke-virtual {v0}, Lcom/spotify/android/paste/graphics/g;->stop()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ThrobberView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ThrobberView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ThrobberView;->a:Lcom/spotify/android/paste/graphics/g;

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/graphics/g;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ThrobberView;->a:Lcom/spotify/android/paste/graphics/g;

    invoke-virtual {v0}, Lcom/spotify/android/paste/graphics/g;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/spotify/android/paste/widget/ThrobberView;->a:Lcom/spotify/android/paste/graphics/g;

    invoke-virtual {v1}, Lcom/spotify/android/paste/graphics/g;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, p1}, Lcom/spotify/android/paste/widget/ThrobberView;->getDefaultSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/spotify/android/paste/widget/ThrobberView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/spotify/android/paste/widget/ThrobberView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ThrobberView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ThrobberView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ThrobberView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ThrobberView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/spotify/android/paste/widget/ThrobberView;->a:Lcom/spotify/android/paste/graphics/g;

    invoke-virtual {v2, v3, v3, v0, v1}, Lcom/spotify/android/paste/graphics/g;->setBounds(IIII)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ThrobberView;->a:Lcom/spotify/android/paste/graphics/g;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
