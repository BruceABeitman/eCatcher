.class Lcom/facebook/l;
.super Lcom/facebook/j;
.source "SourceFile"


# static fields
.field private static final d:J = 0x1L


# instance fields
.field final synthetic c:Lcom/facebook/d;


# direct methods
.method constructor <init>(Lcom/facebook/d;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/l;->c:Lcom/facebook/d;

    invoke-direct {p0, p1}, Lcom/facebook/j;-><init>(Lcom/facebook/d;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)Lcom/facebook/n;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v1, "error"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "error_type"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_13
    if-nez v1, :cond_28

    iget-object v0, p0, Lcom/facebook/l;->c:Lcom/facebook/d;

    iget-object v0, v0, Lcom/facebook/d;->h:Lcom/facebook/g;

    invoke-virtual {v0}, Lcom/facebook/g;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/facebook/c;->b:Lcom/facebook/c;

    invoke-static {v0, v2, v1}, Lcom/facebook/a;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/c;)Lcom/facebook/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/n;->a(Lcom/facebook/a;)Lcom/facebook/n;

    move-result-object v0

    :cond_27
    :goto_27
    return-object v0

    :cond_28
    sget-object v3, Lcom/facebook/b/k;->m:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    sget-object v3, Lcom/facebook/b/k;->n:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {v0}, Lcom/facebook/n;->a(Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    goto :goto_27

    :cond_3d
    const-string v0, "error_description"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    goto :goto_27
.end method


# virtual methods
.method a(IILandroid/content/Intent;)Z
    .registers 6

    if-nez p2, :cond_15

    const-string v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/n;->a(Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/facebook/l;->c:Lcom/facebook/d;

    invoke-virtual {v1, v0}, Lcom/facebook/d;->a(Lcom/facebook/n;)V

    :goto_13
    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, -0x1

    if-eq p2, v0, :cond_20

    const-string v0, "Unexpected resultCode from authorization."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    goto :goto_c

    :cond_20
    invoke-direct {p0, p3}, Lcom/facebook/l;->a(Landroid/content/Intent;)Lcom/facebook/n;

    move-result-object v0

    goto :goto_c

    :cond_25
    iget-object v0, p0, Lcom/facebook/l;->c:Lcom/facebook/d;

    invoke-virtual {v0}, Lcom/facebook/d;->e()V

    goto :goto_13
.end method

.method a(Lcom/facebook/g;)Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/l;->c:Lcom/facebook/d;

    iget-object v0, v0, Lcom/facebook/d;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/g;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/g;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/l;->a(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method
