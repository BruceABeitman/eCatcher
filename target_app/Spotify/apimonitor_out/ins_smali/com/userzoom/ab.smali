.class public final Lcom/userzoom/ab;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnCancelListener;
.field private synthetic a:Luserzoom/com/InterceptDialog;
.method public constructor <init>(Luserzoom/com/InterceptDialog;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/ab;->a:Luserzoom/com/InterceptDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/userzoom/ab;->a:Luserzoom/com/InterceptDialog;
invoke-virtual {v0}, Luserzoom/com/InterceptDialog;->finish()V
return-void
.end method