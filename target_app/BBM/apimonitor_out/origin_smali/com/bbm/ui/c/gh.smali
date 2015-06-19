.class final Lcom/bbm/ui/c/gh;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/gf;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/gf;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/gh;->a:Lcom/bbm/ui/c/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/c/gh;->a:Lcom/bbm/ui/c/gf;

    invoke-virtual {v0}, Lcom/bbm/ui/c/gf;->dismiss()V

    iget-object v0, p0, Lcom/bbm/ui/c/gh;->a:Lcom/bbm/ui/c/gf;

    iget-object v0, v0, Lcom/bbm/ui/c/gf;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->k(Lcom/bbm/ui/c/fu;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/gh;->a:Lcom/bbm/ui/c/gf;

    iget-object v1, v1, Lcom/bbm/ui/c/gf;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v1}, Lcom/bbm/ui/c/fu;->j(Lcom/bbm/ui/c/fu;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/bbm/ui/c/gh;->a:Lcom/bbm/ui/c/gf;

    iget-object v0, v0, Lcom/bbm/ui/c/gf;->a:Lcom/bbm/ui/c/fu;

    invoke-virtual {v0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/l/a;->a(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/gh;->a:Lcom/bbm/ui/c/gf;

    iget-object v0, v0, Lcom/bbm/ui/c/gf;->a:Lcom/bbm/ui/c/fu;

    sget-object v1, Lcom/bbm/ui/c/gy;->c:Lcom/bbm/ui/c/gy;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/c/gy;)V

    return-void
.end method
