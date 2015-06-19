.class final Lcom/instagram/android/feed/d/f;
.super Ljava/lang/Object;
.source "SponsoredHideHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/d/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/d/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/d/f;->a:Lcom/instagram/android/feed/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/feed/d/f;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->h(Lcom/instagram/android/feed/d/d;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/feed/d/f;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->h(Lcom/instagram/android/feed/d/d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
