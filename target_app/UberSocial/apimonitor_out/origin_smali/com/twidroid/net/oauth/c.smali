.class Lcom/twidroid/net/oauth/c;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/net/oauth/RequestTokenActivity;


# direct methods
.method private constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/oauth/c;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity;Lcom/twidroid/net/oauth/RequestTokenActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/net/oauth/c;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;
    .registers 8

    const/4 v2, 0x0

    array-length v0, p1

    if-lez v0, :cond_4f

    const/4 v0, 0x0

    aget-object v0, p1, v0

    move-object v1, v0

    :goto_8
    if-eqz v1, :cond_53

    :try_start_a
    new-instance v0, Lcom/twidroid/net/a/c/c;

    new-instance v3, Lcom/twidroid/net/oauth/a;

    iget-object v4, p0, Lcom/twidroid/net/oauth/c;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-virtual {v4}, Lcom/twidroid/net/oauth/RequestTokenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/twidroid/net/oauth/c;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    iget-object v4, v4, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/d/v;->al()Z

    move-result v4

    iget-object v5, p0, Lcom/twidroid/net/oauth/c;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    iget-object v5, v5, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v5}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twidroid/d/v;->am()Z

    move-result v5

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/twidroid/net/a/c/c;-><init>(Lcom/twidroid/model/twitter/c;Lcom/ubermedia/net/b/c;ZZ)V

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->p()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/twitter/c;->a(Z)V

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/model/twitter/c;->f(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4e} :catch_55

    :goto_4e
    return-object v1

    :cond_4f
    move-object v1, v2

    goto :goto_8

    :cond_51
    move-object v1, v2

    goto :goto_4e

    :cond_53
    move-object v1, v2

    goto :goto_4e

    :catch_55
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/twidroid/model/twitter/c;->a(Z)V

    iget-object v0, p0, Lcom/twidroid/net/oauth/c;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-virtual {v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/model/twitter/c;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_4e
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/model/twitter/c;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/oauth/c;->a([Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twidroid/model/twitter/c;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twidroid/model/twitter/c;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_d
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/twidroid/model/twitter/c;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/oauth/c;->a(Lcom/twidroid/model/twitter/c;)V

    return-void
.end method
