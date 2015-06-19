.class final Lcom/bbm/ui/c/bc;
.super Lcom/bbm/j/k;
.source "ChatsFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/at;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/at;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/bc;->a:Lcom/bbm/ui/c/at;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/bbm/ui/c/bc;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->a(Lcom/bbm/ui/c/at;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/c/bc;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->a(Lcom/bbm/ui/c/at;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/c/bc;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->a(Lcom/bbm/ui/c/at;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method
