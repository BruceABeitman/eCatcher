.class final Lcom/userzoom/ah;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private synthetic a:Lcom/userzoom/bx;
.method constructor <init>(Lcom/userzoom/bx;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/ah;->a:Lcom/userzoom/bx;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
const-string v0, "UzSurveyActivity"
const-string v1, "loading URL"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "javascript:(function () {UserZoom.core.f_exit();})()"
iget-object v1, p0, Lcom/userzoom/ah;->a:Lcom/userzoom/bx;
iget-object v1, v1, Lcom/userzoom/bx;->a:Lcom/userzoom/bw;
iget-object v1, v1, Lcom/userzoom/bw;->b:Luserzoom/com/UzSurveyActivity;
invoke-static {v1}, Luserzoom/com/UzSurveyActivity;->d(Luserzoom/com/UzSurveyActivity;)Landroid/webkit/WebView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
return-void
.end method