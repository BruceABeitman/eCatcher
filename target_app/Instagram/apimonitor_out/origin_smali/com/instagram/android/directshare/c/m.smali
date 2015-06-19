.class final Lcom/instagram/android/directshare/c/m;
.super Ljava/lang/Object;
.source "InboxPaginationHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/instagram/feed/b/b;
.implements Lcom/instagram/ui/widget/loadmore/c;


# instance fields
.field private a:Lcom/instagram/android/directshare/c/c;

.field private b:Lcom/instagram/feed/b/a;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/directshare/c/m;->a:Lcom/instagram/android/directshare/c/c;

    new-instance v0, Lcom/instagram/feed/b/a;

    invoke-direct {v0, p0}, Lcom/instagram/feed/b/a;-><init>(Lcom/instagram/feed/b/b;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/m;->b:Lcom/instagram/feed/b/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/directshare/c/m;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->u()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/m;->e()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/m;->i()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/m;->m_()V

    :cond_21
    return-void
.end method

.method final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/directshare/c/m;->c:Z

    return-void
.end method

.method public final b()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .registers 2

    invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->e()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/directshare/c/m;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->b()Lcom/instagram/android/directshare/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/directshare/c/m;->c:Z

    return v0
.end method

.method public final m_()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/directshare/c/m;->a:Lcom/instagram/android/directshare/c/c;

    sget v1, Lcom/instagram/android/directshare/c/b;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/directshare/c/c;->a(IZ)V

    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/directshare/c/m;->b:Lcom/instagram/feed/b/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/feed/b/a;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/directshare/c/m;->b:Lcom/instagram/feed/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/b/a;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method
