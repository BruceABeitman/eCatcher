.class public Lcom/twidroid/fragments/e/b;
.super Lcom/twidroid/fragments/base/b;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/ui/widgets/d;


# static fields
.field public static final a:Ljava/lang/String; = "FacebookNewsfeed"

.field public static final b:I = 0x3e9

.field public static final c:I = 0x3

.field private static final d:Ljava/lang/String; = "FacebookNewsfeedFragment"

.field private static final e:Ljava/lang/String; = "lastSeenPostId"

.field private static final f:J = -0x2L


# instance fields
.field private g:Lcom/twidroid/net/a/a/c;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/Button;

.field private k:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/ubermedia/a/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/base/b;-><init>()V

    const-string v0, "25"

    iput-object v0, p0, Lcom/twidroid/fragments/e/b;->n:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/b;->setRetainInstance(Z)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/b;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/b;->o()V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/b;Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/b;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/twidroid/ui/a/n;)V
    .registers 5

    invoke-virtual {p1}, Lcom/twidroid/ui/a/n;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->w:Lcom/twidroid/d/v;

    const-string v1, "lastSeenPostId"

    invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p1, v1}, Lcom/twidroid/ui/a/n;->b(Ljava/lang/String;)I

    move-result v0

    :cond_1a
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_6
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 9

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_11
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->N()V

    :cond_14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "paramRequestString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "summary"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_45

    iget-object v1, p0, Lcom/twidroid/fragments/e/b;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "limit"

    iget-object v2, p0, Lcom/twidroid/fragments/e/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    iget-object v1, p0, Lcom/twidroid/fragments/e/b;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "until"

    iget-object v2, p0, Lcom/twidroid/fragments/e/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/twidroid/net/a/a/c;->b(Landroid/content/Context;)Lcom/twidroid/net/a/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/fragments/e/b;->p:Lcom/ubermedia/a/a;

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/twidroid/fragments/e/b;->p:Lcom/ubermedia/a/a;

    invoke-virtual {v3}, Lcom/ubermedia/a/a;->g()Lcom/ubermedia/a/e;

    move-result-object v3

    sget-object v4, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v3, v4, :cond_64

    iget-object v3, p0, Lcom/twidroid/fragments/e/b;->p:Lcom/ubermedia/a/a;

    invoke-virtual {v3, v5}, Lcom/ubermedia/a/a;->b(Z)Z

    :cond_64
    if-nez v2, :cond_7d

    invoke-direct {p0}, Lcom/twidroid/fragments/e/b;->n()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->p:Lcom/ubermedia/a/a;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->p:Lcom/ubermedia/a/a;

    invoke-virtual {v0}, Lcom/ubermedia/a/a;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v0, v1, :cond_7c

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->p:Lcom/ubermedia/a/a;

    invoke-virtual {v0, v5}, Lcom/ubermedia/a/a;->b(Z)Z

    :cond_7c
    :goto_7c
    return-void

    :cond_7d
    new-instance v3, Lcom/twidroid/net/c;

    invoke-virtual {v2}, Lcom/twidroid/net/a/a/c;->a()Lcom/facebook/a/e;

    move-result-object v2

    new-instance v4, Lcom/twidroid/fragments/e/b$3;

    invoke-direct {v4, p0, p2, v1}, Lcom/twidroid/fragments/e/b$3;-><init>(Lcom/twidroid/fragments/e/b;ZLandroid/support/v4/app/FragmentActivity;)V

    invoke-direct {v3, p0, v2, v5, v4}, Lcom/twidroid/net/c;-><init>(Lcom/twidroid/fragments/base/o;Lcom/facebook/a/e;ILcom/twidroid/net/i;)V

    new-array v1, v5, [Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Lcom/twidroid/net/c;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/e/b;->p:Lcom/ubermedia/a/a;

    goto :goto_7c
.end method

.method private a(Z)V
    .registers 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->j:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15
.end method

.method static synthetic b(Lcom/twidroid/fragments/e/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/b;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/twidroid/fragments/e/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/b;->n()V

    return-void
.end method

.method private b(Lcom/twidroid/model/facebook/FacebookNewsModel;)V
    .registers 5

    const v2, 0x7f0900ec

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2c

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twidroid/SingleFacebookViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_FACEBOOK_POST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :cond_2c
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/twidroid/fragments/d;

    invoke-direct {v1}, Lcom/twidroid/fragments/d;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {v1, p0, p1}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/e/b;Lcom/twidroid/model/facebook/FacebookNewsModel;)V

    goto :goto_9
.end method

.method static synthetic c(Lcom/twidroid/fragments/e/b;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic d(Lcom/twidroid/fragments/e/b;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->j:Landroid/widget/Button;

    new-instance v1, Lcom/twidroid/fragments/e/b$1;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/b$1;-><init>(Lcom/twidroid/fragments/e/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n()V
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/twidroid/net/a/a/c;->b(Landroid/content/Context;)Lcom/twidroid/net/a/a/c;

    move-result-object v3

    iput-object v3, p0, Lcom/twidroid/fragments/e/b;->g:Lcom/twidroid/net/a/a/c;

    iget-object v3, p0, Lcom/twidroid/fragments/e/b;->g:Lcom/twidroid/net/a/a/c;

    if-eqz v3, :cond_99

    move v3, v1

    :goto_23
    if-nez v3, :cond_9b

    :goto_25
    invoke-direct {p0, v1}, Lcom/twidroid/fragments/e/b;->a(Z)V

    if-eqz v3, :cond_9

    iget-object v1, p0, Lcom/twidroid/fragments/e/b;->g:Lcom/twidroid/net/a/a/c;

    invoke-virtual {v1}, Lcom/twidroid/net/a/a/c;->a()Lcom/facebook/a/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lcom/facebook/a/e;->b(Landroid/content/Context;Lcom/facebook/a/g;)Z

    iget-object v1, p0, Lcom/twidroid/fragments/e/b;->x:Lcom/twidroid/b/a/b;

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->F()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a0

    new-instance v3, Lcom/twidroid/ui/a/n;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v1, v0, p0}, Lcom/twidroid/ui/a/n;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/twidroid/UberSocialApplication;Lcom/twidroid/ui/widgets/d;)V

    invoke-virtual {p0, v3}, Lcom/twidroid/fragments/e/b;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->g()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/e/b;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->x:Lcom/twidroid/b/a/b;

    const-string v3, "FacebookNewsfeed"

    const-wide/16 v4, -0x2

    invoke-virtual {v0, v3, v4, v5}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;J)Lcom/twidroid/fragments/base/TimelineState;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/twidroid/fragments/base/TimelineState;->b()J

    move-result-wide v4

    :goto_78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->g()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_9d

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v3}, Lcom/twidroid/fragments/base/TimelineState;->d()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_9

    :cond_99
    move v3, v2

    goto :goto_23

    :cond_9b
    move v1, v2

    goto :goto_25

    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_a0
    invoke-virtual {p0, v4}, Lcom/twidroid/fragments/e/b;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->d()V

    goto/16 :goto_9
.end method

.method private o()V
    .registers 6

    new-instance v0, Lcom/facebook/a/e;

    const-string v1, "149588628439275"

    invoke-direct {v0, v1}, Lcom/facebook/a/e;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/twidroid/net/a/a/c;->a(Lcom/facebook/a/e;)V

    iget-object v1, p0, Lcom/twidroid/fragments/e/b;->j:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->N()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twidroid/y;->r:[Ljava/lang/String;

    const/4 v3, -0x1

    new-instance v4, Lcom/twidroid/fragments/e/b$2;

    invoke-direct {v4, p0, v0}, Lcom/twidroid/fragments/e/b$2;-><init>(Lcom/twidroid/fragments/e/b;Lcom/facebook/a/e;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/a/e;->a(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/a/f;)V

    return-void
.end method

.method private p()V
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/n;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/twidroid/ui/a/n;->getCount()I

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-gez v1, :cond_34

    const/4 v1, 0x0

    :cond_34
    if-le v1, v2, :cond_38

    add-int/lit8 v1, v2, -0x1

    :cond_38
    iget-object v2, p0, Lcom/twidroid/fragments/e/b;->w:Lcom/twidroid/d/v;

    const-string v3, "lastSeenPostId"

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/n;->a(I)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/twidroid/d/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method


# virtual methods
.method public S()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->u:Lcom/twidroid/net/c/a/f;

    const v1, 0x7f0c0121

    invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twidroid/model/facebook/FacebookNewsModel;)V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/n;

    iget-object v1, p0, Lcom/twidroid/fragments/e/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/n;->a(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a(Lcom/twidroid/model/facebook/FacebookNewsModel;)V

    invoke-virtual {v0}, Lcom/twidroid/ui/a/n;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/twidroid/ui/widgets/CachedImageView;)V
    .registers 2

    return-void
.end method

.method protected b()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/b;->n()V

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/twidroid/model/facebook/FacebookNewsModel;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {p1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/e/b;->k:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/b;->b(Lcom/twidroid/model/facebook/FacebookNewsModel;)V

    :cond_f
    return-void
.end method

.method public b(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->b(Z)V

    if-eqz p1, :cond_c

    const-string v0, "me/home"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twidroid/fragments/e/b;->a(Ljava/lang/String;Z)V

    :goto_b
    return-void

    :cond_c
    const-string v0, "me/home"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twidroid/fragments/e/b;->a(Ljava/lang/String;Z)V

    goto :goto_b
.end method

.method protected c(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/twidroid/model/facebook/FacebookNewsModel;

    if-eqz v0, :cond_4

    :cond_4
    return-void
.end method

.method public d()V
    .registers 3

    const-string v0, "me/home"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twidroid/fragments/e/b;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method protected f()V
    .registers 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-eqz v0, :cond_4e

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_4e

    if-ltz v2, :cond_4e

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->g()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x2

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    const-string v0, "FacebookNewsfeedFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "yPos = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->x:Lcom/twidroid/b/a/b;

    const-string v1, "FacebookNewsfeed"

    invoke-virtual/range {v0 .. v8}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;JJJI)V

    :cond_4e
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/twidroid/fragments/base/b;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {}, Lcom/twidroid/net/a/a/c;->d()Lcom/facebook/a/e;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "FacebookNewsfeedFragment"

    const-string v2, "Facebook authorizeCallback"

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/e;->a(IILandroid/content/Intent;)V

    :cond_13
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    const v2, 0x7f0c01b4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-interface {p1, v0, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020116

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_15
    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/b;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const/4 v4, -0x1

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0900ba

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twidroid/fragments/e/b;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->q()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0900bb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twidroid/fragments/e/b;->j:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/twidroid/fragments/e/b;->m()V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/twidroid/fragments/e/b;->i:Landroid/view/View;

    invoke-super {p0, p1, p2, p3}, Lcom/twidroid/fragments/base/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/twidroid/fragments/e/b;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/twidroid/fragments/e/b;->h:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Lcom/twidroid/fragments/base/b;->onDestroy()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->w:Lcom/twidroid/d/v;

    const-string v1, "lastSeenPostId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/d/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FacebookNewsfeedFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0c01b4

    if-ne v1, v2, :cond_1a

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/a;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v1

    if-nez v1, :cond_11

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    const/4 v0, 0x1

    goto :goto_10

    :cond_1a
    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_10
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/twidroid/fragments/base/b;->onPause()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->f()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/twidroid/fragments/base/b;->onResume()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "FacebookNewsfeedFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/twidroid/fragments/base/b;->onStop()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->p:Lcom/ubermedia/a/a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->p:Lcom/ubermedia/a/a;

    invoke-virtual {v0}, Lcom/ubermedia/a/a;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/twidroid/fragments/e/b;->p:Lcom/ubermedia/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ubermedia/a/a;->b(Z)Z

    :cond_17
    invoke-direct {p0}, Lcom/twidroid/fragments/e/b;->p()V

    const-string v0, "FacebookNewsfeedFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c0202

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/b;->b(I)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/b;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    const v1, 0x7f0c0216

    invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/b;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/g;->g:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/g;)V

    return-void
.end method
