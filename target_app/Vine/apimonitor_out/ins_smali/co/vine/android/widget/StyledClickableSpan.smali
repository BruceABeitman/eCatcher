.class public Lco/vine/android/widget/StyledClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "StyledClickableSpan.java"
.field private mColor:I
.field private final mListener:Lco/vine/android/widget/SpanClickListener;
.field private mSelected:Z
.field private mSetColor:Z
.field private final mTag:Ljava/lang/Object;
.field private final mType:I
.method public constructor <init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
.registers 4
invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V
iput p1, p0, Lco/vine/android/widget/StyledClickableSpan;->mType:I
iput-object p2, p0, Lco/vine/android/widget/StyledClickableSpan;->mTag:Ljava/lang/Object;
iput-object p3, p0, Lco/vine/android/widget/StyledClickableSpan;->mListener:Lco/vine/android/widget/SpanClickListener;
return-void
.end method
.method public isSelected()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/widget/StyledClickableSpan;->mSelected:Z
return v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widget/StyledClickableSpan; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widget/StyledClickableSpan;->mListener:Lco/vine/android/widget/SpanClickListener;
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/widget/StyledClickableSpan;->mListener:Lco/vine/android/widget/SpanClickListener;
iget v1, p0, Lco/vine/android/widget/StyledClickableSpan;->mType:I
iget-object v2, p0, Lco/vine/android/widget/StyledClickableSpan;->mTag:Ljava/lang/Object;
invoke-interface {v0, p1, v1, v2}, Lco/vine/android/widget/SpanClickListener;->onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
:cond_d
const-string v1, " - Lco/vine/android/widget/StyledClickableSpan; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public select(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/widget/StyledClickableSpan;->mSelected:Z
return-void
.end method
.method public setColor(I)V
.registers 3
iput p1, p0, Lco/vine/android/widget/StyledClickableSpan;->mColor:I
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/widget/StyledClickableSpan;->mSetColor:Z
return-void
.end method
.method public updateDrawState(Landroid/text/TextPaint;)V
.registers 3
.parameter
.end parameter
iget-boolean v0, p0, Lco/vine/android/widget/StyledClickableSpan;->mSetColor:Z
if-eqz v0, :cond_9
iget v0, p0, Lco/vine/android/widget/StyledClickableSpan;->mColor:I
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V
:cond_9
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V
return-void
.end method