.class public Lcom/twidroid/fragments/e/t;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "NearbyFragment"

.field private static final g:I = 0x32


# instance fields
.field protected d:D

.field protected e:D

.field private h:Lcom/twidroid/fragments/e/u;

.field private i:Z

.field private j:Lcom/twidroid/net/c/a;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V

    iput-wide v0, p0, Lcom/twidroid/fragments/e/t;->d:D

    iput-wide v0, p0, Lcom/twidroid/fragments/e/t;->e:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/fragments/e/t;->i:Z

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V

    iput-wide v0, p0, Lcom/twidroid/fragments/e/t;->d:D

    iput-wide v0, p0, Lcom/twidroid/fragments/e/t;->e:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/fragments/e/t;->i:Z

    iput-object p1, p0, Lcom/twidroid/fragments/e/t;->a:Lcom/twidroid/model/twitter/c;

    return-void
.end method

.method private a(DD)V
    .registers 7

    const-string v0, "NearbyFragment"

    const-string v1, "setGeoLocation called"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p3, p0, Lcom/twidroid/fragments/e/t;->d:D

    iput-wide p1, p0, Lcom/twidroid/fragments/e/t;->e:D

    new-instance v0, Lcom/twidroid/fragments/e/t$2;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/t$2;-><init>(Lcom/twidroid/fragments/e/t;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/t;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(JF)V
    .registers 8

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/twidroid/fragments/e/t;->c:Lcom/twidroid/UberSocialApplication;

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/t;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/t;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1a
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/t;->N()V

    :cond_1d
    iget-object v0, p0, Lcom/twidroid/fragments/e/t;->j:Lcom/twidroid/net/c/a;

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/twidroid/fragments/e/t;->z()V

    :cond_24
    new-instance v0, Lcom/twidroid/net/c/a;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/e/t;->c:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/d/v;->bh()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/twidroid/fragments/e/t$1;

    invoke-direct {v3, p0}, Lcom/twidroid/fragments/e/t$1;-><init>(Lcom/twidroid/fragments/e/t;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/net/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/c;)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/t;->j:Lcom/twidroid/net/c/a;

    :cond_3e
    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/t;DD)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twidroid/fragments/e/t;->a(DD)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/t;Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/t;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/t;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/fragments/e/t;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/fragments/e/t;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/twidroid/fragments/e/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/t;->y()V

    return-void
.end method

.method static synthetic c(Lcom/twidroid/fragments/e/t;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/t;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method private y()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/t;->h:Lcom/twidroid/fragments/e/u;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/fragments/e/t;->h:Lcom/twidroid/fragments/e/u;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/u;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/twidroid/fragments/e/t;->h:Lcom/twidroid/fragments/e/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/u;->b(Z)Z

    :cond_14
    return-void
.end method

.method private z()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/t;->j:Lcom/twidroid/net/c/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twidroid/fragments/e/t;->j:Lcom/twidroid/net/c/a;

    invoke-virtual {v0}, Lcom/twidroid/net/c/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/fragments/e/t;->j:Lcom/twidroid/net/c/a;

    :cond_c
    return-void
.end method


# virtual methods
.method protected F()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public S()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/t;->u:Lcom/twidroid/net/c/a/f;

    const v1, 0x7f0c01bb

    invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method public b(Z)V
    .registers 10

    const-wide/16 v1, 0x0

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Z)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/t;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/am;

    new-instance v3, Lcom/twidroid/fragments/e/v;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/twidroid/fragments/e/v;-><init>(Lcom/twidroid/fragments/e/t$1;)V

    if-eqz p1, :cond_4b

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_24
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2a
    iput-wide v0, v3, Lcom/twidroid/fragments/e/v;->e:J

    :goto_2c
    :try_start_2c
    iget-wide v0, p0, Lcom/twidroid/fragments/e/t;->e:D

    iput-wide v0, v3, Lcom/twidroid/fragments/e/v;->b:D

    iget-wide v0, p0, Lcom/twidroid/fragments/e/t;->d:D

    iput-wide v0, v3, Lcom/twidroid/fragments/e/v;->c:D

    iput-boolean p1, v3, Lcom/twidroid/fragments/e/v;->f:Z

    new-instance v0, Lcom/twidroid/fragments/e/u;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/u;-><init>(Lcom/twidroid/fragments/e/t;)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/t;->h:Lcom/twidroid/fragments/e/u;

    iget-object v0, p0, Lcom/twidroid/fragments/e/t;->h:Lcom/twidroid/fragments/e/u;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twidroid/fragments/e/v;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/u;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_48} :catch_58

    :cond_48
    :goto_48
    return-void

    :cond_49
    move-wide v0, v1

    goto :goto_2a

    :cond_4b
    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_55
    iput-wide v1, v3, Lcom/twidroid/fragments/e/v;->e:J

    goto :goto_2c

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    const-string v1, "NearbyFragment"

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48
.end method

.method public d()V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/t;->Q()V

    iget-boolean v0, p0, Lcom/twidroid/fragments/e/t;->i:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/t;->b(Z)V

    :goto_b
    return-void

    :cond_c
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twidroid/fragments/e/t;->a(JF)V

    goto :goto_b
.end method

.method protected e()V
    .registers 5

    new-instance v0, Lcom/twidroid/ui/a/am;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/twidroid/fragments/e/t;->F:Lcom/twidroid/net/b/f;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->a(Lcom/twidroid/net/b/f;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/t;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onPause()V

    invoke-direct {p0}, Lcom/twidroid/fragments/e/t;->z()V

    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onResume()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/t;->Q()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twidroid/fragments/e/t;->a(JF)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c0207

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/t;->b(I)V

    return-void
.end method

.method protected x()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
