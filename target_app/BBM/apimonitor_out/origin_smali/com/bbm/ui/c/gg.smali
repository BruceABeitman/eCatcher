.class final Lcom/bbm/ui/c/gg;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/gf;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/gf;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/gg;->a:Lcom/bbm/ui/c/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/c/gg;->a:Lcom/bbm/ui/c/gf;

    invoke-virtual {v0}, Lcom/bbm/ui/c/gf;->dismiss()V

    iget-object v0, p0, Lcom/bbm/ui/c/gg;->a:Lcom/bbm/ui/c/gf;

    iget-object v0, v0, Lcom/bbm/ui/c/gf;->a:Lcom/bbm/ui/c/fu;

    iget-object v1, p0, Lcom/bbm/ui/c/gg;->a:Lcom/bbm/ui/c/gf;

    iget-object v1, v1, Lcom/bbm/ui/c/gf;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v1}, Lcom/bbm/ui/c/fu;->p(Lcom/bbm/ui/c/fu;)Lcom/bbm/l/d/b/x;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/l/d/b/x;Ljava/lang/Boolean;)V

    return-void
.end method
