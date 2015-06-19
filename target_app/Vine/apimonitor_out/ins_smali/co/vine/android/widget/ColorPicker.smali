.class public Lco/vine/android/widget/ColorPicker;
.super Landroid/view/ViewGroup;
.source "ColorPicker.java"
.implements Landroid/view/View$OnClickListener;
.field private mCircleWidth:I
.field private mColorClickListener:Lco/vine/android/widget/ColorPicker$ColorClickListener;
.field private mLineCount:I
.field private mMinPadding:I
.field private mSelected:Lco/vine/android/widget/ColorPickerCircle;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lco/vine/android/widget/ColorPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/ColorPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b001f
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v1
iput v1, p0, Lco/vine/android/widget/ColorPicker;->mMinPadding:I
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widget/ColorPicker; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, p1
check-cast v0, Lco/vine/android/widget/ColorPickerCircle;
iget-object v1, p0, Lco/vine/android/widget/ColorPicker;->mSelected:Lco/vine/android/widget/ColorPickerCircle;
if-eqz v1, :cond_d
iget-object v1, p0, Lco/vine/android/widget/ColorPicker;->mSelected:Lco/vine/android/widget/ColorPickerCircle;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lco/vine/android/widget/ColorPickerCircle;->setSelected(Z)V
:cond_d
iput-object v0, p0, Lco/vine/android/widget/ColorPicker;->mSelected:Lco/vine/android/widget/ColorPickerCircle;
iget-object v1, p0, Lco/vine/android/widget/ColorPicker;->mSelected:Lco/vine/android/widget/ColorPickerCircle;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lco/vine/android/widget/ColorPickerCircle;->setSelected(Z)V
iget-object v1, p0, Lco/vine/android/widget/ColorPicker;->mColorClickListener:Lco/vine/android/widget/ColorPicker$ColorClickListener;
if-nez v1, :cond_1a
:goto_19
const-string v1, " - Lco/vine/android/widget/ColorPicker; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1a
iget-object v1, p0, Lco/vine/android/widget/ColorPicker;->mColorClickListener:Lco/vine/android/widget/ColorPicker$ColorClickListener;
invoke-virtual {v0}, Lco/vine/android/widget/ColorPickerCircle;->getIndex()I
move-result v2
invoke-interface {v1, v2}, Lco/vine/android/widget/ColorPicker$ColorClickListener;->onColorClick(I)V
goto :goto_19
.end method
.method protected onLayout(ZIIII)V
.registers 17
iget v8, p0, Lco/vine/android/widget/ColorPicker;->mMinPadding:I
mul-int/lit8 v6, v8, 0x2
invoke-virtual {p0}, Lco/vine/android/widget/ColorPicker;->getMeasuredWidth()I
move-result v7
iget v8, p0, Lco/vine/android/widget/ColorPicker;->mLineCount:I
iget v9, p0, Lco/vine/android/widget/ColorPicker;->mCircleWidth:I
iget v10, p0, Lco/vine/android/widget/ColorPicker;->mMinPadding:I
add-int/2addr v9, v10
mul-int/2addr v8, v9
sub-int v8, v7, v8
div-int/lit8 v4, v8, 0x2
move v3, v4
const/4 v5, 0x0
const/4 v1, 0x0
:goto_17
invoke-virtual {p0}, Lco/vine/android/widget/ColorPicker;->getChildCount()I
move-result v8
if-ge v1, v8, :cond_51
move v2, v1
invoke-virtual {p0, v1}, Lco/vine/android/widget/ColorPicker;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/widget/ColorPickerCircle;
iget v8, p0, Lco/vine/android/widget/ColorPicker;->mCircleWidth:I
add-int/2addr v8, v3
iget v9, p0, Lco/vine/android/widget/ColorPicker;->mCircleWidth:I
add-int/2addr v9, v6
invoke-virtual {v0, v3, v6, v8, v9}, Lco/vine/android/widget/ColorPickerCircle;->layout(IIII)V
new-instance v8, Lco/vine/android/widget/ColorPicker$1;
invoke-direct {v8, p0, v0, v2}, Lco/vine/android/widget/ColorPicker$1;-><init>(Lco/vine/android/widget/ColorPicker;Lco/vine/android/widget/ColorPickerCircle;I)V
invoke-virtual {v0, v8}, Lco/vine/android/widget/ColorPickerCircle;->post(Ljava/lang/Runnable;)Z
invoke-virtual {v0, p0}, Lco/vine/android/widget/ColorPickerCircle;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget v8, p0, Lco/vine/android/widget/ColorPicker;->mCircleWidth:I
iget v9, p0, Lco/vine/android/widget/ColorPicker;->mMinPadding:I
add-int/2addr v8, v9
add-int/2addr v3, v8
iget v8, p0, Lco/vine/android/widget/ColorPicker;->mLineCount:I
add-int/lit8 v8, v8, -0x1
if-lt v1, v8, :cond_4e
if-nez v5, :cond_4e
iget v8, p0, Lco/vine/android/widget/ColorPicker;->mCircleWidth:I
iget v9, p0, Lco/vine/android/widget/ColorPicker;->mMinPadding:I
add-int/2addr v8, v9
add-int/2addr v6, v8
move v3, v4
const/4 v5, 0x1
:cond_4e
add-int/lit8 v1, v1, 0x1
goto :goto_17
:cond_51
return-void
.end method
.method protected onMeasure(II)V
.registers 13
const/high16 v9, 0x4000
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V
sget-object v7, Lco/vine/android/Settings;->PROFILE_BACKGROUND_COLORS:[I
array-length v1, v7
div-int/lit8 v5, v1, 0x2
iput v5, p0, Lco/vine/android/widget/ColorPicker;->mLineCount:I
invoke-virtual {p0}, Lco/vine/android/widget/ColorPicker;->getMeasuredWidth()I
move-result v6
div-int v7, v6, v5
iget v8, p0, Lco/vine/android/widget/ColorPicker;->mMinPadding:I
mul-int/lit8 v8, v8, 0x2
sub-int v2, v7, v8
mul-int/lit8 v7, v2, 0x2
iget v8, p0, Lco/vine/android/widget/ColorPicker;->mMinPadding:I
mul-int/lit8 v8, v8, 0x4
add-int v3, v7, v8
const/4 v4, 0x0
:goto_21
invoke-virtual {p0}, Lco/vine/android/widget/ColorPicker;->getChildCount()I
move-result v7
if-ge v4, v7, :cond_39
invoke-virtual {p0, v4}, Lco/vine/android/widget/ColorPicker;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v7
invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-virtual {p0, v0, v7, v8}, Lco/vine/android/widget/ColorPicker;->measureChild(Landroid/view/View;II)V
add-int/lit8 v4, v4, 0x1
goto :goto_21
:cond_39
iput v2, p0, Lco/vine/android/widget/ColorPicker;->mCircleWidth:I
invoke-virtual {p0, v6, v3}, Lco/vine/android/widget/ColorPicker;->setMeasuredDimension(II)V
return-void
.end method
.method public setColorIndex(I)V
.registers 6
if-ltz p1, :cond_29
invoke-virtual {p0}, Lco/vine/android/widget/ColorPicker;->getChildCount()I
move-result v2
if-ge p1, v2, :cond_29
const/4 v1, 0x0
:goto_9
invoke-virtual {p0}, Lco/vine/android/widget/ColorPicker;->getChildCount()I
move-result v2
if-ge v1, v2, :cond_29
if-ne p1, v1, :cond_20
invoke-virtual {p0, p1}, Lco/vine/android/widget/ColorPicker;->getChildAt(I)Landroid/view/View;
move-result-object v0
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V
check-cast v0, Lco/vine/android/widget/ColorPickerCircle;
iput-object v0, p0, Lco/vine/android/widget/ColorPicker;->mSelected:Lco/vine/android/widget/ColorPickerCircle;
:goto_1d
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_20
invoke-virtual {p0, v1}, Lco/vine/android/widget/ColorPicker;->getChildAt(I)Landroid/view/View;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V
goto :goto_1d
:cond_29
return-void
.end method
.method public setOnColorClickListener(Lco/vine/android/widget/ColorPicker$ColorClickListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/ColorPicker;->mColorClickListener:Lco/vine/android/widget/ColorPicker$ColorClickListener;
return-void
.end method