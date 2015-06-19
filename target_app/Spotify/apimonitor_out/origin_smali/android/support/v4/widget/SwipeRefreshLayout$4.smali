.class final Landroid/support/v4/widget/SwipeRefreshLayout$4;
.super Landroid/support/v4/widget/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/ab;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    return-void
.end method
