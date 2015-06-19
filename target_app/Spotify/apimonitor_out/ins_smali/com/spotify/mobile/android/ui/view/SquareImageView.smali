.class public Lcom/spotify/mobile/android/ui/view/SquareImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected onMeasure(II)V
.registers 6
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
if-eqz v1, :cond_c
if-nez v0, :cond_19
:cond_c
const/4 v0, 0x1
:goto_d
const-string v2, "SquareImageView requires one of its dimensions to be 0, to use the other one as size"
invoke-static {v0, v2}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
if-nez v1, :cond_1b
move p1, p2
:goto_15
invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V
return-void
:cond_19
const/4 v0, 0x0
goto :goto_d
:cond_1b
move p2, p1
goto :goto_15
.end method