.class public final Lcom/spotify/android/paste/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;I)I
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;I)V
    .registers 4

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0, p2}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_12
    invoke-static {p0, p1, p2}, Lcom/spotify/android/paste/graphics/a;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_15
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static b(Landroid/content/Context;Landroid/widget/TextView;I)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p2, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p1, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-void
.end method
