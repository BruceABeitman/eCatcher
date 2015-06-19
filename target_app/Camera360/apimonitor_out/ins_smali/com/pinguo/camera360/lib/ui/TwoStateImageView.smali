.class public Lcom/pinguo/camera360/lib/ui/TwoStateImageView;
.super Landroid/widget/ImageView;
.source "TwoStateImageView.java"
.field private static final DISABLED_ALPHA:I = 0x66
.field private static final ENABLED_ALPHA:I = 0xff
.field private mFilterEnabled:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/lib/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/ui/TwoStateImageView;->mFilterEnabled:Z
return-void
.end method
.method public setEnabled(Z)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/ui/TwoStateImageView;->mFilterEnabled:Z
if-eqz v0, :cond_e
if-eqz p1, :cond_f
const/16 v0, 0xff
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/ui/TwoStateImageView;->setAlpha(I)V
:cond_e
:goto_e
return-void
:cond_f
const/16 v0, 0x66
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/ui/TwoStateImageView;->setAlpha(I)V
goto :goto_e
.end method