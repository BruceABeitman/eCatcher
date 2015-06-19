.class public abstract Lcom/instagram/feed/d/k;
.super Landroid/text/style/ClickableSpan;
.source "LinkSpan.java"
.field private a:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V
return-void
.end method
.method public constructor <init>(Z)V
.registers 2
invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V
iput-boolean p1, p0, Lcom/instagram/feed/d/k;->a:Z
return-void
.end method
.method public updateDrawState(Landroid/text/TextPaint;)V
.registers 3
iget v0, p1, Landroid/text/TextPaint;->linkColor:I
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V
iget-boolean v0, p0, Lcom/instagram/feed/d/k;->a:Z
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V
return-void
.end method