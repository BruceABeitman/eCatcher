.class Lcom/facebook/q;
.super Lcom/facebook/f;
.source "SourceFile"


# static fields
.field private static final c:J = 0x1L


# instance fields
.field final synthetic b:Lcom/facebook/d;

.field private transient d:Lcom/facebook/widget/ax;


# direct methods
.method constructor <init>(Lcom/facebook/d;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/q;->b:Lcom/facebook/d;

    invoke-direct {p0, p1}, Lcom/facebook/f;-><init>(Lcom/facebook/d;)V

    return-void
.end method


# virtual methods
.method a(Lcom/facebook/g;Landroid/os/Bundle;Lcom/facebook/t;)V
    .registers 6

    if-eqz p2, :cond_21

    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/d;

    iget-object v0, v0, Lcom/facebook/d;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-virtual {p1}, Lcom/facebook/g;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/facebook/c;->e:Lcom/facebook/c;

    invoke-static {v0, p2, v1}, Lcom/facebook/a;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/c;)Lcom/facebook/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/n;->a(Lcom/facebook/a;)Lcom/facebook/n;

    move-result-object v0

    :goto_1b
    iget-object v1, p0, Lcom/facebook/q;->b:Lcom/facebook/d;

    invoke-virtual {v1, v0}, Lcom/facebook/d;->a(Lcom/facebook/n;)V

    return-void

    :cond_21
    instance-of v0, p3, Lcom/facebook/v;

    if-eqz v0, :cond_2c

    const-string v0, "User canceled log in."

    invoke-static {v0}, Lcom/facebook/n;->a(Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    goto :goto_1b

    :cond_2c
    invoke-virtual {p3}, Lcom/facebook/t;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/n;

    move-result-object v0

    goto :goto_1b
.end method

.method a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method a(Lcom/facebook/g;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/facebook/g;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/g;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/b/p;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "scope"

    const-string v3, ","

    invoke-virtual {p1}, Lcom/facebook/g;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-object v2, p0, Lcom/facebook/q;->b:Lcom/facebook/d;

    iget-object v2, v2, Lcom/facebook/d;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/b/p;->b(Landroid/content/Context;)V

    new-instance v2, Lcom/facebook/q$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/q$1;-><init>(Lcom/facebook/q;Lcom/facebook/g;)V

    new-instance v3, Lcom/facebook/e;

    iget-object v4, p0, Lcom/facebook/q;->b:Lcom/facebook/d;

    invoke-virtual {v4}, Lcom/facebook/d;->i()Lcom/facebook/p;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/p;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/facebook/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v2}, Lcom/facebook/e;->a(Lcom/facebook/widget/bc;)Lcom/facebook/widget/az;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/ay;

    invoke-virtual {v0}, Lcom/facebook/widget/ay;->a()Lcom/facebook/widget/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/q;->d:Lcom/facebook/widget/ax;

    iget-object v0, p0, Lcom/facebook/q;->d:Lcom/facebook/widget/ax;

    invoke-virtual {v0}, Lcom/facebook/widget/ax;->show()V

    const/4 v0, 0x1

    return v0
.end method

.method b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method c()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/q;->d:Lcom/facebook/widget/ax;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/q;->d:Lcom/facebook/widget/ax;

    invoke-virtual {v0}, Lcom/facebook/widget/ax;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/q;->d:Lcom/facebook/widget/ax;

    :cond_c
    return-void
.end method
