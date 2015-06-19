.class final Lcom/spotify/mobile/android/ui/prettylist/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

.field private b:Landroid/widget/AbsListView$OnScrollListener;

.field private c:I

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/prettylist/i;-><init>(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)Z

    move-result v1

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->requestLayout()V

    :cond_13
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->b:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/i;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->b:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->b:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_8
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput p2, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->c:I

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->d:Z

    iget v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->c:I

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->d:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/i;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->b:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->b:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_25
    if-nez v1, :cond_8

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->d:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-static {v0, p0}, Landroid/support/v4/view/at;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_31
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/i;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->d:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/i;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-static {v0, p0}, Landroid/support/v4/view/at;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_8
.end method
