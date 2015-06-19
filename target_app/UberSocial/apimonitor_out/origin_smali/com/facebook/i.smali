.class Lcom/facebook/i;
.super Lcom/facebook/f;
.source "SourceFile"


# static fields
.field private static final c:J = 0x1L


# instance fields
.field final synthetic b:Lcom/facebook/d;

.field private transient d:Lcom/facebook/ab;


# direct methods
.method constructor <init>(Lcom/facebook/d;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/i;->b:Lcom/facebook/d;

    invoke-direct {p0, p1}, Lcom/facebook/f;-><init>(Lcom/facebook/d;)V

    return-void
.end method


# virtual methods
.method a(Lcom/facebook/g;Landroid/os/Bundle;)V
    .registers 8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/i;->d:Lcom/facebook/ab;

    iget-object v0, p0, Lcom/facebook/i;->b:Lcom/facebook/d;

    invoke-static {v0}, Lcom/facebook/d;->a(Lcom/facebook/d;)V

    if-eqz p2, :cond_50

    const-string v0, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/g;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v1, :cond_2e

    if-eqz v0, :cond_1e

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_1e
    sget-object v0, Lcom/facebook/c;->d:Lcom/facebook/c;

    invoke-static {p2, v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;Lcom/facebook/c;)Lcom/facebook/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/n;->a(Lcom/facebook/a;)Lcom/facebook/n;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/i;->b:Lcom/facebook/d;

    invoke-virtual {v1, v0}, Lcom/facebook/d;->a(Lcom/facebook/n;)V

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
    invoke-virtual {p1, v2}, Lcom/facebook/g;->a(Ljava/util/List;)V

    :cond_50
    iget-object v0, p0, Lcom/facebook/i;->b:Lcom/facebook/d;

    invoke-virtual {v0}, Lcom/facebook/d;->e()V

    goto :goto_2d
.end method

.method a(Lcom/facebook/g;)Z
    .registers 5

    new-instance v0, Lcom/facebook/ab;

    iget-object v1, p0, Lcom/facebook/i;->b:Lcom/facebook/d;

    iget-object v1, v1, Lcom/facebook/d;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/i;->d:Lcom/facebook/ab;

    iget-object v0, p0, Lcom/facebook/i;->d:Lcom/facebook/ab;

    invoke-virtual {v0}, Lcom/facebook/ab;->a()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_18
    return v0

    :cond_19
    iget-object v0, p0, Lcom/facebook/i;->b:Lcom/facebook/d;

    invoke-static {v0}, Lcom/facebook/d;->b(Lcom/facebook/d;)V

    new-instance v0, Lcom/facebook/i$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/i$1;-><init>(Lcom/facebook/i;Lcom/facebook/g;)V

    iget-object v1, p0, Lcom/facebook/i;->d:Lcom/facebook/ab;

    invoke-virtual {v1, v0}, Lcom/facebook/ab;->a(Lcom/facebook/ac;)V

    const/4 v0, 0x1

    goto :goto_18
.end method

.method c()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/i;->d:Lcom/facebook/ab;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/i;->d:Lcom/facebook/ab;

    invoke-virtual {v0}, Lcom/facebook/ab;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/i;->d:Lcom/facebook/ab;

    :cond_c
    return-void
.end method
