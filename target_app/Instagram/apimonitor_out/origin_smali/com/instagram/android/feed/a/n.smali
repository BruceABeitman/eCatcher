.class public final Lcom/instagram/android/feed/a/n;
.super Lcom/instagram/android/feed/a/m;
.source "UserDetailFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/feed/a/m",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/instagram/android/feed/a/b/aq;

.field private j:Z

.field private k:Lcom/instagram/user/follow/h;


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/a;ILcom/instagram/user/follow/h;Lcom/instagram/android/feed/a/b/aq;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/m;-><init>(Lcom/instagram/android/fragment/a;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/feed/a/n;->g:I

    iput-object p3, p0, Lcom/instagram/android/feed/a/n;->k:Lcom/instagram/user/follow/h;

    iput-object p4, p0, Lcom/instagram/android/feed/a/n;->i:Lcom/instagram/android/feed/a/b/aq;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/n;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/feed/a/n;->j:Z

    return p1
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/feed/a/n;->k:Lcom/instagram/user/follow/h;

    invoke-static {p1, v0}, Lcom/instagram/android/feed/a/b/af;->a(Landroid/content/Context;Lcom/instagram/user/follow/h;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/android/feed/a/n;->h:Ljava/util/List;

    return-void
.end method

.method protected final b(Landroid/content/Context;Landroid/view/View;I)V
    .registers 14

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/b/ar;

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/n;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/user/c/a;

    iget v2, p0, Lcom/instagram/android/feed/a/n;->g:I

    iget-boolean v3, p0, Lcom/instagram/android/feed/a/n;->j:Z

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/instagram/android/feed/a/n;->h:Ljava/util/List;

    :goto_14
    iget-object v5, p0, Lcom/instagram/android/feed/a/n;->b:Landroid/support/v4/app/an;

    iget-object v6, p0, Lcom/instagram/android/feed/a/n;->c:Landroid/support/v4/app/s;

    iget-object v8, p0, Lcom/instagram/android/feed/a/n;->i:Lcom/instagram/android/feed/a/b/aq;

    new-instance v9, Lcom/instagram/android/feed/a/o;

    invoke-direct {v9, p0}, Lcom/instagram/android/feed/a/o;-><init>(Lcom/instagram/android/feed/a/n;)V

    move-object v4, p1

    move-object v7, p0

    invoke-static/range {v0 .. v9}, Lcom/instagram/android/feed/a/b/af;->a(Lcom/instagram/android/feed/a/b/ar;Lcom/instagram/user/c/a;ILjava/util/List;Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/feed/a/n;Lcom/instagram/android/feed/a/b/aq;Lcom/instagram/android/j/d;)V

    return-void

    :cond_25
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public final h(I)V
    .registers 3

    iput p1, p0, Lcom/instagram/android/feed/a/n;->f:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/n;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final i(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/android/feed/a/n;->g:I

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/n;->notifyDataSetChanged()V

    return-void
.end method

.method public final k()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final s()Z
    .registers 3

    iget v0, p0, Lcom/instagram/android/feed/a/n;->f:I

    sget v1, Lcom/instagram/api/j/k;->c:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final t()Z
    .registers 3

    iget v0, p0, Lcom/instagram/android/feed/a/n;->f:I

    sget v1, Lcom/instagram/api/j/k;->d:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
