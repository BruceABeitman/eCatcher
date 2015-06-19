.class public final Lcom/instagram/android/feed/ui/f;
.super Ljava/lang/Object;
.source "ViewTranslationUtil.java"


# direct methods
.method public static a(Landroid/view/View;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1}, Lcom/instagram/android/feed/ui/f;->b(Landroid/view/View;I)V

    :goto_9
    return-void

    :cond_a
    if-nez p1, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    goto :goto_9

    :cond_10
    invoke-static {p0, p1}, Lcom/instagram/android/feed/ui/f;->c(Landroid/view/View;I)V

    goto :goto_9
.end method

.method private static b(Landroid/view/View;I)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private static c(Landroid/view/View;I)V
    .registers 12

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, p1

    int-to-float v8, p1

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
