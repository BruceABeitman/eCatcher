.class public final Lcom/instagram/android/fragment/ct;
.super Lcom/instagram/android/fragment/a;
.source "MainFeedFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/e/d;
.implements Lcom/instagram/feed/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/a",
        "<",
        "Lcom/instagram/android/feed/a/l;",
        ">;",
        "Lcom/instagram/android/feed/e/d;",
        "Lcom/instagram/feed/e/a;"
    }
.end annotation


# static fields
.field private static final ae:Lcom/instagram/common/u/c/d;

.field private static af:Z

.field private static ag:Z


# instance fields
.field private ah:Z

.field private ai:Z

.field private aj:Ljava/lang/String;

.field private ak:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private al:Lcom/instagram/n/b/a;

.field private am:Lcom/instagram/feed/survey/h;

.field private an:Lcom/instagram/android/feed/e/a;

.field private ao:Lcom/instagram/ui/e/a;

.field private ap:Lcom/instagram/common/c/h;

.field private aq:Landroid/view/View;

.field private ar:Landroid/os/Handler;

.field private as:Lcom/instagram/common/a/a/q;

.field private final at:Lcom/facebook/b/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/instagram/common/u/c/e;->a()Lcom/instagram/common/u/c/e;

    move-result-object v0

    const-string v1, "mainfeed"

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/u/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/u/c/e;->c()Lcom/instagram/common/u/c/d;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/fragment/ct;->ae:Lcom/instagram/common/u/c/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/instagram/android/fragment/a;-><init>()V

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ct;->ah:Z

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ct;->ai:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/ct;->ar:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/fragment/cz;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/cz;-><init>(Lcom/instagram/android/fragment/ct;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ct;->at:Lcom/facebook/b/e;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ct;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->aq:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ct;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ct;->aj:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ct;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ct;->b(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ct;Ljava/io/File;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/fragment/ct;->a(Ljava/io/File;J)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ct;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ct;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ct;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ct;->d(Z)V

    return-void
.end method

.method private a(Ljava/io/File;J)V
    .registers 15

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_8b

    :try_start_7
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v3, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v3, v4, :cond_75

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v3

    if-eqz v3, :cond_75

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "items"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_34
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v4, v5, :cond_54

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_54

    invoke-static {v2}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/l;

    move-result-object v4

    if-eqz v4, :cond_54

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4d

    goto :goto_34

    :catchall_4d
    move-exception v0

    :goto_4e
    if-eqz v1, :cond_53

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_53
    throw v0

    :cond_54
    :try_start_54
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_75

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/instagram/android/fragment/ct;->ar:Landroid/os/Handler;

    new-instance v6, Lcom/instagram/android/fragment/dh;

    invoke-direct {v6, p0, v3}, Lcom/instagram/android/fragment/dh;-><init>(Lcom/instagram/android/fragment/ct;Ljava/util/ArrayList;)V

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1f4

    sub-long v3, v4, p2

    sub-long v3, v9, v3

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_4d

    :cond_75
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->ar:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/fragment/di;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/di;-><init>(Lcom/instagram/android/fragment/ct;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_84
    return-void

    :cond_85
    if-eqz v3, :cond_12

    :try_start_87
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_4d

    goto :goto_12

    :catchall_8b
    move-exception v0

    move-object v1, v2

    goto :goto_4e
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/instagram/android/fragment/ct;->ae:Lcom/instagram/common/u/c/d;

    new-instance v1, Lcom/instagram/android/fragment/dk;

    iget-object v2, p0, Lcom/instagram/android/fragment/ct;->aj:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/instagram/android/fragment/dk;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/d;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ao()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/fragment/ct;->ag:Z

    return-void
.end method

.method private aq()Z
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->aa:Ljava/lang/Long;

    if-eqz v0, :cond_21

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/android/fragment/ct;->aa:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private ar()V
    .registers 5

    const/4 v1, 0x1

    sget-boolean v0, Lcom/instagram/android/fragment/ct;->af:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    sput-boolean v1, Lcom/instagram/android/fragment/ct;->af:Z

    iput-boolean v1, p0, Lcom/instagram/android/fragment/ct;->ac:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/instagram/android/fragment/dg;

    invoke-direct {v3, p0, v0, v1}, Lcom/instagram/android/fragment/dg;-><init>(Lcom/instagram/android/fragment/ct;J)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method private as()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/fragment/ct;->at()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->button_find_friends:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/cx;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/cx;-><init>(Lcom/instagram/android/fragment/ct;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private at()V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->button_find_friends:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-nez v1, :cond_1e

    if-eqz v2, :cond_24

    :cond_1e
    sget v1, Lcom/facebook/az;->find_friends_to_follow:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/share/vkontakte/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_34

    sget v1, Lcom/facebook/az;->find_vkontakte_friends:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_23

    :cond_34
    sget v1, Lcom/facebook/az;->find_facebook_friends:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_23
.end method

.method private au()Lcom/instagram/android/feed/a/l;
    .registers 3

    new-instance v0, Lcom/instagram/android/feed/a/l;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->Y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/l;-><init>(Lcom/instagram/android/fragment/a;I)V

    return-object v0
.end method

.method private static av()Z
    .registers 2

    sget-boolean v0, Lcom/instagram/android/fragment/ct;->ag:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/instagram/android/fragment/ct;->ag:Z

    return v0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/ct;)Lcom/instagram/common/a/a/q;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->as:Lcom/instagram/common/a/a/q;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "MainFeed.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .registers 5

    new-instance v1, Landroid/view/ViewStub;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->n()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/facebook/aw;->nux_main_feed_empty:I

    invoke-direct {v1, v0, v2}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/instagram/android/fragment/cw;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/cw;-><init>(Lcom/instagram/android/fragment/ct;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/fragment/ct;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ct;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Lcom/instagram/android/fragment/fj;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fj;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/ct;)Lcom/instagram/ui/e/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->ao:Lcom/instagram/ui/e/a;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/fragment/ct;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ct;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/instagram/android/fragment/fj;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fj;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/fragment/ct;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/ct;->as()V

    return-void
.end method

.method private d(Z)V
    .registers 3

    invoke-static {}, Lcom/instagram/creation/b/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_12

    if-nez p1, :cond_e

    invoke-direct {p0}, Lcom/instagram/android/fragment/ct;->aq()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ct;->c(Z)V

    :cond_12
    return-void
.end method

.method static synthetic e(Lcom/instagram/android/fragment/ct;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ct;->ai:Z

    return v0
.end method

.method static synthetic f(Lcom/instagram/android/fragment/ct;)Lcom/facebook/b/e;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->at:Lcom/facebook/b/e;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/fragment/ct;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/fragment/ct;->ah:Z

    return v0
.end method

.method static synthetic h(Lcom/instagram/android/fragment/ct;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ct;->ah:Z

    return v0
.end method


# virtual methods
.method public final E()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->E()V

    const-string v0, "%s#%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MainFeedFragment"

    aput-object v2, v1, v3

    const-string v2, "onResume"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/facebook/e/c/k;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->an:Lcom/instagram/android/feed/e/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/a;->b()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->al:Lcom/instagram/n/b/a;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->al:Lcom/instagram/n/b/a;

    invoke-virtual {v0}, Lcom/instagram/n/b/a;->b()V

    :cond_23
    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->am:Lcom/instagram/feed/survey/h;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/h;->a()V

    invoke-direct {p0}, Lcom/instagram/android/fragment/ct;->at()V

    invoke-static {}, Lcom/instagram/android/fragment/ct;->av()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->V()V

    :cond_34
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ct;->ai:Z

    if-eqz v0, :cond_3d

    invoke-direct {p0, v4}, Lcom/instagram/android/fragment/ct;->d(Z)V

    iput-boolean v3, p0, Lcom/instagram/android/fragment/ct;->ai:Z

    :cond_3d
    return-void
.end method

.method public final F()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->F()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/ct;->aq:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->an:Lcom/instagram/android/feed/e/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/a;->a()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->am:Lcom/instagram/feed/survey/h;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/h;->b()V

    return-void
.end method

.method public final G()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->G()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->ar:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected final synthetic X()Lcom/instagram/android/feed/a/a;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/ct;->au()Lcom/instagram/android/feed/a/l;

    move-result-object v0

    return-object v0
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

    new-instance v0, Lcom/instagram/android/fragment/dj;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->ad()Lcom/instagram/feed/f/a;

    move-result-object v4

    sget v5, Lcom/facebook/av;->request_id_main_feed_media_request:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/fragment/dj;-><init>(Lcom/instagram/android/fragment/ct;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    const/4 v0, 0x5

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->ar:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/fragment/cy;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/cy;-><init>(Lcom/instagram/android/fragment/ct;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    :goto_10
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/a;->a(IILandroid/content/Intent;)V

    return-void

    :cond_14
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ct;->at:Lcom/facebook/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    goto :goto_10
.end method

.method public final a(Landroid/content/Context;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->a(Landroid/content/Context;)V

    const-string v0, "%s#%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MainFeedFragment"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "onAttach"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/e/c/k;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/instagram/common/c/j;

    invoke-direct {v0, p1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.BROADCAST_REFRESH_MAIN_FEED"

    new-instance v2, Lcom/instagram/android/fragment/df;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/df;-><init>(Lcom/instagram/android/fragment/ct;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "PendingMediaManager.BROADCAST_INTENT_CHECKPOINT_REQUIRED"

    new-instance v2, Lcom/instagram/android/fragment/de;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/de;-><init>(Lcom/instagram/android/fragment/ct;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "INTENT_ACTION_UPDATE_INBOX_BADGE"

    new-instance v2, Lcom/instagram/android/fragment/dd;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/dd;-><init>(Lcom/instagram/android/fragment/ct;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    new-instance v2, Lcom/instagram/android/fragment/dc;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/dc;-><init>(Lcom/instagram/android/fragment/ct;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ct;->ap:Lcom/instagram/common/c/h;

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->ap:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/instagram/common/a/a/q;

    invoke-direct {v0}, Lcom/instagram/common/a/a/q;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/ct;->as:Lcom/instagram/common/a/a/q;

    invoke-static {}, Lcom/instagram/ui/e/d;->a()Lcom/instagram/ui/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ct;->ao:Lcom/instagram/ui/e/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/l;

    new-instance v1, Lcom/instagram/android/fragment/cv;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/cv;-><init>(Lcom/instagram/android/fragment/ct;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/l;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    new-instance v1, Lcom/instagram/android/feed/e/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->n()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/instagram/creation/b/d/b;->b:I

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/e/e;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/instagram/android/feed/e/a;-><init>(Landroid/content/Context;ILcom/instagram/android/feed/e/e;Lcom/instagram/android/feed/e/d;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/ct;->an:Lcom/instagram/android/feed/e/a;

    const-string v0, "feedFetchStart"

    invoke-static {v0}, Lcom/facebook/e/c/k;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/instagram/android/fragment/ct;->ar()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ct;->c(Z)V

    invoke-static {}, Lcom/instagram/n/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/instagram/n/b/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/n/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ct;->al:Lcom/instagram/n/b/a;

    :cond_4e
    new-instance v0, Lcom/instagram/feed/survey/h;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/instagram/feed/survey/h;-><init>(Landroid/app/Activity;Lcom/instagram/feed/g/a;Lcom/instagram/feed/survey/g;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ct;->am:Lcom/instagram/feed/survey/h;

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/instagram/android/fragment/ct;->ah:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->D()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ct;->b(Landroid/view/ViewGroup;)V

    :cond_10
    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->ao:Lcom/instagram/ui/e/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->D()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "feed_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->i_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->ao:Lcom/instagram/ui/e/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->D()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/instagram/ui/e/b;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/a/a;)V

    sget v0, Lcom/facebook/aw;->action_bar_title_logo:I

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->b(I)Landroid/view/View;

    sget v0, Lcom/facebook/aw;->action_bar_button_inbox:I

    new-instance v1, Lcom/instagram/android/fragment/cu;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/cu;-><init>(Lcom/instagram/android/fragment/ct;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ct;->aq:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->aq:Landroid/view/View;

    invoke-static {v0}, Lcom/instagram/android/directshare/f/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/instagram/feed/f/d;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->as:Lcom/instagram/common/a/a/q;

    new-instance v1, Lcom/instagram/android/c/a/f;

    sget-object v2, Lcom/instagram/android/c/a/g;->a:Lcom/instagram/android/c/a/g;

    invoke-direct {v1, p1, v2}, Lcom/instagram/android/c/a/f;-><init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/q;->a(Lcom/instagram/common/a/a/a;)V

    return-void
.end method

.method public final a(Lcom/instagram/feed/f/d;Lcom/instagram/user/d/a;)V
    .registers 5

    sget-object v0, Lcom/instagram/android/fragment/db;->a:[I

    invoke-virtual {p1}, Lcom/instagram/feed/f/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->as:Lcom/instagram/common/a/a/q;

    new-instance v1, Lcom/instagram/android/feed/b/a/a;

    invoke-direct {v1, p2}, Lcom/instagram/android/feed/b/a/a;-><init>(Lcom/instagram/user/d/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/q;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_b

    nop

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method public final a(Lcom/instagram/feed/f/d;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/instagram/android/fragment/db;->a:[I

    invoke-virtual {p1}, Lcom/instagram/feed/f/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    :goto_b
    return-void

    :pswitch_c
    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_b

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method protected final a(Lcom/instagram/feed/survey/b;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->am:Lcom/instagram/feed/survey/h;

    invoke-virtual {v0, p1}, Lcom/instagram/feed/survey/h;->b(Lcom/instagram/feed/survey/b;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/instagram/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/c/a;->a()V

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

    const-string v1, "timeline"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ab()Z
    .registers 2

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->v()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final ae()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final ai()Lcom/instagram/android/fragment/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/android/fragment/a",
            "<",
            "Lcom/instagram/android/feed/a/l;",
            ">.com/instagram/android/fragment/j;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/android/fragment/da;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/da;-><init>(Lcom/instagram/android/fragment/ct;)V

    return-object v0
.end method

.method public final ap()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->ak:Ljava/util/HashSet;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/ct;->ak:Ljava/util/HashSet;

    :cond_b
    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->ak:Ljava/util/HashSet;

    return-object v0
.end method

.method public final b(Lcom/instagram/feed/f/d;)V
    .registers 5

    sget-object v0, Lcom/instagram/android/fragment/db;->a:[I

    invoke-virtual {p1}, Lcom/instagram/feed/f/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    :goto_b
    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->as:Lcom/instagram/common/a/a/q;

    new-instance v1, Lcom/instagram/android/c/a/f;

    sget-object v2, Lcom/instagram/android/c/a/g;->b:Lcom/instagram/android/c/a/g;

    invoke-direct {v1, p1, v2}, Lcom/instagram/android/c/a/f;-><init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/q;->a(Lcom/instagram/common/a/a/a;)V

    return-void

    :pswitch_18
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/cc;

    invoke-direct {v1}, Lcom/instagram/android/fragment/cc;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_b

    :pswitch_2e
    const-string v0, "market://details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "com.instagram.bolt"

    invoke-static {v0, v1}, Lcom/instagram/common/u/d/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ct;->a(Landroid/content/Intent;)V

    goto :goto_b

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_2e
    .end packed-switch
.end method

.method public final c(Lcom/instagram/feed/f/d;)V
    .registers 5

    sget-object v0, Lcom/instagram/android/fragment/db;->a:[I

    invoke-virtual {p1}, Lcom/instagram/feed/f/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    :goto_b
    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->as:Lcom/instagram/common/a/a/q;

    new-instance v1, Lcom/instagram/android/c/a/f;

    sget-object v2, Lcom/instagram/android/c/a/g;->c:Lcom/instagram/android/c/a/g;

    invoke-direct {v1, p1, v2}, Lcom/instagram/android/c/a/f;-><init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/q;->a(Lcom/instagram/common/a/a/a;)V

    return-void

    :pswitch_18
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/l;

    invoke-virtual {v0, p1}, Lcom/instagram/android/feed/a/l;->a(Lcom/instagram/feed/f/d;)V

    goto :goto_b

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public final e()Z
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->y()Landroid/support/v4/app/an;

    move-result-object v0

    sget v1, Lcom/facebook/av;->request_id_main_feed_media_request:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->b(I)Landroid/support/v4/a/c;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/support/v4/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "feed_timeline"

    return-object v0
.end method

.method public final j_()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->j_()V

    return-void
.end method

.method public final k_()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->k_()V

    return-void
.end method

.method public final l_()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->l_()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->ao:Lcom/instagram/ui/e/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ct;->D()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public final m_()V
    .registers 1

    invoke-static {}, Lcom/instagram/android/fragment/ct;->av()Z

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->m_()V

    return-void
.end method

.method public final n_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final p_()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->p_()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ct;->ap:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V

    return-void
.end method
