.class public final Lcom/instagram/android/people/b/m;
.super Lcom/instagram/android/fragment/a;
.source "PhotosOfYouFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/a",
        "<",
        "Lcom/instagram/android/people/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Z

.field private ah:Z

.field private ai:Lcom/instagram/common/c/j;

.field private aj:Lcom/instagram/common/c/h;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/people/b/m;->ah:Z

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/b/m;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/b/m;->c(Z)V

    return-void
.end method

.method private ao()Lcom/instagram/android/people/a/a;
    .registers 3

    new-instance v0, Lcom/instagram/android/people/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->Y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/people/a/a;-><init>(Lcom/instagram/android/fragment/a;I)V

    return-object v0
.end method

.method private ap()V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->q_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->photos_of_you_empty:I

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->D()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->photos_of_you_empty_body:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/instagram/android/people/b/m;->ag:Z

    if-nez v2, :cond_2e

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2e
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->D()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->q_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_3e
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/people/b/m;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/b/m;->ah:Z

    return v0
.end method

.method static synthetic c(Lcom/instagram/android/people/b/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/people/b/m;->ap()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/people/b/m;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/people/b/m;->ag:Z

    return v0
.end method


# virtual methods
.method public final E()V
    .registers 4

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->E()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/people/b/m;->ai:Lcom/instagram/common/c/j;

    invoke-virtual {v1, v0}, Lcom/instagram/common/c/j;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public final G()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/b/m;->aj:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->G()V

    return-void
.end method

.method protected final synthetic X()Lcom/instagram/android/feed/a/a;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/people/b/m;->ao()Lcom/instagram/android/people/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected final Y()I
    .registers 2

    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    return v0
.end method

.method protected final a(Lcom/instagram/api/j/f;)Lcom/instagram/feed/a/a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/feed/a/b;",
            ">;)",
            "Lcom/instagram/feed/a/a;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/android/c/a/l;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->ad()Lcom/instagram/feed/f/a;

    move-result-object v3

    iget-object v5, p0, Lcom/instagram/android/people/b/m;->ae:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/c/a/l;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;Lcom/instagram/api/j/f;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/b/m;->ae:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/b/m;->af:Ljava/lang/String;

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/b/m;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/people/b/m;->ag:Z

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/a/a;

    iget-boolean v1, p0, Lcom/instagram/android/people/b/m;->ag:Z

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/a/a;->a(Z)V

    new-instance v0, Lcom/instagram/common/c/j;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/people/b/m;->ai:Lcom/instagram/common/c/j;

    iget-object v0, p0, Lcom/instagram/android/people/b/m;->ai:Lcom/instagram/common/c/j;

    invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED"

    new-instance v2, Lcom/instagram/android/people/b/n;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/b/n;-><init>(Lcom/instagram/android/people/b/m;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/b/m;->aj:Lcom/instagram/common/c/h;

    iget-object v0, p0, Lcom/instagram/android/people/b/m;->aj:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/b/m;->c(Z)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/instagram/android/people/b/m;->ah:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/instagram/android/people/b/m;->ap()V

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/people/a/a;->m()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/instagram/android/people/b/m;->D()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    goto :goto_a
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 6

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/instagram/a/a;->a(Z)V

    iget-boolean v0, p0, Lcom/instagram/android/people/b/m;->ag:Z

    if-eqz v0, :cond_24

    sget v0, Lcom/facebook/az;->photos_of_you:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/b/m;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/instagram/android/people/b/m;->ag:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/instagram/android/people/b/m;->ah:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/instagram/a/j;->b:Lcom/instagram/a/j;

    new-instance v1, Lcom/instagram/android/people/b/o;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/b/o;-><init>(Lcom/instagram/android/people/b/m;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;

    :cond_23
    return-void

    :cond_24
    sget v0, Lcom/facebook/az;->photos_of_user:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/people/b/m;->af:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/b/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method protected final a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "src"

    const-string v1, "tagged"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    iget-object v1, p0, Lcom/instagram/android/people/b/m;->ae:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final ag()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final ai()Lcom/instagram/android/fragment/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/android/fragment/a",
            "<",
            "Lcom/instagram/android/people/a/a;",
            ">.com/instagram/android/fragment/j;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/android/people/b/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/people/b/p;-><init>(Lcom/instagram/android/people/b/m;B)V

    return-object v0
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "feed_photos_of_you"

    return-object v0
.end method

.method public final m_()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/b/m;->c(Z)V

    return-void
.end method
