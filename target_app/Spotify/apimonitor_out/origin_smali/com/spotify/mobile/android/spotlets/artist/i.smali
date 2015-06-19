.class public final Lcom/spotify/mobile/android/spotlets/artist/i;
.super Lcom/spotify/mobile/android/spotlets/artist/a;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/ad;


# instance fields
.field private Y:Lcom/spotify/mobile/android/ui/view/j;

.field private b:Landroid/widget/ListView;

.field private c:Ljava/lang/String;

.field private d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

.field private e:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

.field private f:Lcom/spotify/mobile/android/ui/adapter/o;

.field private g:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

.field private h:Lcom/spotify/mobile/android/spotlets/artist/view/e;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/i$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/i$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/i;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/i$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/i$2;-><init>(Lcom/spotify/mobile/android/spotlets/artist/i;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->Y:Lcom/spotify/mobile/android/ui/view/j;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/i;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->e:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    return-object v0
.end method


# virtual methods
.method protected final E()Landroid/view/View;
    .registers 8

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v0, 0x102000a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->a:Ljava/util/List;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->b:Lcom/spotify/mobile/android/util/cw;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->Y:Lcom/spotify/mobile/android/ui/view/j;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->b:Landroid/widget/ListView;

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Lcom/spotify/mobile/android/ui/view/j;Landroid/widget/ListView;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    const v1, 0x7f0f022b

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-object v6
.end method

.method protected final F()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    return-void
.end method

.method public final H()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->g:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a()V

    return-void
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->c:Ljava/lang/String;

    if-nez v0, :cond_c

    const v0, 0x7f0f005e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->c:Ljava/lang/String;

    goto :goto_b
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/a;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->c:Ljava/lang/String;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->c()Lcom/spotify/mobile/android/spotlets/artist/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/b/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->g:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    return-void
.end method

.method protected final b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 9

    const v6, 0x7f0f0064

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->c()Lcom/spotify/mobile/android/spotlets/artist/b/b;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/b/h;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->i:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/view/e;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->h:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->h:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/b/h;->b()Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->getReleases(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->e:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->f:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->f:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->e:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->c()Lcom/spotify/mobile/android/spotlets/artist/b/b;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/b/h;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/i$3;->a:[I

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/b/h;->b()Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_a0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_62
    invoke-virtual {v1, v2, v0, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->f:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->f:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :pswitch_72
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :pswitch_7b
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0f006a

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :pswitch_87
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0f0065

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :pswitch_93
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0f0066

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_72
        :pswitch_7b
        :pswitch_87
        :pswitch_93
    .end packed-switch
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6

    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->g:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a(Landroid/view/ContextMenu;Landroid/view/View;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->g:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a(Landroid/view/ContextMenu;Landroid/view/View;)V

    goto :goto_d
.end method

.method public final x()V
    .registers 3

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->x()V

    const-class v0, Lcom/spotify/mobile/android/util/ac;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ac;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/ac;->a(Lcom/spotify/mobile/android/util/ad;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/i;->c:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->y()V

    const-class v0, Lcom/spotify/mobile/android/util/ac;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ac;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ac;->a()V

    return-void
.end method
