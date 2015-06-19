.class final Lcom/instagram/android/people/c/b;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic a:Lcom/instagram/android/people/c/a;
.method constructor <init>(Lcom/instagram/android/people/c/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/c/b;->a:Lcom/instagram/android/people/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onDismiss(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/people/c/b;->a:Lcom/instagram/android/people/c/a;
invoke-static {v0}, Lcom/instagram/android/people/c/a;->a(Lcom/instagram/android/people/c/a;)Landroid/app/Dialog;
iget-object v0, p0, Lcom/instagram/android/people/c/b;->a:Lcom/instagram/android/people/c/a;
invoke-static {v0}, Lcom/instagram/android/people/c/a;->b(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;
return-void
.end method