.class final Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
.end annotation


# instance fields
.field a:[I

.field b:[I

.field final synthetic c:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)V
    .registers 4

    const/4 v1, 0x2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->c:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->a:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->b:[I

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->c:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->h(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz p2, :cond_e

    if-nez p3, :cond_2f

    :cond_e
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->c:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)I

    move-result v2

    if-nez v2, :cond_2d

    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->c:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->a(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;Z)V

    :cond_1b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->c:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->j(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->c:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->j(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_2c
    return-void

    :cond_2d
    move v0, v1

    goto :goto_16

    :cond_2f
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->c:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)I

    move-result v2

    if-lt v2, p2, :cond_16

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->c:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->c:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->c(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->a:[I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->c:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->i(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->b:[I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;->b:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_16

    move v0, v1

    goto :goto_16
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
