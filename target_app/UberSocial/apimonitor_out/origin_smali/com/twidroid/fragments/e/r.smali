.class public Lcom/twidroid/fragments/e/r;
.super Lcom/twidroid/fragments/base/e;
.source "SourceFile"


# static fields
.field public static final G:Ljava/lang/String; = "MentionsTimeline"

.field private static final H:Ljava/lang/String; = "MentionsFragment"


# instance fields
.field private I:Lcom/twidroid/ui/a/am;

.field private J:Lcom/twidroid/net/a/c/a/j;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/base/e;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/r;->setRetainInstance(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
    .registers 3

    invoke-direct {p0}, Lcom/twidroid/fragments/base/e;-><init>()V

    iput-object p1, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/r;->setRetainInstance(Z)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/r;Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/r;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/r;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/r;ZLcom/twidroid/model/twitter/c;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/r;->a(ZLcom/twidroid/model/twitter/c;)V

    return-void
.end method

.method static synthetic b(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    return-object v0
.end method

.method static synthetic b(Lcom/twidroid/fragments/e/r;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/r;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/twidroid/fragments/e/r;ZLcom/twidroid/model/twitter/c;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/r;->a(ZLcom/twidroid/model/twitter/c;)V

    return-void
.end method

.method static synthetic c(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    return-object v0
.end method

.method static synthetic d(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic f(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic g(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic h(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic i(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic j(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/d/v;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->w:Lcom/twidroid/d/v;

    return-object v0
.end method

.method static synthetic k(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/ui/a/am;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->I:Lcom/twidroid/ui/a/am;

    return-object v0
.end method

.method static synthetic l(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    return-object v0
.end method

.method static synthetic m(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    return-object v0
.end method

.method static synthetic n(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    return-object v0
.end method

.method static synthetic o(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic p(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic q(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic r(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/d/v;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->w:Lcom/twidroid/d/v;

    return-object v0
.end method

.method static synthetic s(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic t(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    return-object v0
.end method

.method static synthetic u(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    return-object v0
.end method


# virtual methods
.method public S()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->u:Lcom/twidroid/net/c/a/f;

    const v1, 0x7f0c001f

    invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T()V
    .registers 7

    const-string v0, "MentionsFragment"

    const-string v1, "Marking all Tweets as read"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_d
    return-void

    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, v3, :cond_4b

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v0, :cond_47

    iget-boolean v4, v0, Lcom/twidroid/model/twitter/Tweet;->E:Z

    if-nez v4, :cond_44

    iget-wide v4, v0, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/twidroid/model/twitter/Tweet;->E:Z

    :cond_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_4b
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/am;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->x:Lcom/twidroid/b/a/b;

    invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->b(Ljava/util/ArrayList;)Z

    goto :goto_d
.end method

.method public Z()V
    .registers 3

    const-string v0, "MentionsFragment"

    const-string v1, "loadmoreTweetsOnBottom"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/twidroid/fragments/e/r$2;

    invoke-direct {v0, p0, p0}, Lcom/twidroid/fragments/e/r$2;-><init>(Lcom/twidroid/fragments/e/r;Lcom/twidroid/fragments/e/r;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/r$2;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method

.method protected b()V
    .registers 5

    const v1, 0x7f0c0200

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->w()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    if-nez v0, :cond_13

    const-string v0, "MentionsFragment"

    const-string v1, "::application context is null"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/r;->b(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_64

    :cond_23
    const-string v0, "MentionsFragment"

    const-string v1, "showContent NULL"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->l()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/e/r;->b:Ljava/util/List;

    :goto_36
    const-string v0, "MentionsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showContent showMentions Number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/e/r;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_95

    iget-boolean v0, p0, Lcom/twidroid/fragments/e/r;->l:Z

    if-nez v0, :cond_95

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->d()V

    goto :goto_12

    :cond_64
    const-string v0, "MentionsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showContent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->f(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/e/r;->b:Ljava/util/List;

    goto :goto_36

    :cond_95
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/am;

    iget-object v1, p0, Lcom/twidroid/fragments/e/r;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->c(Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/twidroid/fragments/e/r;->c(Z)V

    :try_start_a3
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->D()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f0c0163

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/twidroid/d/p;->a(Landroid/content/Context;[I)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->k()V

    const v0, 0x7f0c0200

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/r;->b(I)V
    :try_end_bf
    .catchall {:try_start_a3 .. :try_end_bf} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_bf} :catch_c4

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->M()V

    goto/16 :goto_12

    :catch_c4
    move-exception v0

    :try_start_c5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_cd

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->M()V

    goto/16 :goto_12

    :catchall_cd
    move-exception v0

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->M()V

    throw v0
.end method

.method protected b(Lcom/twidroid/model/twitter/c;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/model/twitter/c;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->x:Lcom/twidroid/b/a/b;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->h()V

    :cond_1a
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->b()V

    :cond_1d
    return-void
.end method

.method public b(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Z)V

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/r;->d(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->Z()V

    goto :goto_9

    :cond_10
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->d()V

    goto :goto_9
.end method

.method protected c()V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/d/v;->p(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->w:Lcom/twidroid/d/v;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->l(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->x:Lcom/twidroid/b/a/b;

    const-string v1, "MentionsTimeline"

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->k()V

    goto :goto_6
.end method

.method public d()V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->w()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->w()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c0039

    invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    :cond_28
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->r()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/n;->b()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->c:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->w()Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_4c
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    :goto_53
    return-void

    :cond_54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/r;->c(Z)V

    new-instance v0, Lcom/twidroid/fragments/e/r$1;

    invoke-direct {v0, p0, p0}, Lcom/twidroid/fragments/e/r$1;-><init>(Lcom/twidroid/fragments/e/r;Lcom/twidroid/fragments/e/r;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/r$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto :goto_53
.end method

.method protected d(Lcom/twidroid/model/twitter/c;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->d(Lcom/twidroid/model/twitter/c;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/r;->b(Z)V

    return-void
.end method

.method protected e()V
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Lcom/twidroid/ui/a/am;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/r;->I:Lcom/twidroid/ui/a/am;

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->I:Lcom/twidroid/ui/a/am;

    invoke-virtual {v0, v3}, Lcom/twidroid/ui/a/am;->c(Z)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->I:Lcom/twidroid/ui/a/am;

    iget-object v1, p0, Lcom/twidroid/fragments/e/r;->F:Lcom/twidroid/net/b/f;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->a(Lcom/twidroid/net/b/f;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->I:Lcom/twidroid/ui/a/am;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/r;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected e(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->e(Z)V

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->J:Lcom/twidroid/net/a/c/a/j;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/r;->a(Lcom/twidroid/net/a/c/a/j;)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->J:Lcom/twidroid/net/a/c/a/j;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/r;->b(Lcom/twidroid/net/a/c/a/j;)V

    goto :goto_a
.end method

.method public l()I
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/d/v;->p(Landroid/content/Context;)I

    move-result v0

    goto :goto_7
.end method

.method protected m()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    if-nez v0, :cond_e

    const-string v0, "MentionsFragment"

    const-string v1, "TPOS:: getSaveTimelinePositionTag account is NULL!!!!!!!!!!"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MentionsFragment"

    :goto_d
    return-object v0

    :cond_e
    const-string v0, "MentionsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TPOS:: getSaveTimelinePositionTag is: TAG: MentionsFragment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MentionsFragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/r;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method protected n()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/twidroid/fragments/e/r$3;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/r$3;-><init>(Lcom/twidroid/fragments/e/r;)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/r;->J:Lcom/twidroid/net/a/c/a/j;

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->J:Lcom/twidroid/net/a/c/a/j;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/r;->a(Lcom/twidroid/net/a/c/a/j;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twidroid/fragments/base/e;->onDestroy()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->J:Lcom/twidroid/net/a/c/a/j;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/r;->b(Lcom/twidroid/net/a/c/a/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/fragments/e/r;->J:Lcom/twidroid/net/a/c/a/j;

    return-void
.end method

.method protected p()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected t()Z
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/r;->w:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bZ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public x()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
