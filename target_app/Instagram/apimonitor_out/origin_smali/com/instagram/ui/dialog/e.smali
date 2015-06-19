.class final Lcom/instagram/ui/dialog/e;
.super Ljava/lang/Object;
.source "IgDialogBuilder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Lcom/instagram/ui/dialog/b;


# direct methods
.method constructor <init>(Lcom/instagram/ui/dialog/b;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/ui/dialog/e;->b:Lcom/instagram/ui/dialog/b;

    iput-object p2, p0, Lcom/instagram/ui/dialog/e;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/ui/dialog/e;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/instagram/ui/dialog/e;->a:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/instagram/ui/dialog/e;->b:Lcom/instagram/ui/dialog/b;

    invoke-static {v1}, Lcom/instagram/ui/dialog/b;->b(Lcom/instagram/ui/dialog/b;)Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_f
    iget-object v0, p0, Lcom/instagram/ui/dialog/e;->b:Lcom/instagram/ui/dialog/b;

    invoke-static {v0}, Lcom/instagram/ui/dialog/b;->b(Lcom/instagram/ui/dialog/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
