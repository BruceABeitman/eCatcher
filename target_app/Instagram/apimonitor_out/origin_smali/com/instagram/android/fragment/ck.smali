.class public final Lcom/instagram/android/fragment/ck;
.super Lcom/instagram/android/fragment/ew;
.source "LikedFeedFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/ew;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ck;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/ck;->ao()V

    return-void
.end method

.method private ao()V
    .registers 6

    const/4 v4, -0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ck;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->load_more_empty:I

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ck;->D()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ck;->D()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ck;->q_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final Y()I
    .registers 2

    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    return v0
.end method

.method protected final a(Lcom/instagram/api/j/f;)Lcom/instagram/feed/a/a;
    .registers 9
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

    new-instance v0, Lcom/instagram/android/fragment/cm;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ck;->ad()Lcom/instagram/feed/f/a;

    move-result-object v4

    sget v5, Lcom/facebook/av;->request_id_liked_feed:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/fragment/cm;-><init>(Lcom/instagram/android/fragment/ck;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/ew;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ck;->c(Z)V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/ew;->a(Lcom/instagram/a/a;)V

    sget v0, Lcom/facebook/az;->likes:I

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
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

    const-string v1, "liked"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ai()Lcom/instagram/android/fragment/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/android/fragment/a",
            "<",
            "Lcom/instagram/android/feed/a/a;",
            ">.com/instagram/android/fragment/j;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/android/fragment/cl;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/cl;-><init>(Lcom/instagram/android/fragment/ck;)V

    return-object v0
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "feed_liked"

    return-object v0
.end method
