.class Lcom/twidroid/fragments/p;
.super Lcom/twidroid/fragments/g;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "is_me"

.field private static final f:Ljava/lang/String; = "user"

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/twidroid/fragments/p;->g:Z

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/fragments/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/g;-><init>(Lcom/twidroid/fragments/f;)V

    return-void
.end method

.method private a(Lcom/twidroid/model/twitter/Tweet;)Lcom/twidroid/model/twitter/User;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p1, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    if-nez v0, :cond_f

    iget-object v0, p1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twidroid/fragments/p;->b(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v0

    goto :goto_3

    :cond_f
    iget-object v0, p1, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    goto :goto_3
.end method

.method private b(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
    .registers 5

    iget-object v0, p0, Lcom/twidroid/fragments/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/f;

    invoke-static {v0}, Lcom/twidroid/fragments/f;->z(Lcom/twidroid/fragments/f;)Lcom/twidroid/e/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/e/b;->a(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/twidroid/fragments/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/f;

    invoke-static {v0}, Lcom/twidroid/fragments/f;->A(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1, p1, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/User;

    move-result-object v1

    iget-object v0, p0, Lcom/twidroid/fragments/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/f;

    invoke-static {v0}, Lcom/twidroid/fragments/f;->z(Lcom/twidroid/fragments/f;)Lcom/twidroid/e/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twidroid/e/b;->a(Lcom/twidroid/model/twitter/User;)V

    move-object v0, v1

    :cond_49
    return-object v0
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/model/twitter/Tweet;)Landroid/os/Bundle;
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    :try_start_8
    sget-boolean v2, Lcom/twidroid/fragments/p;->g:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a} :catch_39

    if-eqz v2, :cond_f

    :try_start_c
    invoke-static {v1}, Lcom/twidroid/fragments/f;->e(Lcom/twidroid/model/twitter/Tweet;)V
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_f} :catch_34
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_39

    :cond_f
    :goto_f
    :try_start_f
    invoke-direct {p0, v1}, Lcom/twidroid/fragments/p;->a(Lcom/twidroid/model/twitter/Tweet;)Lcom/twidroid/model/twitter/User;

    move-result-object v2

    iput-object v2, v1, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    invoke-virtual {p0, v2}, Lcom/twidroid/fragments/p;->a(Lcom/twidroid/model/twitter/User;)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v0, v1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    iget-wide v4, v1, Lcom/twidroid/model/twitter/User;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/fragments/p;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_29
    const-string v1, "is_me"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "user"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_33
    return-object v0

    :catch_34
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_38} :catch_39

    goto :goto_f

    :catch_39
    move-exception v0

    move-object v2, v0

    iget-object v0, p0, Lcom/twidroid/fragments/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/twidroid/fragments/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/f;

    invoke-virtual {v1}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_33
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/p;->a([Lcom/twidroid/model/twitter/Tweet;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/f;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/p;->a(Lcom/twidroid/fragments/f;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/f;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/p;->a(Lcom/twidroid/fragments/f;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/f;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/fragments/g;->a(Lcom/twidroid/fragments/base/o;)V

    invoke-static {p1}, Lcom/twidroid/fragments/f;->v(Lcom/twidroid/fragments/f;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->b()V

    if-eqz p1, :cond_30

    invoke-static {p1}, Lcom/twidroid/fragments/f;->w(Lcom/twidroid/fragments/f;)Lcom/twidroid/d/v;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {p1}, Lcom/twidroid/fragments/f;->x(Lcom/twidroid/fragments/f;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->D()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_1c
    sput-boolean v0, Lcom/twidroid/fragments/p;->g:Z

    invoke-static {p1}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/fragments/f;->d(Lcom/twidroid/model/twitter/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-boolean v0, Lcom/twidroid/fragments/p;->g:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->N()V

    :cond_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected a(Lcom/twidroid/fragments/f;Landroid/os/Bundle;)V
    .registers 5

    sget-boolean v0, Lcom/twidroid/fragments/p;->g:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->M()V

    invoke-static {p1}, Lcom/twidroid/fragments/f;->y(Lcom/twidroid/fragments/f;)V

    :cond_a
    if-eqz p2, :cond_43

    const-string v0, "is_me"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/twidroid/fragments/f;->c:Z

    const-string v0, "user"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    invoke-static {p1, v0}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;Lcom/twidroid/model/twitter/User;)Lcom/twidroid/model/twitter/User;

    const-string v0, "is_blocked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;Z)Z

    const-string v0, "is_following"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/twidroid/fragments/f;->b(Lcom/twidroid/fragments/f;I)I

    invoke-static {p1}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v1

    const-string v0, "user"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iput-object v0, v1, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->p()V

    :cond_43
    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    return-void
.end method

.method public a(Lcom/twidroid/model/twitter/User;)Z
    .registers 9

    const/4 v1, 0x0

    const-string v0, "SingleTweetFragment"

    const-string v2, "Detecting acounts"

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_c

    move v0, v1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/twidroid/fragments/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/f;

    invoke-static {v0}, Lcom/twidroid/fragments/f;->B(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/twidroid/model/twitter/User;->b:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    iget-object v1, p0, Lcom/twidroid/fragments/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/f;

    invoke-static {v1}, Lcom/twidroid/fragments/f;->C(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;

    const/4 v0, 0x1

    goto :goto_b

    :cond_4b
    move v0, v1

    goto :goto_b
.end method
