.class final Lcom/instagram/android/feed/d/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SponsoredHideHelper.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/d/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/d/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/d/h;->a:Lcom/instagram/android/feed/d/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/feed/d/h;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->f(Lcom/instagram/android/feed/d/d;)Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/instagram/android/feed/d/h;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->j(Lcom/instagram/android/feed/d/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/instagram/android/feed/d/h;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->j(Lcom/instagram/android/feed/d/d;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/instagram/android/feed/d/h;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->j(Lcom/instagram/android/feed/d/d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/feed/d/h;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->j(Lcom/instagram/android/feed/d/d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Z)V

    return-void
.end method
