.class public Lcom/bbm/util/LinkifyUtil$URLSpanNoUnderline;
.super Landroid/text/style/URLSpan;
.source "LinkifyUtil.java"
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public updateDrawState(Landroid/text/TextPaint;)V
.registers 3
invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V
return-void
.end method