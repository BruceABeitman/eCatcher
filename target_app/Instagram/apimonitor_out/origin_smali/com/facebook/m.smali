.class final Lcom/facebook/m;
.super Lcom/facebook/j;
.source "AuthorizationClient.java"


# instance fields
.field final synthetic b:Lcom/facebook/c;

.field private transient c:Lcom/facebook/ag;


# direct methods
.method constructor <init>(Lcom/facebook/c;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    invoke-direct {p0, p1}, Lcom/facebook/j;-><init>(Lcom/facebook/c;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/facebook/k;Landroid/os/Bundle;)V
    .registers 8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    iget-object v0, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    invoke-static {v0}, Lcom/facebook/c;->a(Lcom/facebook/c;)V

    if-eqz p2, :cond_50

    const-string v0, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/k;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v1, :cond_2e

    if-eqz v0, :cond_1e

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_1e
    sget-object v0, Lcom/facebook/b;->d:Lcom/facebook/b;

    invoke-static {p2, v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;Lcom/facebook/b;)Lcom/facebook/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/s;->a(Lcom/facebook/a;)Lcom/facebook/s;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    invoke-virtual {v1, v0}, Lcom/facebook/c;->a(Lcom/facebook/s;)V

    :goto_2d
    return-void

    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4d
    invoke-virtual {p1, v2}, Lcom/facebook/k;->a(Ljava/util/List;)V

    :cond_50
    iget-object v0, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    invoke-virtual {v0}, Lcom/facebook/c;->b()V

    goto :goto_2d
.end method

.method final a(Lcom/facebook/k;)Z
    .registers 5

    new-instance v0, Lcom/facebook/ag;

    iget-object v1, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    iget-object v1, v1, Lcom/facebook/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    iget-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    invoke-virtual {v0}, Lcom/facebook/ag;->a()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_18
    return v0

    :cond_19
    iget-object v0, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    invoke-static {v0}, Lcom/facebook/c;->b(Lcom/facebook/c;)V

    new-instance v0, Lcom/facebook/n;

    invoke-direct {v0, p0, p1}, Lcom/facebook/n;-><init>(Lcom/facebook/m;Lcom/facebook/k;)V

    iget-object v1, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    invoke-virtual {v1, v0}, Lcom/facebook/ag;->a(Lcom/facebook/ai;)V

    const/4 v0, 0x1

    goto :goto_18
.end method

.method final c()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    invoke-virtual {v0}, Lcom/facebook/ag;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    :cond_c
    return-void
.end method
