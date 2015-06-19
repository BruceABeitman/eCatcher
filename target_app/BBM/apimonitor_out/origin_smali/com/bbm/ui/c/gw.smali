.class final Lcom/bbm/ui/c/gw;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/l/b/h;

.field final synthetic b:Lcom/bbm/ui/c/fu;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fu;Lcom/bbm/l/b/h;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/gw;->b:Lcom/bbm/ui/c/fu;

    iput-object p2, p0, Lcom/bbm/ui/c/gw;->a:Lcom/bbm/l/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "Grid item clicked"

    const-class v1, Lcom/bbm/ui/c/fu;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/gw;->a:Lcom/bbm/l/b/h;

    iget-object v0, v0, Lcom/bbm/l/b/h;->e:Ljava/util/List;

    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/l/b/g;

    move-object v1, v0

    :goto_1b
    if-eqz v1, :cond_3b

    iget-object v0, v1, Lcom/bbm/l/b/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, v1, Lcom/bbm/l/b/g;->b:Ljava/lang/String;

    :goto_27
    iget-object v2, p0, Lcom/bbm/ui/c/gw;->b:Lcom/bbm/ui/c/fu;

    invoke-static {v2, v0}, Lcom/bbm/ui/c/fu;->b(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/c/gw;->b:Lcom/bbm/ui/c/fu;

    iget-object v1, v1, Lcom/bbm/l/b/g;->d:Lcom/bbm/l/b/i;

    iget-object v2, p0, Lcom/bbm/ui/c/gw;->a:Lcom/bbm/l/b/h;

    iget-object v2, v2, Lcom/bbm/l/b/h;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/l/b/i;Ljava/lang/String;)V

    return-void

    :cond_38
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1b

    :cond_3b
    iget-object v0, p0, Lcom/bbm/ui/c/gw;->a:Lcom/bbm/l/b/h;

    iget-object v0, v0, Lcom/bbm/l/b/h;->c:Ljava/lang/String;

    goto :goto_27
.end method
