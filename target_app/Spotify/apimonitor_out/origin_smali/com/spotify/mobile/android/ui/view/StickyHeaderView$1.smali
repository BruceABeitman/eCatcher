.class final Lcom/spotify/mobile/android/ui/view/StickyHeaderView$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->a(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->c(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/view/ViewGroup;

    move-result-object v0

    move-object v1, v0

    :goto_1b
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->d(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/ListView;

    move-result-object v2

    if-eq v0, v2, :cond_2d

    move-object v1, v0

    goto :goto_1b

    :cond_2d
    if-eqz v1, :cond_3e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->d(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->a(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;I)I

    :cond_3e
    return-void
.end method
