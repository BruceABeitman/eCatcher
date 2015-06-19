.class public Lcom/umeng/newxp/view/az;
.super Landroid/widget/TextView;
.source "MarqueeTextView.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public isFocused()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
.registers 4
if-eqz p1, :cond_5
invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V
:cond_5
return-void
.end method
.method public onWindowFocusChanged(Z)V
.registers 2
if-eqz p1, :cond_5
invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V
:cond_5
return-void
.end method