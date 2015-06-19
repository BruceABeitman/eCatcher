.class Lcom/twidroid/c/m$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/d/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/m$2;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/m$2;


# direct methods
.method constructor <init>(Lcom/twidroid/c/m$2;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/m$2$1;->a:Lcom/twidroid/c/m$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/m$2$1;->a:Lcom/twidroid/c/m$2;

    iget-object v0, v0, Lcom/twidroid/c/m$2;->b:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->c(Lcom/twidroid/c/m;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/c/m$2$1;->a:Lcom/twidroid/c/m$2;

    iget-object v1, v1, Lcom/twidroid/c/m$2;->b:Lcom/twidroid/c/m;

    invoke-static {v1}, Lcom/twidroid/c/m;->c(Lcom/twidroid/c/m;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0158

    invoke-static {v1, v2}, Lcom/twidroid/d/h;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(I)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/twidroid/c/m$2$1;->a:Lcom/twidroid/c/m$2;

    iget-object v1, v1, Lcom/twidroid/c/m$2;->b:Lcom/twidroid/c/m;

    invoke-static {v1}, Lcom/twidroid/c/m;->c(Lcom/twidroid/c/m;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    packed-switch p1, :pswitch_data_32

    const v1, 0x7f0c00de

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_1c
    const v1, 0x7f0c0211

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/d/h;->a(Landroid/app/Dialog;)V

    return-void

    :pswitch_2b
    const v1, 0x7f0c00ee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1c

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2b
    .end packed-switch
.end method
