.class final Lcom/bbm/h/ba;
.super Ljava/lang/Object;
.source "InviteUtil.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[Ljava/lang/String;

.field private final c:Lcom/bbm/d/gp;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/bbm/d/gp;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/h/ba;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bbm/h/ba;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/h/ba;->c:Lcom/bbm/d/gp;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 9

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "inviteCreated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    :try_start_c
    const-string v1, "invite"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/h/ba;->c:Lcom/bbm/d/gp;

    invoke-static {v2}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/h/ba;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0485

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bbm/h/ba;->c:Lcom/bbm/d/gp;

    iget-object v6, v6, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v5, "www.pin.bbm.com"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "invite"

    invoke-virtual {v4, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "//"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/h/ba;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0484

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "mailto:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/bbm/h/ba;->b:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_8d

    const-string v4, "android.intent.extra.EMAIL"

    iget-object v5, p0, Lcom/bbm/h/ba;->b:[Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_8d
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/h/ba;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e049d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/h/ba;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-static {v0}, Lcom/bbm/d/z;->f(Ljava/lang/String;)Lcom/bbm/d/bx;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_bd
    .catchall {:try_start_c .. :try_end_bd} :catchall_d9
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_bd} :catch_c9

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    :cond_c8
    :goto_c8
    return-void

    :catch_c9
    move-exception v0

    :try_start_ca
    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_d9

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    goto :goto_c8

    :catchall_d9
    move-exception v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v1, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    throw v0
.end method
