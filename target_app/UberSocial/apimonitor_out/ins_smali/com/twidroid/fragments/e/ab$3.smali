.class  Lcom/twidroid/fragments/e/ab$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/twidroid/fragments/e/ab;
.method constructor <init>(Lcom/twidroid/fragments/e/ab;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/ab$3;->a:Lcom/twidroid/fragments/e/ab;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 2
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
return-void
.end method