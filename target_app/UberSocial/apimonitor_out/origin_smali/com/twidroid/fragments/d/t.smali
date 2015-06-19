.class public Lcom/twidroid/fragments/d/t;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;

.field private static final f:I


# instance fields
.field public e:I

.field private g:Lcom/twidroid/model/twitter/User;

.field private h:Lcom/twidroid/ui/a/am;

.field private i:Lcom/twidroid/fragments/d/v;

.field private j:Lcom/twidroid/fragments/d/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/twidroid/activity/UberSocialBaseActivity;->M:I

    sput v0, Lcom/twidroid/fragments/d/t;->f:I

    const-class v0, Lcom/twidroid/fragments/d/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/fragments/d/t;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/twidroid/fragments/d/t;->e:I

    return-void
.end method

.method public static a(Lcom/twidroid/model/twitter/User;)Landroid/support/v4/app/Fragment;
    .registers 4

    new-instance v0, Lcom/twidroid/fragments/d/t;

    invoke-direct {v0}, Lcom/twidroid/fragments/d/t;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "user"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/t;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/fragments/d/t;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic b(Lcom/twidroid/fragments/d/t;)Lcom/twidroid/ui/a/am;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->h:Lcom/twidroid/ui/a/am;

    return-object v0
.end method

.method static synthetic c(Lcom/twidroid/fragments/d/t;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic x()I
    .registers 1

    sget v0, Lcom/twidroid/fragments/d/t;->f:I

    return v0
.end method


# virtual methods
.method public S()Ljava/lang/String;
    .registers 2

    const-string v0, "Tweets"

    return-object v0
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/t;->b(Z)V

    return-void
.end method

.method public b(Z)V
    .registers 9

    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Z)V

    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->h:Lcom/twidroid/ui/a/am;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->g:Lcom/twidroid/model/twitter/User;

    if-nez v2, :cond_16

    :cond_f
    invoke-virtual {p0}, Lcom/twidroid/fragments/d/t;->M()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/t;->P()V

    :goto_15
    return-void

    :cond_16
    if-eqz p1, :cond_57

    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->i:Lcom/twidroid/fragments/d/v;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->i:Lcom/twidroid/fragments/d/v;

    invoke-virtual {v2}, Lcom/twidroid/fragments/d/v;->g()Lcom/ubermedia/a/e;

    move-result-object v2

    sget-object v3, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v2, v3, :cond_2b

    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->i:Lcom/twidroid/fragments/d/v;

    invoke-virtual {v2, v5}, Lcom/twidroid/fragments/d/v;->b(Z)Z

    :cond_2b
    new-instance v2, Lcom/twidroid/fragments/d/v;

    invoke-direct {v2, p0}, Lcom/twidroid/fragments/d/v;-><init>(Lcom/twidroid/fragments/d/t;)V

    iput-object v2, p0, Lcom/twidroid/fragments/d/t;->i:Lcom/twidroid/fragments/d/v;

    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->h:Lcom/twidroid/ui/a/am;

    invoke-virtual {v2}, Lcom/twidroid/ui/a/am;->getCount()I

    move-result v2

    if-lez v2, :cond_44

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->h:Lcom/twidroid/ui/a/am;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_44
    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->g:Lcom/twidroid/model/twitter/User;

    iget-object v2, v2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    new-instance v3, Lcom/twidroid/fragments/d/w;

    invoke-direct {v3, v0, v1, v2}, Lcom/twidroid/fragments/d/w;-><init>(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->i:Lcom/twidroid/fragments/d/v;

    new-array v1, v5, [Lcom/twidroid/fragments/d/w;

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/v;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto :goto_15

    :cond_57
    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->h:Lcom/twidroid/ui/a/am;

    invoke-virtual {v2}, Lcom/twidroid/ui/a/am;->getCount()I

    move-result v2

    if-lez v2, :cond_69

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->h:Lcom/twidroid/ui/a/am;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_69
    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->j:Lcom/twidroid/fragments/d/u;

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->j:Lcom/twidroid/fragments/d/u;

    invoke-virtual {v2}, Lcom/twidroid/fragments/d/u;->g()Lcom/ubermedia/a/e;

    move-result-object v2

    sget-object v3, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v2, v3, :cond_7c

    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->j:Lcom/twidroid/fragments/d/u;

    invoke-virtual {v2, v5}, Lcom/twidroid/fragments/d/u;->b(Z)Z

    :cond_7c
    new-instance v2, Lcom/twidroid/fragments/d/u;

    invoke-direct {v2, p0}, Lcom/twidroid/fragments/d/u;-><init>(Lcom/twidroid/fragments/d/t;)V

    iput-object v2, p0, Lcom/twidroid/fragments/d/t;->j:Lcom/twidroid/fragments/d/u;

    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->j:Lcom/twidroid/fragments/d/u;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/twidroid/fragments/d/t;->g:Lcom/twidroid/model/twitter/User;

    iget-object v4, v4, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/twidroid/fragments/d/u;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto/16 :goto_15
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/t;->b(Z)V

    return-void
.end method

.method protected e()V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->g:Lcom/twidroid/model/twitter/User;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->h:Lcom/twidroid/ui/a/am;

    if-nez v0, :cond_27

    new-instance v0, Lcom/twidroid/ui/a/o;

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/d/t;->g:Lcom/twidroid/model/twitter/User;

    iget-object v2, v2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twidroid/ui/a/o;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/twidroid/fragments/d/t;->F:Lcom/twidroid/net/b/f;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/o;->a(Lcom/twidroid/net/b/f;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/t;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_20
    const v0, 0x7f0c0207

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/t;->b(I)V

    goto :goto_4

    :cond_27
    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->h:Lcom/twidroid/ui/a/am;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/t;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_20
.end method

.method protected g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_f

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iput-object v0, p0, Lcom/twidroid/fragments/d/t;->g:Lcom/twidroid/model/twitter/User;

    :cond_f
    invoke-virtual {p0}, Lcom/twidroid/fragments/d/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iput-object v0, p0, Lcom/twidroid/fragments/d/t;->g:Lcom/twidroid/model/twitter/User;

    new-instance v0, Lcom/twidroid/fragments/d/v;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/d/v;-><init>(Lcom/twidroid/fragments/d/t;)V

    iput-object v0, p0, Lcom/twidroid/fragments/d/t;->i:Lcom/twidroid/fragments/d/v;

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onResume()V

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->h:Lcom/twidroid/ui/a/am;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->h:Lcom/twidroid/ui/a/am;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->getCount()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/t;->b()V

    :cond_12
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "user"

    iget-object v1, p0, Lcom/twidroid/fragments/d/t;->g:Lcom/twidroid/model/twitter/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onStop()V
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onStop()V

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->i:Lcom/twidroid/fragments/d/v;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->i:Lcom/twidroid/fragments/d/v;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/v;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->i:Lcom/twidroid/fragments/d/v;

    invoke-virtual {v0, v2}, Lcom/twidroid/fragments/d/v;->b(Z)Z

    :cond_17
    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->j:Lcom/twidroid/fragments/d/u;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->j:Lcom/twidroid/fragments/d/u;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/u;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/twidroid/fragments/d/t;->j:Lcom/twidroid/fragments/d/u;

    invoke-virtual {v0, v2}, Lcom/twidroid/fragments/d/u;->b(Z)Z

    :cond_2a
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    if-eqz p2, :cond_c

    const-string v0, "user"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iput-object v0, p0, Lcom/twidroid/fragments/d/t;->g:Lcom/twidroid/model/twitter/User;

    :cond_c
    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c0207

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/t;->b(I)V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->setListAdapter(Landroid/widget/ListAdapter;)V

    check-cast p1, Lcom/twidroid/ui/a/am;

    iput-object p1, p0, Lcom/twidroid/fragments/d/t;->h:Lcom/twidroid/ui/a/am;

    return-void
.end method

.method protected t()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
