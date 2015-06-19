.class Lcom/twidroid/activity/j;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/twidroid/activity/LoginDialog;


# direct methods
.method private constructor <init>(Lcom/twidroid/activity/LoginDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/activity/j;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/activity/LoginDialog;Lcom/twidroid/activity/LoginDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/activity/j;-><init>(Lcom/twidroid/activity/LoginDialog;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;
    .registers 9

    const/4 v1, 0x0

    const/4 v6, 0x1

    :try_start_2
    new-instance v0, Lcom/twidroid/net/a/c/c;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    new-instance v3, Lcom/twidroid/net/oauth/a;

    iget-object v4, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    invoke-virtual {v4}, Lcom/twidroid/activity/LoginDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    iget-object v4, v4, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    invoke-virtual {v4}, Lcom/twidroid/d/v;->al()Z

    move-result v4

    iget-object v5, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    iget-object v5, v5, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    invoke-virtual {v5}, Lcom/twidroid/d/v;->am()Z

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/twidroid/net/a/c/c;-><init>(Lcom/twidroid/model/twitter/c;Lcom/ubermedia/net/b/c;ZZ)V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/twidroid/net/a/c/c;->e(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;
    :try_end_2b
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_2 .. :try_end_2b} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_88

    move-result-object v0

    :try_start_2c
    new-instance v2, Lcom/twidroid/net/a/c/c;

    new-instance v3, Lcom/twidroid/net/oauth/a;

    iget-object v4, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    invoke-virtual {v4}, Lcom/twidroid/activity/LoginDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    iget-object v4, v4, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    invoke-virtual {v4}, Lcom/twidroid/d/v;->al()Z

    move-result v4

    iget-object v5, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    iget-object v5, v5, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    invoke-virtual {v5}, Lcom/twidroid/d/v;->am()Z

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/twidroid/net/a/c/c;-><init>(Lcom/twidroid/model/twitter/c;Lcom/ubermedia/net/b/c;ZZ)V

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/User;->k()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/twidroid/model/twitter/c;->a(Z)V

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twidroid/model/twitter/c;->f(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_62} :catch_63
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_2c .. :try_end_62} :catch_6c

    :goto_62
    return-object v0

    :catch_63
    move-exception v2

    :try_start_64
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/twidroid/model/twitter/c;->a(Z)V
    :try_end_6b
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_64 .. :try_end_6b} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6b} :catch_88

    goto :goto_62

    :catch_6c
    move-exception v0

    const-string v2, "LoginDialog"

    const-string v3, "TwitterException"

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v2

    if-ne v2, v6, :cond_83

    const-string v2, "LoginDialog"

    const-string v3, "TwitterException Connection failed"

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/twidroid/activity/j;->a:Z

    :cond_83
    invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V

    move-object v0, v1

    goto :goto_62

    :catch_88
    move-exception v0

    const-string v0, "LoginDialog"

    const-string v2, "GeneralException"

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_62
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/model/twitter/c;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/j;->a([Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/LoginDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/LoginDialog;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Lcom/twidroid/model/twitter/c;)V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    invoke-virtual {v0}, Lcom/twidroid/activity/LoginDialog;->a()V

    if-eqz p1, :cond_62

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->b()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-wide v1, Lcom/twidroid/net/a/c/c;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2c

    iget-object v1, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, v1, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    sget-wide v2, Lcom/twidroid/net/a/c/c;->g:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_2c
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

    iget-object v0, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ae()V

    :cond_5c
    iget-object v0, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v0}, Lcom/twidroid/activity/LoginDialog;->f(Lcom/twidroid/activity/LoginDialog;)V

    :goto_61
    return-void

    :cond_62
    iget-object v0, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    invoke-virtual {v0}, Lcom/twidroid/activity/LoginDialog;->a()V

    iget-boolean v0, p0, Lcom/twidroid/activity/j;->a:Z

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/LoginDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/LoginDialog;->e:Ljava/lang/String;

    :goto_7c
    iget-object v0, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    goto :goto_61

    :cond_83
    iget-object v0, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, p0, Lcom/twidroid/activity/j;->b:Lcom/twidroid/activity/LoginDialog;

    const v2, 0x7f0c018c

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/LoginDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/LoginDialog;->e:Ljava/lang/String;

    goto :goto_7c
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/twidroid/model/twitter/c;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/j;->a(Lcom/twidroid/model/twitter/c;)V

    return-void
.end method
