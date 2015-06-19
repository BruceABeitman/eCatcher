.class Landroid/support/v7/internal/widget/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/internal/widget/ak;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ag;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/widget/ListAdapter;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ag;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ah;->a:Landroid/support/v7/internal/widget/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ag;Landroid/support/v7/internal/widget/ag$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ah;-><init>(Landroid/support/v7/internal/widget/ag;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ah;->c:Landroid/widget/ListAdapter;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ah;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public m()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ah;->a:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ah;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/support/v7/internal/widget/ah;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_14
    iget-object v1, p0, Landroid/support/v7/internal/widget/ah;->c:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ah;->a:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ag;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ah;->b:Landroid/app/AlertDialog;

    return-void
.end method

.method public n()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ah;->b:Landroid/app/AlertDialog;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->a:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/ag;->a(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->a:Landroid/support/v7/internal/widget/ag;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ag;->y:Landroid/support/v7/internal/widget/q;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->a:Landroid/support/v7/internal/widget/ag;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ah;->c:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/support/v7/internal/widget/ag;->a(Landroid/view/View;IJ)Z

    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ah;->n()V

    return-void
.end method

.method public q()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
