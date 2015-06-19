.class final Lcom/instagram/android/feed/a/b;
.super Landroid/os/Handler;
.source "FeedAdapter.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/instagram/android/feed/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/android/feed/a/a;)Z

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/instagram/android/feed/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->g()Lcom/instagram/android/feed/ui/StickyHeaderListView;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/instagram/android/feed/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->g()Lcom/instagram/android/feed/ui/StickyHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a(IZ)V

    goto :goto_a
.end method
