.class  Lcom/twidroid/activity/AccountDialogActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/twidroid/activity/AccountDialogActivity;
.method constructor <init>(Lcom/twidroid/activity/AccountDialogActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/AccountDialogActivity$3;->a:Lcom/twidroid/activity/AccountDialogActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity$3;->a:Lcom/twidroid/activity/AccountDialogActivity;
invoke-virtual {v0}, Lcom/twidroid/activity/AccountDialogActivity;->finish()V
return-void
.end method