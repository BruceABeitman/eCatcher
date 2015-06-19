.class public Lcom/glympse/android/controls/Button;
.super Landroid/widget/Button;
.source "Button.java"
.field private _shadowColorStateList:Landroid/content/res/ColorStateList;
.field private _shadowDx:F
.field private _shadowDy:F
.field private _shadowRadius:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/glympse/android/controls/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lcom/glympse/android/controls/R$attr;->glympseButtonStyle:I
invoke-direct {p0, p1, p2, v0}, Lcom/glympse/android/controls/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v3, 0x0
const/high16 v1, 0x3f80
invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput v1, p0, Lcom/glympse/android/controls/Button;->_shadowRadius:F
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/controls/Button;->_shadowDx:F
iput v1, p0, Lcom/glympse/android/controls/Button;->_shadowDy:F
sget-object v0, Lcom/glympse/android/controls/R$styleable;->GlympseButton:[I
invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/controls/Button;->_shadowColorStateList:Landroid/content/res/ColorStateList;
const/4 v1, 0x2
iget v2, p0, Lcom/glympse/android/controls/Button;->_shadowRadius:F
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v1
iput v1, p0, Lcom/glympse/android/controls/Button;->_shadowRadius:F
iget v1, p0, Lcom/glympse/android/controls/Button;->_shadowDx:F
invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v1
iput v1, p0, Lcom/glympse/android/controls/Button;->_shadowDx:F
const/4 v1, 0x1
iget v2, p0, Lcom/glympse/android/controls/Button;->_shadowDy:F
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v1
iput v1, p0, Lcom/glympse/android/controls/Button;->_shadowDy:F
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-direct {p0}, Lcom/glympse/android/controls/Button;->updateTextShadow()V
return-void
.end method
.method private updateTextShadow()V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/controls/Button;->_shadowColorStateList:Landroid/content/res/ColorStateList;
if-eqz v0, :cond_22
invoke-virtual {p0}, Lcom/glympse/android/controls/Button;->isEnabled()Z
move-result v0
if-eqz v0, :cond_23
const/4 v0, 0x1
new-array v0, v0, [I
const v1, 0x101009e
aput v1, v0, v2
:goto_13
iget-object v1, p0, Lcom/glympse/android/controls/Button;->_shadowColorStateList:Landroid/content/res/ColorStateList;
invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I
move-result v0
iget v1, p0, Lcom/glympse/android/controls/Button;->_shadowRadius:F
iget v2, p0, Lcom/glympse/android/controls/Button;->_shadowDx:F
iget v3, p0, Lcom/glympse/android/controls/Button;->_shadowDy:F
invoke-virtual {p0, v1, v2, v3, v0}, Lcom/glympse/android/controls/Button;->setShadowLayer(FFFI)V
:cond_22
return-void
:cond_23
new-array v0, v2, [I
goto :goto_13
.end method
.method public setEnabled(Z)V
.registers 2
invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V
invoke-direct {p0}, Lcom/glympse/android/controls/Button;->updateTextShadow()V
return-void
.end method
.method public setShadowLayer(FFFI)V
.registers 5
iput p1, p0, Lcom/glympse/android/controls/Button;->_shadowRadius:F
iput p2, p0, Lcom/glympse/android/controls/Button;->_shadowDx:F
iput p3, p0, Lcom/glympse/android/controls/Button;->_shadowDy:F
invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setShadowLayer(FFFI)V
return-void
.end method