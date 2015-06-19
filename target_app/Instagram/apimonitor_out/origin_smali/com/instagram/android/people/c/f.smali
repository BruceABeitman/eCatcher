.class final Lcom/instagram/android/people/c/f;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/instagram/feed/d/l;

.field final synthetic c:Lcom/instagram/android/people/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/c/a;Landroid/app/Dialog;Lcom/instagram/feed/d/l;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/people/c/f;->c:Lcom/instagram/android/people/c/a;

    iput-object p2, p0, Lcom/instagram/android/people/c/f;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/instagram/android/people/c/f;->b:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/people/c/f;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/people/c/f;->c:Lcom/instagram/android/people/c/a;

    invoke-static {v1}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->are_you_sure:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->people_tagging_remove_me_confirm:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->yes_im_sure:I

    new-instance v2, Lcom/instagram/android/people/c/h;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/c/h;-><init>(Lcom/instagram/android/people/c/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    new-instance v2, Lcom/instagram/android/people/c/g;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/c/g;-><init>(Lcom/instagram/android/people/c/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
