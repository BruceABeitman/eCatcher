.class public final Lcom/spotify/android/paste/widget/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/spotify/android/paste/b;->f:I

    aput v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x101012a

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/android/paste/widget/internal/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/c;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_5
.end method

.method public final a(Landroid/graphics/Canvas;II)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/c;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/android/paste/widget/internal/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
