.class public abstract Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/artist/a/c;


# instance fields
.field protected a:Lcom/spotify/mobile/android/spotlets/artist/view/c/b;

.field private final b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private final d:Lcom/spotify/mobile/android/spotlets/artist/b/a;

.field private e:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

.field private f:Lcom/spotify/mobile/android/ui/actions/d;

.field private g:Lcom/spotify/mobile/android/ui/actions/a;

.field private h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

.field private i:Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;

.field private j:Lcom/spotify/mobile/android/spotlets/artist/a/a;

.field private k:Z

.field private l:Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

.field private m:Landroid/view/View;

.field private final n:Lcom/spotify/mobile/android/spotlets/artist/view/c/f;

.field private o:Landroid/view/View$OnClickListener;

.field private final p:Landroid/view/View$OnClickListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/b/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f:Lcom/spotify/mobile/android/ui/actions/d;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->g:Lcom/spotify/mobile/android/ui/actions/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->k:Z

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->o:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$2;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->p:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/c/f;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->n:Lcom/spotify/mobile/android/spotlets/artist/view/c/f;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/spotlets/artist/b/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/ui/actions/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f:Lcom/spotify/mobile/android/ui/actions/d;

    return-object v0
.end method

.method private b(Lcom/spotify/mobile/android/spotlets/artist/a/a;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->j:Lcom/spotify/mobile/android/spotlets/artist/a/a;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Lcom/spotify/mobile/android/spotlets/artist/a/a;)V

    goto :goto_4
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->g:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "artist_model"

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->e:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private h()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->k:Z

    if-eqz v1, :cond_14

    const-string v1, "artist_name"

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->e:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->k:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->i:Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;->b()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a(II)I
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->c(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_13
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->e(I)I

    move-result v1

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    goto :goto_9

    :cond_1c
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public abstract a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;
.end method

.method public final a(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->k:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->i:Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;->a(I)V

    :cond_9
    return-void
.end method

.method public abstract a(Landroid/view/View$OnCreateContextMenuListener;)V
.end method

.method public final a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->m:Landroid/view/View;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/artist/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->j:Lcom/spotify/mobile/android/spotlets/artist/a/a;

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b(Lcom/spotify/mobile/android/spotlets/artist/a/a;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/b;

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(ZI)V
    .registers 3

    return-void
.end method

.method public abstract b()Landroid/widget/ListView;
.end method

.method public final b(I)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->getItemId(I)J

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->p:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected final b(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->c:Landroid/view/View;

    return-void
.end method

.method public final b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->e:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->i:Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->o:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Landroid/content/Context;Landroid/widget/ListView;Landroid/view/View$OnClickListener;)Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->l:Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->p:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->j:Lcom/spotify/mobile/android/spotlets/artist/a/a;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b(Lcom/spotify/mobile/android/spotlets/artist/a/a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->k:Z

    return-void
.end method

.method public final c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->c:Landroid/view/View;

    return-object v0
.end method

.method protected final c(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)Lcom/spotify/mobile/android/util/dg;
    .registers 3

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-boolean v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->verified:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->n:Lcom/spotify/mobile/android/spotlets/artist/view/c/f;

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Lcom/spotify/mobile/android/ui/b/a;->a()Lcom/spotify/mobile/android/util/dg;

    move-result-object v0

    goto :goto_8
.end method

.method protected final d()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected e()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->l:Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

    return-object v0
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->o:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->l:Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->c()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->k:Z

    const/4 v0, 0x0

    return v0
.end method
