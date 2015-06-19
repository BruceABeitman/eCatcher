.class final Lcom/facebook/p;
.super Lcom/facebook/o;
.source "AuthorizationClient.java"


# instance fields
.field final synthetic c:Lcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/facebook/c;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/p;->c:Lcom/facebook/c;

    invoke-direct {p0, p1}, Lcom/facebook/o;-><init>(Lcom/facebook/c;)V

    return-void
.end method

.method private static a(Landroid/content/Intent;)Lcom/facebook/s;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    sget-object v0, Lcom/facebook/b;->c:Lcom/facebook/b;

    invoke-static {v1, v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;Lcom/facebook/b;)Lcom/facebook/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/s;->a(Lcom/facebook/a;)Lcom/facebook/s;

    move-result-object v0

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    const-string v3, "ServiceDisabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "UserCanceled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {v0}, Lcom/facebook/s;->a(Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_17

    :cond_2d
    const-string v0, "error_description"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_17
.end method


# virtual methods
.method final a(ILandroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_12

    const-string v0, "Operation canceled"

    invoke-static {v0}, Lcom/facebook/s;->a(Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    :cond_9
    :goto_9
    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/facebook/p;->c:Lcom/facebook/c;

    invoke-virtual {v1, v0}, Lcom/facebook/c;->a(Lcom/facebook/s;)V

    :goto_10
    const/4 v0, 0x1

    return v0

    :cond_12
    invoke-static {p2}, Lcom/facebook/ao;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_9

    if-nez p1, :cond_25

    const-string v0, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/s;->a(Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_9

    :cond_25
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2f

    const-string v1, "Unexpected resultCode from authorization."

    invoke-static {v1, v0}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_9

    :cond_2f
    invoke-static {p2}, Lcom/facebook/p;->a(Landroid/content/Intent;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_9

    :cond_34
    iget-object v0, p0, Lcom/facebook/p;->c:Lcom/facebook/c;

    invoke-virtual {v0}, Lcom/facebook/c;->b()V

    goto :goto_10
.end method

.method final a(Lcom/facebook/k;)Z
    .registers 6

    iget-object v0, p0, Lcom/facebook/p;->c:Lcom/facebook/c;

    iget-object v0, v0, Lcom/facebook/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/k;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/facebook/k;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/facebook/k;->e()Lcom/facebook/cf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/cf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/k;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/p;->a(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method
