.class final Lcom/bbm/ui/b/d;
.super Ljava/lang/Object;
.source "BBChannelDateOfBirthDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/a;


# direct methods
.method constructor <init>(Lcom/bbm/ui/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/b/d;->a:Lcom/bbm/ui/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/b/d;->a:Lcom/bbm/ui/b/a;

    invoke-static {v0}, Lcom/bbm/ui/b/a;->d(Lcom/bbm/ui/b/a;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/bbm/ui/b/d;->a:Lcom/bbm/ui/b/a;

    invoke-static {v0}, Lcom/bbm/ui/b/a;->e(Lcom/bbm/ui/b/a;)V

    iget-object v0, p0, Lcom/bbm/ui/b/d;->a:Lcom/bbm/ui/b/a;

    invoke-static {v0}, Lcom/bbm/ui/b/a;->f(Lcom/bbm/ui/b/a;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/bbm/ui/b/d;->a:Lcom/bbm/ui/b/a;

    invoke-virtual {v0}, Lcom/bbm/ui/b/a;->dismiss()V

    goto :goto_12
.end method
