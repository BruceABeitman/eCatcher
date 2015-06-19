.class final Lcom/google/android/gms/internal/fa$1;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic sM:Landroid/webkit/JsResult;
.method constructor <init>(Landroid/webkit/JsResult;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/fa$1;->sM:Landroid/webkit/JsResult;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fa$1;->sM:Landroid/webkit/JsResult;
invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V
return-void
.end method