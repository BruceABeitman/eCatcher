.class public final Lcom/instagram/android/l/c/v;
.super Ljava/lang/Object;
.source "UserListPaginationHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/instagram/feed/b/b;
.implements Lcom/instagram/ui/widget/loadmore/c;


# instance fields
.field private final a:Lcom/instagram/feed/b/a;

.field private final b:Lcom/instagram/android/l/c/a;

.field private c:Z

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Lcom/instagram/android/l/c/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/android/l/c/v;->e:J

    new-instance v0, Lcom/instagram/feed/b/a;

    invoke-direct {v0, p0}, Lcom/instagram/feed/b/a;-><init>(Lcom/instagram/feed/b/b;)V

    iput-object v0, p0, Lcom/instagram/android/l/c/v;->a:Lcom/instagram/feed/b/a;

    iput-object p1, p0, Lcom/instagram/android/l/c/v;->b:Lcom/instagram/android/l/c/a;

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

    iget-object v0, p0, Lcom/instagram/android/l/c/v;->b:Lcom/instagram/android/l/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/c/a;->u()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/instagram/android/l/c/v;->e()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/instagram/android/l/c/v;->i()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/instagram/android/l/c/v;->g()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/instagram/android/l/c/v;->m_()V

    :cond_1d
    return-void
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/instagram/android/l/c/v;->e:J

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/l/c/v;->d:Z

    return-void
.end method

.method public final b()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/l/c/v;->c:Z

    return-void
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/l/c/v;->d:Z

    return v0
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/v;->b:Lcom/instagram/android/l/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/c/a;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

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
    .registers 5

    iget-wide v0, p0, Lcom/instagram/android/l/c/v;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/l/c/v;->c:Z

    return v0
.end method

.method public final j()J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/android/l/c/v;->e:J

    return-wide v0
.end method

.method public final m_()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/v;->b:Lcom/instagram/android/l/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/c/a;->d()V

    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/l/c/v;->a:Lcom/instagram/feed/b/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/feed/b/a;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/l/c/v;->a:Lcom/instagram/feed/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/b/a;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method
