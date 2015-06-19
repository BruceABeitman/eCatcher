.class final Lcom/instagram/feed/d/x;
.super Landroid/text/style/ClickableSpan;
.source "MediaRenderer.java"
.field final synthetic a:Landroid/content/res/Resources;
.field final synthetic b:Lcom/instagram/feed/d/l;
.method constructor <init>(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)V
.registers 3
iput-object p1, p0, Lcom/instagram/feed/d/x;->a:Landroid/content/res/Resources;
iput-object p2, p0, Lcom/instagram/feed/d/x;->b:Lcom/instagram/feed/d/l;
invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/feed/d/x; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "Media.NUMBER_COMMENTS_CLICKED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "Media.EXTRA_MEDIA_ID"
iget-object v2, p0, Lcom/instagram/feed/d/x;->b:Lcom/instagram/feed/d/l;
invoke-virtual {v2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z
const-string v1, " - Lcom/instagram/feed/d/x; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final updateDrawState(Landroid/text/TextPaint;)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V
iget-object v0, p0, Lcom/instagram/feed/d/x;->a:Landroid/content/res/Resources;
sget v1, Lcom/facebook/as;->grey_light:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V
return-void
.end method