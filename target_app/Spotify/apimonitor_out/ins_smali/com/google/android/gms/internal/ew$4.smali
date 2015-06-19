.class final Lcom/google/android/gms/internal/ew$4;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Landroid/webkit/JsPromptResult;
.method constructor <init>(Landroid/webkit/JsPromptResult;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ew$4;->a:Landroid/webkit/JsPromptResult;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ew$4;->a:Landroid/webkit/JsPromptResult;
invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V
return-void
.end method