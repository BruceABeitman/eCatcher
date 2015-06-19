.class public final Lcom/instagram/android/feed/a/a/u;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v4/app/s;

.field private final d:Landroid/support/v4/app/an;

.field private final e:Lcom/instagram/feed/g/a;

.field private final f:Lcom/instagram/android/feed/a/a;

.field private final g:Landroid/view/View;

.field private final h:Lcom/instagram/feed/d/l;

.field private final i:I

.field private final j:Lcom/instagram/common/a/a/m;

.field private k:Landroid/app/Dialog;

.field private l:[Ljava/lang/CharSequence;

.field private final m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/android/feed/a/a;Landroid/view/View;Lcom/instagram/feed/d/l;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/instagram/common/a/a/q;

    invoke-direct {v0}, Lcom/instagram/common/a/a/q;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/u;->j:Lcom/instagram/common/a/a/m;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/u;->l:[Ljava/lang/CharSequence;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/u;->m:Landroid/os/Handler;

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/u;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/u;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/u;->c:Landroid/support/v4/app/s;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->y()Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/u;->d:Landroid/support/v4/app/an;

    iput-object p2, p0, Lcom/instagram/android/feed/a/a/u;->e:Lcom/instagram/feed/g/a;

    iput-object p3, p0, Lcom/instagram/android/feed/a/a/u;->f:Lcom/instagram/android/feed/a/a;

    iput-object p5, p0, Lcom/instagram/android/feed/a/a/u;->h:Lcom/instagram/feed/d/l;

    iput-object p4, p0, Lcom/instagram/android/feed/a/a/u;->g:Landroid/view/View;

    iput p6, p0, Lcom/instagram/android/feed/a/a/u;->i:I

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/u;)Landroid/app/Dialog;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/u;->k:Landroid/app/Dialog;

    return-object v0
.end method

.method private b()[Ljava/lang/CharSequence;
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->l:[Ljava/lang/CharSequence;

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/u;->h:Lcom/instagram/feed/d/l;

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/u;->e:Lcom/instagram/feed/g/a;

    invoke-static {v2, v3}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v2

    if-eqz v2, :cond_3b

    sget v2, Lcom/facebook/az;->starred_hide_this:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Lcom/facebook/az;->learn_more:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/u;->l:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->l:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_38
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->l:[Ljava/lang/CharSequence;

    return-object v0

    :cond_3b
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/u;->c()Z

    move-result v3

    if-eqz v3, :cond_a1

    sget v3, Lcom/facebook/az;->share:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v3, Lcom/facebook/az;->delete_media:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/u;->h:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->v()Lcom/instagram/model/a/a;

    move-result-object v3

    sget-object v4, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v3, v4, :cond_6e

    sget v3, Lcom/facebook/az;->add_people:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    :goto_6e
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/u;->c()Z

    move-result v3

    if-nez v3, :cond_82

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/u;->h:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;

    move-result-object v3

    sget-object v4, Lcom/instagram/user/c/e;->b:Lcom/instagram/user/c/e;

    if-ne v3, v4, :cond_8b

    :cond_82
    sget v3, Lcom/facebook/az;->copy_share_url:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/u;->c()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->h()Z

    move-result v2

    if-eqz v2, :cond_2b

    sget v2, Lcom/facebook/az;->flag_reason_remove_from_popular:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_a1
    sget v3, Lcom/facebook/az;->report_inappropriate:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/u;->h:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->V()Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/u;->h:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->U()Lcom/instagram/model/people/b;

    move-result-object v3

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/instagram/model/people/b;->a(Lcom/instagram/user/c/a;)Z

    move-result v3

    if-eqz v3, :cond_6e

    sget v3, Lcom/facebook/az;->photo_options:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/a/u;)[Ljava/lang/CharSequence;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/u;->b()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()Z
    .registers 3

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/u;->h:Lcom/instagram/feed/d/l;

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method static synthetic d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->h:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->h:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->v()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_17

    sget v0, Lcom/facebook/az;->share_url_has_been_copied:I

    :goto_c
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/u;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_17
    sget v0, Lcom/facebook/az;->video_share_url_has_been_copied:I

    goto :goto_c
.end method

.method static synthetic e(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/common/a/a/m;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->j:Lcom/instagram/common/a/a/m;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/feed/a/a/u;)Landroid/support/v4/app/s;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->c:Landroid/support/v4/app/s;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/feed/a/a/u;)I
    .registers 2

    iget v0, p0, Lcom/instagram/android/feed/a/a/u;->i:I

    return v0
.end method

.method static synthetic h(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/g/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->e:Lcom/instagram/feed/g/a;

    return-object v0
.end method

.method static synthetic i(Lcom/instagram/android/feed/a/a/u;)Landroid/support/v4/app/an;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->d:Landroid/support/v4/app/an;

    return-object v0
.end method

.method static synthetic j(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/android/feed/a/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->f:Lcom/instagram/android/feed/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/android/feed/a/a/u;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/instagram/android/feed/a/a/u;)Landroid/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->a:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic m(Lcom/instagram/android/feed/a/a/u;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lcom/instagram/android/feed/a/a/u;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/u;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    const-string v0, "action_menu"

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/u;->h:Lcom/instagram/feed/d/l;

    iget v2, p0, Lcom/instagram/android/feed/a/a/u;->i:I

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/u;->e:Lcom/instagram/feed/g/a;

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/u;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/u;->b()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/feed/a/a/x;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/feed/a/a/x;-><init>(Lcom/instagram/android/feed/a/a/u;B)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/u;->k:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->k:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/android/feed/a/a/v;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/v;-><init>(Lcom/instagram/android/feed/a/a/u;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
