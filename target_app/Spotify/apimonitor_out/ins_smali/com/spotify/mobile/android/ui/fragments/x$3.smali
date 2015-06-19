.class final Lcom/spotify/mobile/android/ui/fragments/x$3;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/x;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/x;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/x$3;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
return-void
.end method
.method public final onCloseWindow(Landroid/webkit/WebView;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$3;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
return-void
.end method
.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$3;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0, p3, p4}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Lcom/spotify/mobile/android/ui/fragments/x;Ljava/lang/String;Landroid/webkit/JsResult;)V
const/4 v0, 0x1
return v0
.end method
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$3;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->b(Lcom/spotify/mobile/android/ui/fragments/x;)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$3;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->c(Lcom/spotify/mobile/android/ui/fragments/x;)Z
move-result v0
if-nez v0, :cond_1b
const/16 v0, 0x32
if-le p2, v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$3;->a:Lcom/spotify/mobile/android/ui/fragments/x;
const/4 v1, 0x2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Lcom/spotify/mobile/android/ui/fragments/x;I)V
:cond_1b
return-void
.end method