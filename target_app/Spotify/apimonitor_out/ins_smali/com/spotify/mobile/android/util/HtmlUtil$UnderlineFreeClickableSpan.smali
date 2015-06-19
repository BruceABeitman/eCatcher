.class  Lcom/spotify/mobile/android/util/HtmlUtil$UnderlineFreeClickableSpan;
.super Landroid/text/style/URLSpan;
.source "SourceFile"
.field  a:Lcom/spotify/mobile/android/util/bd;
.method public constructor <init>(Ljava/lang/String;Lcom/spotify/mobile/android/util/bd;)V
.registers 4
invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/HtmlUtil$UnderlineFreeClickableSpan;->a:Lcom/spotify/mobile/android/util/bd;
iput-object p2, p0, Lcom/spotify/mobile/android/util/HtmlUtil$UnderlineFreeClickableSpan;->a:Lcom/spotify/mobile/android/util/bd;
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/util/HtmlUtil$UnderlineFreeClickableSpan; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V
invoke-virtual {p1}, Landroid/view/View;->invalidate()V
iget-object v0, p0, Lcom/spotify/mobile/android/util/HtmlUtil$UnderlineFreeClickableSpan;->a:Lcom/spotify/mobile/android/util/bd;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/util/HtmlUtil$UnderlineFreeClickableSpan;->a:Lcom/spotify/mobile/android/util/bd;
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/HtmlUtil$UnderlineFreeClickableSpan;->getURL()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/util/bd;->a(Ljava/lang/String;)V
:cond_13
const-string v1, " - Lcom/spotify/mobile/android/util/HtmlUtil$UnderlineFreeClickableSpan; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public updateDrawState(Landroid/text/TextPaint;)V
.registers 3
invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V
return-void
.end method