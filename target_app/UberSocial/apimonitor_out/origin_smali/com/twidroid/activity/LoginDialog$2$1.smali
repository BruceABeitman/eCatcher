.class Lcom/twidroid/activity/LoginDialog$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/LoginDialog$2;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/LoginDialog$2;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/LoginDialog$2;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const v5, 0x7f0c018c

    sget-object v0, Lcom/twidroid/activity/LoginDialog;->h:[Ljava/lang/String;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v1}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v1}, Lcom/twidroid/activity/LoginDialog;->e(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->e(Ljava/lang/String;)V

    :goto_34
    :try_start_34
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/model/twitter/c;->a(J)J

    new-instance v0, Lcom/twidroid/net/a/c/c;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    new-instance v2, Lcom/twidroid/net/oauth/a;

    iget-object v3, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v3, v3, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-virtual {v3}, Lcom/twidroid/activity/LoginDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v3, v3, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v3, v3, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    invoke-virtual {v3}, Lcom/twidroid/d/v;->al()Z

    move-result v3

    iget-object v4, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v4, v4, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v4, v4, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    invoke-virtual {v4}, Lcom/twidroid/d/v;->am()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twidroid/net/a/c/c;-><init>(Lcom/twidroid/model/twitter/c;Lcom/ubermedia/net/b/c;ZZ)V
    :try_end_6b
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_34 .. :try_end_6b} :catch_182

    :try_start_6b
    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->e()Z

    move-result v1

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v2, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v2, v2, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    const v3, 0x7f0c018d

    invoke-virtual {v2, v3}, Lcom/twidroid/activity/LoginDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twidroid/activity/LoginDialog;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog;->c:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/LoginDialog$2$1$1;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/LoginDialog$2$1$1;-><init>(Lcom/twidroid/activity/LoginDialog$2$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_ac
    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->p()Z

    move-result v1

    if-eqz v1, :cond_1b5

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->o()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twidroid/model/twitter/c;->a(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1b5

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1, v0}, Lcom/twidroid/model/twitter/c;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ae()V

    :cond_e8
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/LoginDialog;->setResult(I)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z

    move-result v0

    if-nez v0, :cond_108

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->f()Z

    move-result v0

    if-eqz v0, :cond_15f

    :cond_108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activate/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

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

    :goto_12e
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v0}, Lcom/twidroid/activity/LoginDialog;->f(Lcom/twidroid/activity/LoginDialog;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_135} :catch_165
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_6b .. :try_end_135} :catch_182

    :goto_135
    :try_start_135
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->c:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/LoginDialog$2$1$3;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/LoginDialog$2$1$3;-><init>(Lcom/twidroid/activity/LoginDialog$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_143
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_135 .. :try_end_143} :catch_182

    :goto_143
    return-void

    :cond_144
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    sget-object v1, Lcom/twidroid/activity/LoginDialog;->h:[Ljava/lang/String;

    iget-object v2, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v2, v2, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v2}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->e(Ljava/lang/String;)V

    goto/16 :goto_34

    :cond_15f
    :try_start_15f
    const-string v0, "activate/other"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_164} :catch_165
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_15f .. :try_end_164} :catch_182

    goto :goto_12e

    :catch_165
    move-exception v0

    :try_start_166
    const-string v0, "LoginDialog"

    const-string v1, "Cant get User ID"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    const v2, 0x7f0c018c

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/LoginDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_182
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_166 .. :try_end_182} :catch_182

    :catch_182
    move-exception v0

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twidroid/activity/LoginDialog;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a6

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-virtual {v1, v5}, Lcom/twidroid/activity/LoginDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/LoginDialog;->e:Ljava/lang/String;

    :cond_1a6
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->c:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/LoginDialog$2$1$4;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/LoginDialog$2$1$4;-><init>(Lcom/twidroid/activity/LoginDialog$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_143

    :cond_1b5
    :try_start_1b5
    invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->l()I

    move-result v0

    const-string v1, "LoginDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login Failed: Rate Limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1f9

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    const v2, 0x7f0c0038

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/LoginDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/LoginDialog;->e:Ljava/lang/String;

    :goto_1e9
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->c:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/LoginDialog$2$1$2;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/LoginDialog$2$1$2;-><init>(Lcom/twidroid/activity/LoginDialog$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_135

    :cond_1f9
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    const v2, 0x7f0c018c

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/LoginDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/LoginDialog;->e:Ljava/lang/String;
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_20e} :catch_165
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_1b5 .. :try_end_20e} :catch_182

    goto :goto_1e9
.end method
