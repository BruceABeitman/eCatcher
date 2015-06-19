.class final Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;ZZ)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListAdapter;

.field final synthetic b:Z

.field final synthetic c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;Landroid/widget/ListAdapter;Z)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->a:Landroid/widget/ListAdapter;

    iput-boolean p3, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->b:Z

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView$FixedViewInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;ZZ)Z"
        }
    .end annotation

    if-ne p3, p4, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;Z)V

    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public final onChanged()V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->d(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->b(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->e(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a()Z

    move-result v3

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->a(Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;ZZ)Z

    move-result v0

    :goto_27
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->f(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->g(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->b()Z

    move-result v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->a(Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_46
    :goto_46
    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->b:Z

    if-eqz v1, :cond_53

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->a:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_53
    return-void

    :cond_54
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->b(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;

    move-result-object v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->b(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->e(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->h(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Z

    move-result v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a()Z

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->a(Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;ZZ)Z

    move-result v1

    :cond_78
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;

    move-result-object v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->g(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->i(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Z

    move-result v3

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->b()Z

    move-result v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;->a(Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;ZZ)Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_46

    :cond_9e
    move v0, v1

    goto :goto_46

    :cond_a0
    move v0, v1

    goto :goto_27
.end method
