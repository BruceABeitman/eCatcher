.class final Lcom/instagram/android/maps/ui/q;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/h/b;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/instagram/android/maps/ui/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/q;->a:Lcom/instagram/android/h/b;

    iput-object p3, p0, Lcom/instagram/android/maps/ui/q;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v7, 0x0

    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/q;->a:Lcom/instagram/android/h/b;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    new-instance v0, Lcom/instagram/android/maps/ui/m;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    invoke-static {v1}, Lcom/instagram/android/maps/ui/m;->i(Lcom/instagram/android/maps/ui/m;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    invoke-static {v2}, Lcom/instagram/android/maps/ui/m;->c(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/af;

    move-result-object v2

    iget-object v4, p0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    invoke-static {v4}, Lcom/instagram/android/maps/ui/m;->j(Lcom/instagram/android/maps/ui/m;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/maps/ui/q;->b:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/ui/m;-><init>(Landroid/content/Context;Lcom/instagram/android/maps/ui/af;Ljava/util/List;Landroid/view/View;Landroid/view/View;)V

    invoke-static {v6, v0}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->k(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/maps/ui/m;)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->k(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    invoke-static {v1}, Lcom/instagram/android/maps/ui/m;->j(Lcom/instagram/android/maps/ui/m;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v7, v7}, Lcom/instagram/android/maps/ui/m;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->k(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/r;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/r;-><init>(Lcom/instagram/android/maps/ui/q;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/maps/ui/d;)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->l(Lcom/instagram/android/maps/ui/m;)V

    return-void
.end method
