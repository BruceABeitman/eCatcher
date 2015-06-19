.class Lcom/facebook/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final i:J = 0x1L


# instance fields
.field a:Ljava/util/List;

.field b:Lcom/facebook/f;

.field transient c:Landroid/content/Context;

.field transient d:Lcom/facebook/p;

.field transient e:Lcom/facebook/m;

.field transient f:Lcom/facebook/h;

.field transient g:Z

.field h:Lcom/facebook/g;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/d;->l()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/d;->k()V

    return-void
.end method

.method private c(Lcom/facebook/g;)Ljava/util/List;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/g;->c()Lcom/facebook/bj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/bj;->a()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p1}, Lcom/facebook/g;->g()Z

    move-result v2

    if-nez v2, :cond_25

    new-instance v2, Lcom/facebook/i;

    invoke-direct {v2, p0}, Lcom/facebook/i;-><init>(Lcom/facebook/d;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/facebook/k;

    invoke-direct {v2, p0}, Lcom/facebook/k;-><init>(Lcom/facebook/d;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    new-instance v2, Lcom/facebook/l;

    invoke-direct {v2, p0}, Lcom/facebook/l;-><init>(Lcom/facebook/d;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    invoke-virtual {v1}, Lcom/facebook/bj;->b()Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v1, Lcom/facebook/q;

    invoke-direct {v1, p0}, Lcom/facebook/q;-><init>(Lcom/facebook/d;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    return-object v0
.end method

.method private e(Lcom/facebook/n;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/d;->e:Lcom/facebook/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/d;->e:Lcom/facebook/m;

    invoke-interface {v0, p1}, Lcom/facebook/m;->a(Lcom/facebook/n;)V

    :cond_9
    return-void
.end method

.method private j()V
    .registers 3

    const-string v0, "Login attempt failed."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d;->b(Lcom/facebook/n;)V

    return-void
.end method

.method private k()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/d;->f:Lcom/facebook/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/d;->f:Lcom/facebook/h;

    invoke-interface {v0}, Lcom/facebook/h;->a()V

    :cond_9
    return-void
.end method

.method private l()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/d;->f:Lcom/facebook/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/d;->f:Lcom/facebook/h;

    invoke-interface {v0}, Lcom/facebook/h;->b()V

    :cond_9
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/facebook/d;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/d;->b:Lcom/facebook/f;

    if-nez v0, :cond_10

    :cond_8
    new-instance v0, Lcom/facebook/t;

    const-string v1, "Attempted to continue authorization without a pending request."

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/facebook/d;->b:Lcom/facebook/f;

    invoke-virtual {v0}, Lcom/facebook/f;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/d;->b:Lcom/facebook/f;

    invoke-virtual {v0}, Lcom/facebook/f;->c()V

    invoke-virtual {p0}, Lcom/facebook/d;->f()Z

    :cond_20
    return-void
.end method

.method a(Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/d;->c:Landroid/content/Context;

    new-instance v0, Lcom/facebook/d$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/d$1;-><init>(Lcom/facebook/d;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/d;->d:Lcom/facebook/p;

    return-void
.end method

.method a(Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/d;->c:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/d;->d:Lcom/facebook/p;

    return-void
.end method

.method a(Lcom/facebook/g;)V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/d;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/facebook/d;->a()V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/facebook/d;->b(Lcom/facebook/g;)V

    goto :goto_9
.end method

.method a(Lcom/facebook/h;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/d;->f:Lcom/facebook/h;

    return-void
.end method

.method a(Lcom/facebook/m;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/d;->e:Lcom/facebook/m;

    return-void
.end method

.method a(Lcom/facebook/n;)V
    .registers 3

    iget-object v0, p1, Lcom/facebook/n;->b:Lcom/facebook/a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    invoke-virtual {v0}, Lcom/facebook/g;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/facebook/d;->c(Lcom/facebook/n;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, p1}, Lcom/facebook/d;->b(Lcom/facebook/n;)V

    goto :goto_f
.end method

.method a(IILandroid/content/Intent;)Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    invoke-virtual {v0}, Lcom/facebook/g;->d()I

    move-result v0

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/facebook/d;->b:Lcom/facebook/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/f;->a(IILandroid/content/Intent;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method b(Ljava/lang/String;)Lcom/facebook/ai;
    .registers 8

    const/4 v1, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v2, "id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "access_token"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ai;

    const-string v2, "me/permissions"

    sget-object v4, Lcom/facebook/ad;->a:Lcom/facebook/ad;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V

    return-object v0
.end method

.method b(Lcom/facebook/g;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    if-eqz v0, :cond_f

    new-instance v0, Lcom/facebook/t;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p1}, Lcom/facebook/g;->i()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/facebook/d;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1b
    iput-object p1, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    invoke-direct {p0, p1}, Lcom/facebook/d;->c(Lcom/facebook/g;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/facebook/d;->e()V

    goto :goto_2
.end method

.method b(Lcom/facebook/n;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/d;->b:Lcom/facebook/f;

    iput-object v0, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    invoke-direct {p0, p1}, Lcom/facebook/d;->e(Lcom/facebook/n;)V

    return-void
.end method

.method b()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/d;->b:Lcom/facebook/f;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method c(Ljava/lang/String;)Lcom/facebook/ai;
    .registers 8

    const/4 v1, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v2, "id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "access_token"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ai;

    const-string v2, "me"

    sget-object v4, Lcom/facebook/ad;->a:Lcom/facebook/ad;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;Lcom/facebook/aj;)V

    return-object v0
.end method

.method c()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/d;->b:Lcom/facebook/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/d;->b:Lcom/facebook/f;

    invoke-virtual {v0}, Lcom/facebook/f;->c()V

    :cond_9
    return-void
.end method

.method c(Lcom/facebook/n;)V
    .registers 4

    iget-object v0, p1, Lcom/facebook/n;->b:Lcom/facebook/a;

    if-nez v0, :cond_c

    new-instance v0, Lcom/facebook/t;

    const-string v1, "Can\'t validate without a token"

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/facebook/d;->d(Lcom/facebook/n;)Lcom/facebook/aq;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/d;->k()V

    invoke-virtual {v0}, Lcom/facebook/aq;->h()Lcom/facebook/ap;

    return-void
.end method

.method d(Lcom/facebook/n;)Lcom/facebook/aq;
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/facebook/n;->b:Lcom/facebook/a;

    invoke-virtual {v2}, Lcom/facebook/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/d$3;

    invoke-direct {v3, p0, v0}, Lcom/facebook/d$3;-><init>(Lcom/facebook/d;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    invoke-virtual {v4}, Lcom/facebook/g;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/d;->c(Ljava/lang/String;)Lcom/facebook/ai;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/facebook/ai;->a(Lcom/facebook/aj;)V

    invoke-virtual {p0, v2}, Lcom/facebook/d;->c(Ljava/lang/String;)Lcom/facebook/ai;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/facebook/ai;->a(Lcom/facebook/aj;)V

    invoke-virtual {p0, v4}, Lcom/facebook/d;->b(Ljava/lang/String;)Lcom/facebook/ai;

    move-result-object v3

    new-instance v4, Lcom/facebook/d$4;

    invoke-direct {v4, p0, v1}, Lcom/facebook/d$4;-><init>(Lcom/facebook/d;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/facebook/ai;->a(Lcom/facebook/aj;)V

    new-instance v4, Lcom/facebook/aq;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/facebook/ai;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x2

    aput-object v3, v6, v2

    invoke-direct {v4, v6}, Lcom/facebook/aq;-><init>([Lcom/facebook/ai;)V

    iget-object v2, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    invoke-virtual {v2}, Lcom/facebook/g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/facebook/aq;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/facebook/d$5;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/facebook/d$5;-><init>(Lcom/facebook/d;Ljava/util/ArrayList;Lcom/facebook/n;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v2}, Lcom/facebook/aq;->a(Lcom/facebook/ar;)V

    return-object v4
.end method

.method d()Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/facebook/d;->g:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0, v1}, Lcom/facebook/d;->a(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_27

    iget-object v0, p0, Lcom/facebook/d;->c:Landroid/content/Context;

    sget v1, Lcom/facebook/a/t;->com_facebook_internet_permission_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/d;->c:Landroid/content/Context;

    sget v2, Lcom/facebook/a/t;->com_facebook_internet_permission_error_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/d;->b(Lcom/facebook/n;)V

    const/4 v0, 0x0

    goto :goto_5

    :cond_27
    iput-boolean v0, p0, Lcom/facebook/d;->g:Z

    goto :goto_5
.end method

.method e()V
    .registers 3

    :cond_0
    iget-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/f;

    iput-object v0, p0, Lcom/facebook/d;->b:Lcom/facebook/f;

    invoke-virtual {p0}, Lcom/facebook/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/facebook/d;->j()V

    goto :goto_1d
.end method

.method f()Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/d;->b:Lcom/facebook/f;

    invoke-virtual {v0}, Lcom/facebook/f;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/facebook/d;->d()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/facebook/d;->b:Lcom/facebook/f;

    iget-object v1, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    invoke-virtual {v0, v1}, Lcom/facebook/f;->a(Lcom/facebook/g;)Z

    move-result v0

    goto :goto_f
.end method

.method g()Lcom/facebook/m;
    .registers 2

    iget-object v0, p0, Lcom/facebook/d;->e:Lcom/facebook/m;

    return-object v0
.end method

.method h()Lcom/facebook/h;
    .registers 2

    iget-object v0, p0, Lcom/facebook/d;->f:Lcom/facebook/h;

    return-object v0
.end method

.method i()Lcom/facebook/p;
    .registers 2

    iget-object v0, p0, Lcom/facebook/d;->d:Lcom/facebook/p;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/d;->d:Lcom/facebook/p;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/d;->h:Lcom/facebook/g;

    if-eqz v0, :cond_11

    new-instance v0, Lcom/facebook/d$2;

    invoke-direct {v0, p0}, Lcom/facebook/d$2;-><init>(Lcom/facebook/d;)V

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method
