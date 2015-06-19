.class final Lcom/bbm/ui/dv;
.super Ljava/lang/Object;
.source "MainTabBarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Z

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/bbm/ui/MainTabBarView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/MainTabBarView;Landroid/view/ViewGroup;ZLandroid/widget/ImageView;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/dv;->d:Lcom/bbm/ui/MainTabBarView;

    iput-object p2, p0, Lcom/bbm/ui/dv;->a:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/bbm/ui/dv;->b:Z

    iput-object p4, p0, Lcom/bbm/ui/dv;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/dv;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/bbm/ui/dv;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/dv;->d:Lcom/bbm/ui/MainTabBarView;

    invoke-static {v1}, Lcom/bbm/ui/MainTabBarView;->a(Lcom/bbm/ui/MainTabBarView;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/bbm/ui/dv;->d:Lcom/bbm/ui/MainTabBarView;

    invoke-static {v1}, Lcom/bbm/ui/MainTabBarView;->a(Lcom/bbm/ui/MainTabBarView;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bbm/ui/dv;->d:Lcom/bbm/ui/MainTabBarView;

    invoke-static {v1}, Lcom/bbm/ui/MainTabBarView;->b(Lcom/bbm/ui/MainTabBarView;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget-boolean v0, p0, Lcom/bbm/ui/dv;->b:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/bbm/ui/dv;->d:Lcom/bbm/ui/MainTabBarView;

    invoke-static {v0}, Lcom/bbm/ui/MainTabBarView;->c(Lcom/bbm/ui/MainTabBarView;)[I

    move-result-object v0

    aget v0, v0, v3

    int-to-float v0, v0

    :goto_36
    iget-boolean v2, p0, Lcom/bbm/ui/dv;->b:Z

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/bbm/ui/dv;->d:Lcom/bbm/ui/MainTabBarView;

    invoke-static {v2}, Lcom/bbm/ui/MainTabBarView;->c(Lcom/bbm/ui/MainTabBarView;)[I

    move-result-object v2

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float v1, v2, v1

    :goto_45
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/bbm/ui/dv;->d:Lcom/bbm/ui/MainTabBarView;

    invoke-static {v3}, Lcom/bbm/ui/MainTabBarView;->c(Lcom/bbm/ui/MainTabBarView;)[I

    move-result-object v3

    aget v3, v3, v5

    int-to-float v3, v3

    iget-object v4, p0, Lcom/bbm/ui/dv;->d:Lcom/bbm/ui/MainTabBarView;

    invoke-static {v4}, Lcom/bbm/ui/MainTabBarView;->c(Lcom/bbm/ui/MainTabBarView;)[I

    move-result-object v4

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const-wide/16 v0, 0x96

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/bbm/ui/dv;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return v5

    :cond_6f
    iget-object v0, p0, Lcom/bbm/ui/dv;->d:Lcom/bbm/ui/MainTabBarView;

    invoke-static {v0}, Lcom/bbm/ui/MainTabBarView;->c(Lcom/bbm/ui/MainTabBarView;)[I

    move-result-object v0

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float/2addr v0, v1

    goto :goto_36

    :cond_7a
    iget-object v1, p0, Lcom/bbm/ui/dv;->d:Lcom/bbm/ui/MainTabBarView;

    invoke-static {v1}, Lcom/bbm/ui/MainTabBarView;->c(Lcom/bbm/ui/MainTabBarView;)[I

    move-result-object v1

    aget v1, v1, v3

    int-to-float v1, v1

    goto :goto_45
.end method
