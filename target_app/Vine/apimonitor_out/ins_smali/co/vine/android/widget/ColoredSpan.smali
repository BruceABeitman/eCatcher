.class public Lco/vine/android/widget/ColoredSpan;
.super Landroid/text/style/CharacterStyle;
.source "ColoredSpan.java"
.field private mColor:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V
iput p1, p0, Lco/vine/android/widget/ColoredSpan;->mColor:I
return-void
.end method
.method public getColor()I
.registers 2
iget v0, p0, Lco/vine/android/widget/ColoredSpan;->mColor:I
return v0
.end method
.method public setColor(I)V
.registers 2
iput p1, p0, Lco/vine/android/widget/ColoredSpan;->mColor:I
return-void
.end method
.method public updateDrawState(Landroid/text/TextPaint;)V
.registers 3
.parameter
.end parameter
iget v0, p0, Lco/vine/android/widget/ColoredSpan;->mColor:I
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V
return-void
.end method