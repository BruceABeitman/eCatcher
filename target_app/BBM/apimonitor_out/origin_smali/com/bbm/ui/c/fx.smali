.class final Lcom/bbm/ui/c/fx;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/fu;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fu;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/fx;->a:Lcom/bbm/ui/c/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Install Button clicked"

    const-class v1, Lcom/bbm/ui/c/fu;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fx;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->h(Lcom/bbm/ui/c/fu;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/fx;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->i(Lcom/bbm/ui/c/fu;)V

    return-void
.end method
