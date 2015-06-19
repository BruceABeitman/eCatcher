.class public final Lcom/instagram/i/e/c;
.super Lcom/instagram/api/k/a/h;
.source "NewsfeedYouStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/h",
        "<",
        "Lcom/instagram/i/d/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/i/e/a;


# direct methods
.method public constructor <init>(Lcom/instagram/i/e/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/i/d/o;)V
    .registers 8

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    invoke-static {v0}, Lcom/instagram/i/e/a;->a(Lcom/instagram/i/e/a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/i/e/a;->a(Z)V

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    invoke-virtual {p1}, Lcom/instagram/i/d/o;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/i/e/a;->a(Lcom/instagram/i/e/a;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    invoke-virtual {p1}, Lcom/instagram/i/d/o;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/i/e/a;->b(Lcom/instagram/i/e/a;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    invoke-virtual {p1}, Lcom/instagram/i/d/o;->p()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/i/e/a;->c(Lcom/instagram/i/e/a;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    invoke-virtual {p1}, Lcom/instagram/i/d/o;->q()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/i/e/a;->d(Lcom/instagram/i/e/a;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    invoke-virtual {p1}, Lcom/instagram/i/d/o;->c()Lcom/instagram/feed/f/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/i/e/a;->a(Lcom/instagram/i/e/a;Lcom/instagram/feed/f/a;)Lcom/instagram/feed/f/a;

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    invoke-static {v0}, Lcom/instagram/i/e/a;->b(Lcom/instagram/i/e/a;)Lcom/instagram/feed/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    sget-object v0, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    invoke-virtual {p1}, Lcom/instagram/i/d/o;->a()Lcom/instagram/i/d/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/i/d/p;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/instagram/i/d/p;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/instagram/i/d/p;->d()I

    move-result v3

    invoke-virtual {v0}, Lcom/instagram/i/d/p;->c()I

    move-result v0

    add-int v4, v1, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    if-lez v4, :cond_7f

    new-instance v4, Landroid/content/Intent;

    const-string v5, "NewsfeedStore.BROADCAST_TOAST"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "NewsfeedStore.EXTRA_BROADCAST_TOAST_LIKES"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_TOAST_COMMENTS"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_TOAST_RELATIONSHIPS"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_TOAST_USERTAGS"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v4}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    :cond_7f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"

    invoke-virtual {p1}, Lcom/instagram/i/d/o;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    invoke-static {}, Lcom/instagram/i/e/a;->m()V

    return-void
.end method

.method private b(Lcom/instagram/api/k/a/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/i",
            "<",
            "Lcom/instagram/i/d/o;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/i/e/a;->a(Lcom/instagram/i/e/a;Z)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/api/k/a/h;->a()V

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/i/e/a;->a(Lcom/instagram/i/e/a;Z)Z

    return-void
.end method

.method public final a(Lcom/instagram/api/k/a/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/i",
            "<",
            "Lcom/instagram/i/d/o;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/i/e/a;->a(Z)V

    iget-object v0, p0, Lcom/instagram/i/e/c;->a:Lcom/instagram/i/e/a;

    invoke-static {}, Lcom/instagram/i/e/a;->m()V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/i/d/o;

    invoke-direct {p0, p1}, Lcom/instagram/i/e/c;->a(Lcom/instagram/i/d/o;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/api/k/a/i;

    invoke-direct {p0, p1}, Lcom/instagram/i/e/c;->b(Lcom/instagram/api/k/a/i;)V

    return-void
.end method
