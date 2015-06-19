.class final Lcom/bbm/ui/c/hb;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/gz;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/gz;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/hb;->a:Lcom/bbm/ui/c/gz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/c/hb;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->b(Lcom/bbm/ui/c/gz;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/hb;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->c(Lcom/bbm/ui/c/gz;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/hb;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->d(Lcom/bbm/ui/c/gz;)I

    iget-object v0, p0, Lcom/bbm/ui/c/hb;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->a(Lcom/bbm/ui/c/gz;)V

    return-void
.end method
