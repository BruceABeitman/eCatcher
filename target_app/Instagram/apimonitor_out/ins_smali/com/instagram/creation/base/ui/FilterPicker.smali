.class public Lcom/instagram/creation/base/ui/FilterPicker;
.super Landroid/widget/HorizontalScrollView;
.source "FilterPicker.java"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.field private a:Landroid/widget/RadioGroup;
.field private b:Lcom/instagram/creation/base/ui/e;
.field private c:I
.field private d:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I
invoke-direct {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I
invoke-direct {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I
invoke-direct {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->a()V
return-void
.end method
.method private a()V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/creation/base/ui/FilterPicker;->setHorizontalFadingEdgeEnabled(Z)V
invoke-virtual {p0, v0}, Lcom/instagram/creation/base/ui/FilterPicker;->setHorizontalScrollBarEnabled(Z)V
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->row_padding:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
div-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->a(Landroid/content/res/Resources;)I
move-result v0
sget v1, Lcom/instagram/creation/base/ui/c;->d:I
if-ne v0, v1, :cond_27
iget v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I
div-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I
:cond_27
return-void
.end method
.method private a(Landroid/view/ViewGroup;[Lcom/instagram/creation/base/ui/h;)V
.registers 8
const/4 v1, 0x0
move v0, v1
:goto_2
array-length v2, p2
if-ge v0, v2, :cond_23
new-instance v2, Lcom/instagram/creation/base/ui/g;
invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v3
aget-object v4, p2, v0
invoke-direct {v2, v3, v4}, Lcom/instagram/creation/base/ui/g;-><init>(Landroid/content/Context;Lcom/instagram/creation/base/ui/h;)V
invoke-virtual {v2, p0}, Lcom/instagram/creation/base/ui/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v2, v0}, Lcom/instagram/creation/base/ui/g;->setId(I)V
iget v3, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I
iget v4, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I
invoke-virtual {v2, v3, v1, v4, v1}, Lcom/instagram/creation/base/ui/g;->setPadding(IIII)V
invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_23
return-void
.end method
.method private b()V
.registers 3
iget v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I
const/4 v1, -0x1
iput v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I
new-instance v1, Lcom/instagram/creation/base/ui/d;
invoke-direct {v1, p0, v0}, Lcom/instagram/creation/base/ui/d;-><init>(Lcom/instagram/creation/base/ui/FilterPicker;I)V
invoke-virtual {p0, v1}, Lcom/instagram/creation/base/ui/FilterPicker;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private setRestoreScrollPosition(I)V
.registers 2
iput p1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I
return-void
.end method
.method public getSelectedFilter()Lcom/instagram/creation/base/ui/h;
.registers 3
iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;
iget-object v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;
invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/creation/base/ui/g;
invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getFilter()Lcom/instagram/creation/base/ui/h;
move-result-object v0
return-object v0
.end method
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
.registers 7
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I
move-result v0
invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/creation/base/ui/g;
iget-object v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->b:Lcom/instagram/creation/base/ui/e;
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->b:Lcom/instagram/creation/base/ui/e;
invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getFilter()Lcom/instagram/creation/base/ui/h;
move-result-object v2
invoke-interface {v1, v2}, Lcom/instagram/creation/base/ui/e;->a(Lcom/instagram/creation/base/ui/h;)V
:cond_18
invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getLeft()I
move-result v1
invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getWidth()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getScrollX()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getRight()I
move-result v2
invoke-virtual {v0}, Lcom/instagram/creation/base/ui/g;->getWidth()I
move-result v0
add-int/2addr v0, v2
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getWidth()I
move-result v2
sub-int/2addr v0, v2
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getScrollX()I
move-result v2
sub-int/2addr v0, v2
if-lez v0, :cond_3f
invoke-virtual {p0, v0, v3}, Lcom/instagram/creation/base/ui/FilterPicker;->smoothScrollBy(II)V
:cond_3e
:goto_3e
return-void
:cond_3f
if-gez v1, :cond_3e
invoke-virtual {p0, v1, v3}, Lcom/instagram/creation/base/ui/FilterPicker;->smoothScrollBy(II)V
goto :goto_3e
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/creation/base/ui/FilterPicker; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p1, Lcom/instagram/creation/base/ui/g;
invoke-virtual {p1}, Lcom/instagram/creation/base/ui/g;->isChecked()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->b:Lcom/instagram/creation/base/ui/e;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->b:Lcom/instagram/creation/base/ui/e;
invoke-virtual {p1}, Lcom/instagram/creation/base/ui/g;->getFilter()Lcom/instagram/creation/base/ui/h;
:cond_11
const-string v1, " - Lcom/instagram/creation/base/ui/FilterPicker; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onMeasure(II)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getChildCount()I
move-result v0
if-lez v0, :cond_11
iget v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I
const/4 v1, -0x1
if-eq v0, v1, :cond_11
invoke-direct {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->b()V
:cond_11
return-void
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Lcom/instagram/creation/base/ui/FilterPicker; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
:goto_f
const-string v1, " - Lcom/instagram/creation/base/ui/FilterPicker; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_10
check-cast p1, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;
invoke-virtual {p1}, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget v0, p1, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;->a:I
invoke-direct {p0, v0}, Lcom/instagram/creation/base/ui/FilterPicker;->setRestoreScrollPosition(I)V
goto :goto_f
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Lcom/instagram/creation/base/ui/FilterPicker; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
new-instance v1, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;
invoke-direct {v1, v0}, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;-><init>(Landroid/os/Parcelable;)V
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getScrollX()I
move-result v0
iput v0, v1, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;->a:I
move-object v2, v1
const-string v1, " - Lcom/instagram/creation/base/ui/FilterPicker; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v1, v2
return-object v1
.end method
.method public setFilterListener(Lcom/instagram/creation/base/ui/e;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->b:Lcom/instagram/creation/base/ui/e;
return-void
.end method
.method public setFilters([Lcom/instagram/creation/base/ui/h;)V
.registers 8
const/4 v5, -0x1
new-instance v0, Landroid/widget/RadioGroup;
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;
iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;
sget v1, Lcom/facebook/av;->filter_tile_group:I
invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setId(I)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;
invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setGravity(I)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;
iget v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I
iget v2, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I
mul-int/lit8 v2, v2, 0x2
iget v3, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I
iget v4, p0, Lcom/instagram/creation/base/ui/FilterPicker;->d:I
mul-int/lit8 v4, v4, 0x2
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RadioGroup;->setPadding(IIII)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;
invoke-direct {p0, v0, p1}, Lcom/instagram/creation/base/ui/FilterPicker;->a(Landroid/view/ViewGroup;[Lcom/instagram/creation/base/ui/h;)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
const/4 v1, -0x2
invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
iget-object v1, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;
invoke-virtual {p0, v1, v0}, Lcom/instagram/creation/base/ui/FilterPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->getWidth()I
move-result v0
if-lez v0, :cond_53
iget v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->c:I
if-eq v0, v5, :cond_53
invoke-direct {p0}, Lcom/instagram/creation/base/ui/FilterPicker;->b()V
:cond_53
return-void
.end method
.method public setSelectedFilterIndex(I)V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/base/ui/FilterPicker;->a:Landroid/widget/RadioGroup;
invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/creation/base/ui/g;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/creation/base/ui/g;->setChecked(Z)V
return-void
.end method