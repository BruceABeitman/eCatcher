.class Lcom/millennialmedia/android/bw;
.super Lcom/millennialmedia/android/cj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/cj;-><init>(Lcom/millennialmedia/android/ch;Landroid/content/Context;)V

    new-instance v0, Lcom/millennialmedia/android/bx;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/bx;-><init>(Lcom/millennialmedia/android/bp;)V

    iput-object v0, p0, Lcom/millennialmedia/android/bw;->p:Lcom/millennialmedia/android/cv;

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    return-void
.end method

.method a(Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    iget v0, v0, Lcom/millennialmedia/android/MMAdView;->i:I

    if-lez v0, :cond_13

    const-string v0, "hsht"

    iget-object v1, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    iget v1, v1, Lcom/millennialmedia/android/MMAdView;->i:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v0, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    iget v0, v0, Lcom/millennialmedia/android/MMAdView;->j:I

    if-lez v0, :cond_26

    const-string v0, "hswd"

    iget-object v1, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    iget v1, v1, Lcom/millennialmedia/android/MMAdView;->j:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    invoke-super {p0, p1}, Lcom/millennialmedia/android/cj;->a(Ljava/util/Map;)V

    return-void
.end method

.method h()Z
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    iget v0, v0, Lcom/millennialmedia/android/MMAdView;->h:I

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method i()V
    .registers 5

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    iget v0, v0, Lcom/millennialmedia/android/MMAdView;->h:I

    if-ne v0, v1, :cond_1c

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :cond_1c
    packed-switch v0, :pswitch_data_5e

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_26
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/millennialmedia/android/bw$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/bw$1;-><init>(Lcom/millennialmedia/android/bw;Landroid/view/animation/Animation;)V

    invoke-static {v1}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    :cond_41
    return-void

    :pswitch_42
    iget-object v0, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v0

    int-to-float v1, v0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_26

    :pswitch_50
    iget-object v0, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v0

    int-to-float v1, v0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_26

    nop

    :pswitch_data_5e
    .packed-switch 0x2
        :pswitch_42
        :pswitch_50
    .end packed-switch
.end method

.method m()Ljava/lang/String;
    .registers 2

    const-string v0, "millennialmedia.action.ACTION_GETAD_FAILED"

    return-object v0
.end method

.method n()Ljava/lang/String;
    .registers 2

    const-string v0, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    return-object v0
.end method

.method o()Ljava/lang/String;
    .registers 2

    const-string v0, "getad"

    return-object v0
.end method

.method public p()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method t()Z
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
