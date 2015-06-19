.class public Lcom/twidroid/fragments/d/g;
.super Lcom/twidroid/fragments/base/b;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/twidroid/model/twitter/User;

.field private c:I

.field private d:Lcom/twidroid/fragments/d/i;

.field private e:Lcom/twidroid/ui/a/p;

.field private f:Lcom/twidroid/net/a/c/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/twidroid/fragments/d/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/fragments/d/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/base/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/twidroid/fragments/d/g;->c:I

    return-void
.end method

.method public static a(Lcom/twidroid/model/twitter/User;)Landroid/support/v4/app/Fragment;
    .registers 4

    new-instance v0, Lcom/twidroid/fragments/d/g;

    invoke-direct {v0}, Lcom/twidroid/fragments/d/g;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "user"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/g;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/fragments/d/g;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d/g;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/fragments/d/g;Lcom/twidroid/net/a/c/i;)Lcom/twidroid/net/a/c/i;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/d/g;->f:Lcom/twidroid/net/a/c/i;

    return-object p1
.end method

.method static synthetic b(Lcom/twidroid/fragments/d/g;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d/g;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method private b(Lcom/twidroid/model/twitter/User;)V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Lcom/twidroid/model/twitter/User;I)V

    return-void
.end method

.method static synthetic c(Lcom/twidroid/fragments/d/g;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d/g;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic d(Lcom/twidroid/fragments/d/g;)I
    .registers 3

    iget v0, p0, Lcom/twidroid/fragments/d/g;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/twidroid/fragments/d/g;->c:I

    return v0
.end method


# virtual methods
.method public S()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    const v0, 0x7f0c01b2

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/g;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/twidroid/model/twitter/User;

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/d/g;->b(Lcom/twidroid/model/twitter/User;)V

    return-void
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/g;->b(Z)V

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/twidroid/model/twitter/User;

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/d/g;->b(Lcom/twidroid/model/twitter/User;)V

    return-void
.end method

.method public b(Z)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->b(Z)V

    if-nez p1, :cond_a

    const/4 v0, -0x1

    iput v0, p0, Lcom/twidroid/fragments/d/g;->c:I

    :cond_a
    new-instance v0, Lcom/twidroid/fragments/d/j;

    iget v1, p0, Lcom/twidroid/fragments/d/g;->c:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/twidroid/fragments/d/g;->b:Lcom/twidroid/model/twitter/User;

    iget-object v3, v3, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/twidroid/fragments/d/g;->f:Lcom/twidroid/net/a/c/i;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/twidroid/fragments/d/j;-><init>(JLjava/lang/String;Lcom/twidroid/net/a/c/i;Z)V

    iget-object v1, p0, Lcom/twidroid/fragments/d/g;->d:Lcom/twidroid/fragments/d/i;

    if-nez v1, :cond_2e

    new-instance v1, Lcom/twidroid/fragments/d/i;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/d/i;-><init>(Lcom/twidroid/fragments/d/g;)V

    iput-object v1, p0, Lcom/twidroid/fragments/d/g;->d:Lcom/twidroid/fragments/d/i;

    iget-object v1, p0, Lcom/twidroid/fragments/d/g;->d:Lcom/twidroid/fragments/d/i;

    new-array v2, v6, [Lcom/twidroid/fragments/d/j;

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Lcom/twidroid/fragments/d/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2d
    return-void

    :cond_2e
    iget-object v1, p0, Lcom/twidroid/fragments/d/g;->d:Lcom/twidroid/fragments/d/i;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/i;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_3d

    iget-object v1, p0, Lcom/twidroid/fragments/d/g;->d:Lcom/twidroid/fragments/d/i;

    invoke-virtual {v1, v6}, Lcom/twidroid/fragments/d/i;->cancel(Z)Z

    :cond_3d
    new-instance v1, Lcom/twidroid/fragments/d/i;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/d/i;-><init>(Lcom/twidroid/fragments/d/g;)V

    iput-object v1, p0, Lcom/twidroid/fragments/d/g;->d:Lcom/twidroid/fragments/d/i;

    iget-object v1, p0, Lcom/twidroid/fragments/d/g;->d:Lcom/twidroid/fragments/d/i;

    new-array v2, v6, [Lcom/twidroid/fragments/d/j;

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Lcom/twidroid/fragments/d/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2d
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/g;->b(Z)V

    return-void
.end method

.method protected e()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/d/g;->b:Lcom/twidroid/model/twitter/User;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/g;->P()V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/twidroid/fragments/d/g;->f:Lcom/twidroid/net/a/c/i;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twidroid/fragments/d/g;->f:Lcom/twidroid/net/a/c/i;

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/i;->c()V

    :cond_11
    iget-object v0, p0, Lcom/twidroid/fragments/d/g;->e:Lcom/twidroid/ui/a/p;

    if-nez v0, :cond_26

    new-instance v0, Lcom/twidroid/fragments/d/g$1;

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/d/g;->b:Lcom/twidroid/model/twitter/User;

    iget-object v2, v2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/twidroid/fragments/d/g$1;-><init>(Lcom/twidroid/fragments/d/g;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/g;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7

    :cond_26
    iget-object v0, p0, Lcom/twidroid/fragments/d/g;->e:Lcom/twidroid/ui/a/p;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/g;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7
.end method

.method protected g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iput-object v0, p0, Lcom/twidroid/fragments/d/g;->b:Lcom/twidroid/model/twitter/User;

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/twidroid/fragments/base/b;->onResume()V

    iget-object v0, p0, Lcom/twidroid/fragments/d/g;->e:Lcom/twidroid/ui/a/p;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twidroid/fragments/d/g;->e:Lcom/twidroid/ui/a/p;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/p;->getCount()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/g;->b()V

    :cond_12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c01fe

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/g;->b(I)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/g;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    const v1, 0x7f0c0217

    invoke-virtual {p0, v1}, Lcom/twidroid/fragments/d/g;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/g;->g:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/g;)V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->setListAdapter(Landroid/widget/ListAdapter;)V

    check-cast p1, Lcom/twidroid/ui/a/p;

    iput-object p1, p0, Lcom/twidroid/fragments/d/g;->e:Lcom/twidroid/ui/a/p;

    return-void
.end method
