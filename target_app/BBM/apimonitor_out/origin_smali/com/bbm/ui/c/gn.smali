.class final Lcom/bbm/ui/c/gn;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Lcom/bbm/l/d/b/t;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/ui/c/fu;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/gn;->b:Lcom/bbm/ui/c/fu;

    iput-object p2, p0, Lcom/bbm/ui/c/gn;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/v;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/bbm/l/d/b/u;->a()Z

    move-result v0

    if-eqz v0, :cond_79

    if-eqz p2, :cond_79

    iget-object v0, p0, Lcom/bbm/ui/c/gn;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bbm/l/d/b/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/bbm/ui/c/gn;->b:Lcom/bbm/ui/c/fu;

    iget-object v1, p0, Lcom/bbm/ui/c/gn;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/bbm/l/d/b/v;->a(Ljava/lang/String;)Lcom/bbm/l/d/b/x;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/l/d/b/x;)Lcom/bbm/l/d/b/x;

    iget-object v0, p0, Lcom/bbm/ui/c/gn;->b:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->p(Lcom/bbm/ui/c/fu;)Lcom/bbm/l/d/b/x;

    move-result-object v0

    iget v0, v0, Lcom/bbm/l/d/b/x;->m:I

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/c/gn;->b:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->q(Lcom/bbm/ui/c/fu;)Lcom/bbm/ui/c/gy;

    move-result-object v0

    sget-object v1, Lcom/bbm/ui/c/gy;->g:Lcom/bbm/ui/c/gy;

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/c/gn;->b:Lcom/bbm/ui/c/fu;

    sget-object v1, Lcom/bbm/ui/c/gy;->b:Lcom/bbm/ui/c/gy;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/c/gy;)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lcom/bbm/ui/c/gn;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/bbm/l/d/b/v;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v1, p0, Lcom/bbm/ui/c/gn;->b:Lcom/bbm/ui/c/fu;

    iget-object v0, p0, Lcom/bbm/ui/c/gn;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/bbm/l/d/b/v;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/l/d/b/z;

    iget-object v0, v0, Lcom/bbm/l/d/b/z;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/bbm/ui/c/fu;->c(Lcom/bbm/ui/c/fu;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/c/gn;->b:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->h(Lcom/bbm/ui/c/fu;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/gn;->b:Lcom/bbm/ui/c/fu;

    invoke-static {v1}, Lcom/bbm/ui/c/fu;->o(Lcom/bbm/ui/c/fu;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/c/gn;->b:Lcom/bbm/ui/c/fu;

    sget-object v1, Lcom/bbm/ui/c/gy;->h:Lcom/bbm/ui/c/gy;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/c/gy;)V

    goto :goto_37

    :cond_6a
    const-string v0, "StickerDetails SKU not found in store"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/c/gn;->b:Lcom/bbm/ui/c/fu;

    sget-object v1, Lcom/bbm/ui/c/gy;->e:Lcom/bbm/ui/c/gy;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/c/gy;)V

    goto :goto_37

    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StickerDetails Error when querying inventory. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/c/gn;->b:Lcom/bbm/ui/c/fu;

    sget-object v1, Lcom/bbm/ui/c/gy;->e:Lcom/bbm/ui/c/gy;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/c/gy;)V

    goto :goto_37
.end method
