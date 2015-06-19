.class final Lcom/bbm/ui/c/cj;
.super Ljava/lang/Object;
.source "GroupDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/ch;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ch;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/cj;->a:Lcom/bbm/ui/c/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/c/cj;->a:Lcom/bbm/ui/c/ch;

    invoke-static {v0}, Lcom/bbm/ui/c/ch;->d(Lcom/bbm/ui/c/ch;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_16

    if-nez p2, :cond_16

    const-string v0, "onFocusChange"

    const-class v1, Lcom/bbm/ui/c/ch;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cj;->a:Lcom/bbm/ui/c/ch;

    invoke-static {v0}, Lcom/bbm/ui/c/ch;->e(Lcom/bbm/ui/c/ch;)V

    :cond_16
    return-void
.end method
