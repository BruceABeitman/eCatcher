.class Lcom/twidroid/activity/w;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/twidroid/activity/UberSocialAccount;


# direct methods
.method private constructor <init>(Lcom/twidroid/activity/UberSocialAccount;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->e(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_51

    move-result-object v0

    :try_start_13
    new-instance v1, Lcom/twidroid/net/a/c/c;

    new-instance v2, Lcom/twidroid/net/oauth/a;

    iget-object v3, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    invoke-virtual {v3}, Lcom/twidroid/activity/UberSocialAccount;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v3, v3, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/d/v;->al()Z

    move-result v3

    iget-object v4, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v4, v4, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/d/v;->am()Z

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twidroid/net/a/c/c;-><init>(Lcom/twidroid/model/twitter/c;Lcom/ubermedia/net/b/c;ZZ)V

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/User;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->a(Z)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4a} :catch_4b

    :goto_4a
    return-object v0

    :catch_4b
    move-exception v1

    const/4 v1, 0x1

    :try_start_4d
    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->a(Z)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_4a

    :catch_51
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4a
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/model/twitter/c;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/w;->a([Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v1, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialAccount;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialAccount;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/twidroid/model/twitter/c;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialAccount;->n()V

    if-eqz p1, :cond_62

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->b()Z

    move-result v0

    if-eqz v0, :cond_62

    sget-wide v0, Lcom/twidroid/net/a/c/c;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->f(Lcom/twidroid/activity/UberSocialAccount;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-wide v2, Lcom/twidroid/net/a/c/c;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_28
    iget-object v0, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ae()V

    iget-object v0, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    invoke-static {v0}, Lcom/twidroid/activity/UberSocialAccount;->f(Lcom/twidroid/activity/UberSocialAccount;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twidroid/model/twitter/c;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activate/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialAccount;->finish()V

    :goto_61
    return-void

    :cond_62
    iget-object v0, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v1, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    const v2, 0x7f0c018c

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialAccount;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/UberSocialAccount;->U:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/activity/w;->b:Lcom/twidroid/activity/UberSocialAccount;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    goto :goto_61
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/twidroid/model/twitter/c;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/w;->a(Lcom/twidroid/model/twitter/c;)V

    return-void
.end method
