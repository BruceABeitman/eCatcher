.class final Lcom/instagram/feed/e/a/a/f;
.super Ljava/lang/Object;
.source "FeedAYSFBannerRowViewBinder.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/e;

.field final synthetic b:Lcom/instagram/feed/e/a/a/g;

.field final synthetic c:Landroid/support/v4/app/an;

.field final synthetic d:Lcom/instagram/feed/f/c;

.field final synthetic e:I

.field final synthetic f:Lcom/instagram/feed/e/a;

.field final synthetic g:Lcom/instagram/feed/e/a/a/h;


# direct methods
.method constructor <init>(Lcom/instagram/common/analytics/e;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;Lcom/instagram/feed/e/a/a/h;)V
    .registers 8

    iput-object p1, p0, Lcom/instagram/feed/e/a/a/f;->a:Lcom/instagram/common/analytics/e;

    iput-object p2, p0, Lcom/instagram/feed/e/a/a/f;->b:Lcom/instagram/feed/e/a/a/g;

    iput-object p3, p0, Lcom/instagram/feed/e/a/a/f;->c:Landroid/support/v4/app/an;

    iput-object p4, p0, Lcom/instagram/feed/e/a/a/f;->d:Lcom/instagram/feed/f/c;

    iput p5, p0, Lcom/instagram/feed/e/a/a/f;->e:I

    iput-object p6, p0, Lcom/instagram/feed/e/a/a/f;->f:Lcom/instagram/feed/e/a;

    iput-object p7, p0, Lcom/instagram/feed/e/a/a/f;->g:Lcom/instagram/feed/e/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8

    iget-object v0, p0, Lcom/instagram/feed/e/a/a/f;->a:Lcom/instagram/common/analytics/e;

    iget-object v1, p0, Lcom/instagram/feed/e/a/a/f;->b:Lcom/instagram/feed/e/a/a/g;

    iget-object v2, p0, Lcom/instagram/feed/e/a/a/f;->c:Landroid/support/v4/app/an;

    iget-object v3, p0, Lcom/instagram/feed/e/a/a/f;->d:Lcom/instagram/feed/f/c;

    iget v4, p0, Lcom/instagram/feed/e/a/a/f;->e:I

    iget-object v5, p0, Lcom/instagram/feed/e/a/a/f;->f:Lcom/instagram/feed/e/a;

    invoke-static/range {v0 .. v5}, Lcom/instagram/feed/e/a/a/a;->a(Lcom/instagram/common/analytics/e;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)V

    iget-object v0, p0, Lcom/instagram/feed/e/a/a/f;->g:Lcom/instagram/feed/e/a/a/h;

    invoke-static {v0}, Lcom/instagram/feed/e/a/a/h;->b(Lcom/instagram/feed/e/a/a/h;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/e/a/a/a;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
