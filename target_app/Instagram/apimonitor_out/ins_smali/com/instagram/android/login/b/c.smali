.class final Lcom/instagram/android/login/b/c;
.super Landroid/text/style/ClickableSpan;
.source "TextLinkUtil.java"
.field private final a:Landroid/net/Uri;
.method public constructor <init>(Landroid/net/Uri;)V
.registers 2
invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V
iput-object p1, p0, Lcom/instagram/android/login/b/c;->a:Landroid/net/Uri;
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/b/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
iget-object v2, p0, Lcom/instagram/android/login/b/c;->a:Landroid/net/Uri;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/instagram/android/login/b/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final updateDrawState(Landroid/text/TextPaint;)V
.registers 3
invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V
iget v0, p1, Landroid/text/TextPaint;->linkColor:I
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V
const/4 v0, 0x1
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V
return-void
.end method