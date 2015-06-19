.class final Lcom/google/android/gms/internal/df$1;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic qo:Landroid/webkit/JsResult;
.method constructor <init>(Landroid/webkit/JsResult;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/df$1;->qo:Landroid/webkit/JsResult;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/df$1;->qo:Landroid/webkit/JsResult;
invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V
return-void
.end method