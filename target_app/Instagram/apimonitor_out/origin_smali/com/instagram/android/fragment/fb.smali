.class public Lcom/instagram/android/fragment/fb;
.super Lcom/instagram/android/fragment/a;
.source "UserDetailFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/a/b/aq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/a",
        "<",
        "Lcom/instagram/android/feed/a/n;",
        ">;",
        "Lcom/instagram/android/feed/a/b/aq;"
    }
.end annotation


# instance fields
.field protected ae:Lcom/instagram/user/c/a;

.field private final af:Lcom/instagram/android/fragment/fg;

.field private ag:Lcom/instagram/android/feed/c/a;

.field private ah:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private aj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Lcom/instagram/android/c/a/v;

.field private al:I

.field private am:Z

.field private an:Z

.field private ao:Lcom/instagram/user/follow/h;

.field private final ap:Lcom/instagram/common/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/h/e",
            "<",
            "Lcom/instagram/user/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private aq:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/fragment/a;-><init>()V

    new-instance v0, Lcom/instagram/android/fragment/fg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/fg;-><init>(Lcom/instagram/android/fragment/fb;B)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fb;->af:Lcom/instagram/android/fragment/fg;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/fb;->aj:Ljava/util/List;

    new-instance v0, Lcom/instagram/android/fragment/fc;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/fc;-><init>(Lcom/instagram/android/fragment/fb;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fb;->ap:Lcom/instagram/common/h/e;

    new-instance v0, Lcom/instagram/android/fragment/fe;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/fe;-><init>(Lcom/instagram/android/fragment/fb;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fb;->aq:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/fb;I)I
    .registers 2

    iput p1, p0, Lcom/instagram/android/fragment/fb;->al:I

    return p1
.end method

.method static synthetic a(Lcom/instagram/android/fragment/fb;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fb;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_26

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {p1}, Lcom/instagram/user/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->aw()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "PendingMediaManager.BROADCAST_INTENT_NEW_MEDIA"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/fragment/fb;->af:Lcom/instagram/android/fragment/fg;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->aj:Ljava/util/List;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/user/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_31
.end method

.method static synthetic a(Lcom/instagram/android/fragment/fb;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/fb;->am:Z

    return v0
.end method

.method private at()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->aw()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->aj:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;

    invoke-static {v1}, Lcom/instagram/android/j/b;->a(Lcom/instagram/user/c/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    iget-object v1, p0, Lcom/instagram/android/fragment/fb;->aj:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Ljava/util/List;)V

    goto :goto_9
.end method

.method private au()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->ai:Ljava/lang/String;

    goto :goto_a
.end method

.method private av()Lcom/instagram/android/feed/a/n;
    .registers 4

    new-instance v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->Y()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/fragment/fb;->ao:Lcom/instagram/user/follow/h;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/instagram/android/feed/a/n;-><init>(Lcom/instagram/android/fragment/a;ILcom/instagram/user/follow/h;Lcom/instagram/android/feed/a/b/aq;)V

    return-object v0
.end method

.method private aw()Z
    .registers 3

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private ax()V
    .registers 4

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->as()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/fb;->aq:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/fragment/fb;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->au()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/fragment/fb;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->at()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/fragment/fb;)I
    .registers 2

    iget v0, p0, Lcom/instagram/android/fragment/fb;->al:I

    return v0
.end method

.method static synthetic e(Lcom/instagram/android/fragment/fb;)Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->aw()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/instagram/android/fragment/fb;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->ax()V

    return-void
.end method

.method static synthetic g(Lcom/instagram/android/fragment/fb;)Lcom/instagram/android/feed/c/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->ag:Lcom/instagram/android/feed/c/a;

    return-object v0
.end method


# virtual methods
.method public E()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->E()V

    iget v0, p0, Lcom/instagram/android/fragment/fb;->al:I

    sget v1, Lcom/instagram/api/j/k;->d:I

    if-eq v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/instagram/android/fragment/fb;->am:Z

    if-eqz v0, :cond_13

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/fb;->am:Z

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->ar()V

    :cond_13
    return-void
.end method

.method public G()V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/fb;->af:Lcom/instagram/android/fragment/fg;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/f;

    iget-object v2, p0, Lcom/instagram/android/fragment/fb;->ap:Lcom/instagram/common/h/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;

    invoke-super {p0}, Lcom/instagram/android/fragment/a;->G()V

    return-void
.end method

.method protected final synthetic X()Lcom/instagram/android/feed/a/a;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->av()Lcom/instagram/android/feed/a/n;

    move-result-object v0

    return-object v0
.end method

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

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;

    move-result-object v6

    if-nez v6, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/instagram/feed/a/e;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->ad()Lcom/instagram/feed/f/a;

    move-result-object v3

    invoke-virtual {v6}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/instagram/feed/a/e;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;Lcom/instagram/user/c/a;)V

    goto :goto_7
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/instagram/android/feed/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->y()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/feed/c/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fb;->ag:Lcom/instagram/android/feed/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserDetailFragment.EXTRA_SHOW_USER_REQUEST_ROW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/fb;->an:Z

    :cond_25
    sget-object v0, Lcom/instagram/l/c;->d:Lcom/instagram/l/a;

    invoke-virtual {v0}, Lcom/instagram/l/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    :goto_2f
    iput-object v0, p0, Lcom/instagram/android/fragment/fb;->ao:Lcom/instagram/user/follow/h;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->ap()V

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->at()V

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->au()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/fb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/f;

    iget-object v2, p0, Lcom/instagram/android/fragment/fb;->ap:Lcom/instagram/common/h/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->ar()V

    return-void

    :cond_4d
    sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    goto :goto_2f
.end method

.method public a(Lcom/instagram/a/a;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/a/a;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->b(Z)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/UrlHandlerActivity;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V

    :cond_13
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/instagram/a/a;->a(Ljava/lang/String;)V

    :cond_20
    :goto_20
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    if-eqz v1, :cond_36

    if-eqz v0, :cond_36

    sget-object v0, Lcom/instagram/a/j;->b:Lcom/instagram/a/j;

    new-instance v1, Lcom/instagram/android/fragment/fd;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/fd;-><init>(Lcom/instagram/android/fragment/fb;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;

    :cond_36
    return-void

    :cond_37
    iget-object v1, p0, Lcom/instagram/android/fragment/fb;->ak:Lcom/instagram/android/c/a/v;

    invoke-virtual {v1}, Lcom/instagram/android/c/a/v;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/instagram/android/fragment/fb;->ak:Lcom/instagram/android/c/a/v;

    invoke-virtual {v1}, Lcom/instagram/android/c/a/v;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/instagram/a/a;->a(Ljava/lang/String;)V

    goto :goto_20
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

    const-string v1, "profile"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ai()Lcom/instagram/android/fragment/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/android/fragment/a",
            "<",
            "Lcom/instagram/android/feed/a/n;",
            ">.com/instagram/android/fragment/j;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/android/fragment/fh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/fh;-><init>(Lcom/instagram/android/fragment/fb;B)V

    return-object v0
.end method

.method public final an()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected ao()V
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/n;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->u()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/e;->c()V

    :cond_16
    return-void
.end method

.method protected ap()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/fb;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/fb;->ai:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;

    :goto_20
    return-void

    :cond_21
    const-string v1, "UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/fb;->ah:Ljava/lang/String;

    invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/fb;->ah:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instagram/user/c/h;->b(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;

    goto :goto_20

    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "User Detail Fragment started without user id or username"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final aq()Lcom/instagram/user/c/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final ar()V
    .registers 7

    new-instance v0, Lcom/instagram/android/c/a/v;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->y()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v3

    new-instance v4, Lcom/instagram/android/fragment/fi;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/instagram/android/fragment/fi;-><init>(Lcom/instagram/android/fragment/fb;B)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/v;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fb;->ak:Lcom/instagram/android/c/a/v;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->ak:Lcom/instagram/android/c/a/v;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/a/v;->a(Ljava/lang/String;)V

    :cond_31
    :goto_31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/fb;->c(Z)V

    return-void

    :cond_36
    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->au()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->ak:Lcom/instagram/android/c/a/v;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/a/v;->a(Ljava/lang/String;)V

    goto :goto_31

    :cond_4c
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->ah:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->ak:Lcom/instagram/android/c/a/v;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/c/a/v;->b(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public final as()[Ljava/lang/CharSequence;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->o()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/feed/c/a;->a(Lcom/instagram/user/c/a;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/facebook/az;->report_inappropriate:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/fb;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/facebook/az;->copy_profile_url:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/fb;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->w()Z

    move-result v1

    if-eqz v1, :cond_37

    sget v1, Lcom/facebook/az;->directshare_receive_direct_posts:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/fb;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->h()Z

    move-result v1

    if-eqz v1, :cond_4e

    sget v1, Lcom/facebook/az;->suggest_user:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/fb;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public final e()Z
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->u()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->au()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    move-object v0, v3

    :goto_11
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/support/v4/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_42

    move v0, v1

    :goto_1a
    iget-object v4, p0, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;

    if-nez v4, :cond_55

    iget-object v4, p0, Lcom/instagram/android/fragment/fb;->ak:Lcom/instagram/android/c/a/v;

    if-nez v4, :cond_44

    :goto_22
    if-eqz v3, :cond_53

    invoke-virtual {v3}, Landroid/support/v4/a/c;->h()Z

    move-result v3

    if-eqz v3, :cond_53

    move v3, v1

    :goto_2b
    if-nez v3, :cond_2f

    if-eqz v0, :cond_9

    :cond_2f
    move v2, v1

    goto :goto_9

    :cond_31
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->y()Landroid/support/v4/app/an;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->au()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/an;->b(I)Landroid/support/v4/a/c;

    move-result-object v0

    goto :goto_11

    :cond_42
    move v0, v2

    goto :goto_1a

    :cond_44
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->y()Landroid/support/v4/app/an;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/fragment/fb;->ak:Lcom/instagram/android/c/a/v;

    invoke-virtual {v4}, Lcom/instagram/android/c/a/v;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/an;->b(I)Landroid/support/v4/a/c;

    move-result-object v3

    goto :goto_22

    :cond_53
    move v3, v2

    goto :goto_2b

    :cond_55
    move v3, v2

    goto :goto_2b
.end method

.method public final h()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;

    invoke-static {v0}, Lcom/instagram/user/a/a;->b(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    :cond_10
    invoke-super {p0}, Lcom/instagram/android/fragment/a;->h()Z

    move-result v0

    goto :goto_d
.end method

.method public i_()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->aw()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "self_profile"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "profile"

    goto :goto_8
.end method

.method public final r_()V
    .registers 4

    invoke-static {}, Lcom/instagram/n/f/d;->a()Lcom/instagram/n/f/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fb;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;->au()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/c;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final s_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/fragment/fb;->an:Z

    return v0
.end method
