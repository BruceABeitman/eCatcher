.class final Lcom/google/android/gms/internal/fa$4;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic sN:Landroid/webkit/JsPromptResult;
.method constructor <init>(Landroid/webkit/JsPromptResult;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/fa$4;->sN:Landroid/webkit/JsPromptResult;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fa$4;->sN:Landroid/webkit/JsPromptResult;
invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V
return-void
.end method