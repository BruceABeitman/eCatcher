.class final Lcom/spotify/mobile/android/ui/h;
.super Lcom/spotify/mobile/android/ui/i;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/spotify/mobile/android/ui/f;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/f;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/h;->c:Lcom/spotify/mobile/android/ui/f;

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/i;-><init>(Lcom/spotify/mobile/android/ui/f;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/ui/f;Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/h;->c:Lcom/spotify/mobile/android/ui/f;

    invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/i;-><init>(Lcom/spotify/mobile/android/ui/f;Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->b(Lcom/spotify/mobile/android/ui/f;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->b(Lcom/spotify/mobile/android/ui/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->w()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2d

    :goto_2c
    return-void

    :cond_2d
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v1

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v2, 0x1

    :try_start_35
    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/h;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4b
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_35 .. :try_end_4f} :catch_5c

    :goto_4f
    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->d(Lcom/spotify/mobile/android/ui/f;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2c

    :catch_5c
    move-exception v2

    goto :goto_4f
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/ui/f;Ljava/lang/Class;Landroid/support/v4/app/Fragment$SavedState;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/w;",
            "Landroid/support/v4/app/Fragment$SavedState;",
            "Landroid/os/Bundle;",
            "Lcom/spotify/mobile/android/ui/ActionBarTitle;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/h;->c:Lcom/spotify/mobile/android/ui/f;

    invoke-direct/range {p0 .. p5}, Lcom/spotify/mobile/android/ui/i;-><init>(Lcom/spotify/mobile/android/ui/f;Ljava/lang/Class;Landroid/support/v4/app/Fragment$SavedState;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->b(Lcom/spotify/mobile/android/ui/f;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->b(Lcom/spotify/mobile/android/ui/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->d(Lcom/spotify/mobile/android/ui/f;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/i;
    .registers 8

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/h;->d(Landroid/support/v4/app/w;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/i;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/h;->c:Lcom/spotify/mobile/android/ui/f;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/h;->d:Ljava/lang/Class;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/h;->e:Landroid/support/v4/app/Fragment$SavedState;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/h;->f:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/h;->f()Lcom/spotify/mobile/android/ui/ActionBarTitle;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/i;-><init>(Lcom/spotify/mobile/android/ui/f;Ljava/lang/Class;Landroid/support/v4/app/Fragment$SavedState;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final b(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/h;
    .registers 2

    return-object p0
.end method

.method public final c(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/g;
    .registers 9

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/h;->d(Landroid/support/v4/app/w;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/h;->c:Lcom/spotify/mobile/android/ui/f;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/h;->d:Ljava/lang/Class;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/h;->e:Landroid/support/v4/app/Fragment$SavedState;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/h;->f:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/h;->f()Lcom/spotify/mobile/android/ui/ActionBarTitle;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/g;-><init>(Lcom/spotify/mobile/android/ui/f;Landroid/support/v4/app/w;Ljava/lang/Class;Landroid/support/v4/app/Fragment$SavedState;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    return-object v0
.end method

.method public final d(Landroid/support/v4/app/w;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/h;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/h;->c:Lcom/spotify/mobile/android/ui/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/f;->d(Lcom/spotify/mobile/android/ui/f;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/h;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_22
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Frozen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/h;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
