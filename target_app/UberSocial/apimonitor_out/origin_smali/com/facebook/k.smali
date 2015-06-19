.class Lcom/facebook/k;
.super Lcom/facebook/j;
.source "SourceFile"


# static fields
.field private static final d:J = 0x1L


# instance fields
.field final synthetic c:Lcom/facebook/d;


# direct methods
.method constructor <init>(Lcom/facebook/d;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/k;->c:Lcom/facebook/d;

    invoke-direct {p0, p1}, Lcom/facebook/j;-><init>(Lcom/facebook/d;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)Lcom/facebook/n;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    sget-object v0, Lcom/facebook/c;->c:Lcom/facebook/c;

    invoke-static {v1, v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;Lcom/facebook/c;)Lcom/facebook/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/n;->a(Lcom/facebook/a;)Lcom/facebook/n;

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

    invoke-static {v0}, Lcom/facebook/n;->a(Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    goto :goto_17

    :cond_2d
    const-string v0, "error_description"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    goto :goto_17
.end method


# virtual methods
.method a(IILandroid/content/Intent;)Z
    .registers 6

    invoke-static {p3}, Lcom/facebook/ag;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/k;->c:Lcom/facebook/d;

    invoke-virtual {v0}, Lcom/facebook/d;->e()V

    :goto_b
    const/4 v0, 0x1

    return v0

    :cond_d
    if-nez p2, :cond_21

    const-string v0, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/n;->a(Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    :goto_19
    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/facebook/k;->c:Lcom/facebook/d;

    invoke-virtual {v1, v0}, Lcom/facebook/d;->a(Lcom/facebook/n;)V

    goto :goto_b

    :cond_21
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2c

    const-string v0, "Unexpected resultCode from authorization."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    goto :goto_19

    :cond_2c
    invoke-direct {p0, p3}, Lcom/facebook/k;->a(Landroid/content/Intent;)Lcom/facebook/n;

    move-result-object v0

    goto :goto_19

    :cond_31
    iget-object v0, p0, Lcom/facebook/k;->c:Lcom/facebook/d;

    invoke-virtual {v0}, Lcom/facebook/d;->e()V

    goto :goto_b
.end method

.method a(Lcom/facebook/g;)Z
    .registers 6

    iget-object v0, p0, Lcom/facebook/k;->c:Lcom/facebook/d;

    iget-object v0, v0, Lcom/facebook/d;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/g;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/facebook/g;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/facebook/g;->e()Lcom/facebook/bi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/bi;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/g;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k;->a(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method
