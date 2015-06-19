.class final Lcom/spotify/mobile/android/ui/fragments/x$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Landroid/webkit/JsResult;
.field final synthetic b:Lcom/spotify/mobile/android/ui/fragments/x;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/x;Landroid/webkit/JsResult;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/x$7;->b:Lcom/spotify/mobile/android/ui/fragments/x;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/fragments/x$7;->a:Landroid/webkit/JsResult;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$7;->a:Landroid/webkit/JsResult;
invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$7;->b:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->j(Lcom/spotify/mobile/android/ui/fragments/x;)Landroid/app/AlertDialog;
return-void
.end method