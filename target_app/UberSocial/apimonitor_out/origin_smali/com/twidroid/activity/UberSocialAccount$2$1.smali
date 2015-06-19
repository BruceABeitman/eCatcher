.class Lcom/twidroid/activity/UberSocialAccount$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialAccount$2;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/twidroid/activity/UberSocialAccount$2;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccount$2;Z)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iput-boolean p2, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v2, 0x0

    const v4, 0x7f0c018c

    iget-boolean v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "TwidroydAccount"

    const-string v1, "Cleanup account data after account has been changed"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->f(Lcom/twidroid/activity/UberSocialAccount;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_20
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0, v2, v2}, Lcom/twidroid/model/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_29
    const-string v0, "TwidroydAccount"

    const-string v1, ">>>>Changed Twidroid Account"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/model/twitter/c;->a(J)J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/twidroid/activity/UberSocialBaseActivity;->aa:Z
    :try_end_3e
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_29 .. :try_end_3e} :catch_18f

    :try_start_3e
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    const v2, 0x7f0c018d

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialAccount;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/UberSocialAccount;->U:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->X:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/UberSocialAccount$2$1$1;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialAccount$2$1$1;-><init>(Lcom/twidroid/activity/UberSocialAccount$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_73
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->X:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/UberSocialAccount$2$1$2;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialAccount$2$1$2;-><init>(Lcom/twidroid/activity/UberSocialAccount$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    const-string v0, "TwidroydAccount"

    const-string v1, ">>>>Changed Twidroid Account"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->p()Z

    move-result v0

    if-eqz v0, :cond_1df

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/net/a/c/c;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/model/twitter/c;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1df

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->f(Lcom/twidroid/activity/UberSocialAccount;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialAccount;->setResult(I)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->X:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/UberSocialAccount$2$1$3;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialAccount$2$1$3;-><init>(Lcom/twidroid/activity/UberSocialAccount$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ae()V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z

    move-result v0

    if-nez v0, :cond_138

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->f()Z

    move-result v0

    if-eqz v0, :cond_185

    :cond_138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activate/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    :goto_15e
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialAccount;->finish()V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->h()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    const-class v2, Lcom/twidroid/activity/UberSocialAccounts;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    invoke-virtual {v1, v0}, Lcom/twidroid/activity/UberSocialAccount;->startActivity(Landroid/content/Intent;)V

    :goto_184
    return-void

    :cond_185
    const-string v0, "activate"

    const-string v1, "other"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18c
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_3e .. :try_end_18c} :catch_18d

    goto :goto_15e

    :catch_18d
    move-exception v0

    :try_start_18e
    throw v0
    :try_end_18f
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_18e .. :try_end_18f} :catch_18f

    :catch_18f
    move-exception v0

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twidroid/activity/UberSocialAccount;->U:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b3

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v2, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v2, v2, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    invoke-virtual {v2, v4}, Lcom/twidroid/activity/UberSocialAccount;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twidroid/activity/UberSocialAccount;->U:Ljava/lang/String;

    :cond_1b3
    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1d0

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialAccount;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/UberSocialAccount;->U:Ljava/lang/String;

    :cond_1d0
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->X:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/UberSocialAccount$2$1$5;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialAccount$2$1$5;-><init>(Lcom/twidroid/activity/UberSocialAccount$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_184

    :cond_1df
    :try_start_1df
    const-string v0, "TwidroydAccount"

    const-string v1, ">>>>>>>>>>>>> Login INCORRECT <<<<<<<<<"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    const v2, 0x7f0c018c

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialAccount;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/UberSocialAccount;->U:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->X:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/UberSocialAccount$2$1$4;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialAccount$2$1$4;-><init>(Lcom/twidroid/activity/UberSocialAccount$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_209
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_1df .. :try_end_209} :catch_18d

    goto/16 :goto_184
.end method
