.class public Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
.super Landroid/widget/HorizontalScrollView;
.source "EffectPicker.java"
.implements Landroid/view/View$OnClickListener;
.field private a:Landroid/widget/LinearLayout;
.field private b:Lcom/instagram/cliffjumper/edit/common/ui/f;
.field private c:I
.field private d:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b()V
return-void
.end method
.method private a(Landroid/view/ViewGroup;[Lcom/instagram/cliffjumper/edit/common/ui/c;)V
.registers 9
const/4 v1, 0x0
move v0, v1
:goto_2
array-length v2, p2
if-ge v0, v2, :cond_3c
new-instance v3, Lcom/instagram/cliffjumper/edit/common/ui/g;
invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v2
aget-object v4, p2, v0
sget v5, Lcom/instagram/cliffjumper/edit/common/ui/k;->d:I
invoke-direct {v3, v2, v4, v5}, Lcom/instagram/cliffjumper/edit/common/ui/g;-><init>(Landroid/content/Context;Lcom/instagram/cliffjumper/edit/common/ui/c;I)V
invoke-virtual {v3, p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setId(I)V
iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->d:I
iget v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->d:I
invoke-virtual {v3, v2, v1, v4, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setPadding(IIII)V
array-length v2, p2
add-int/lit8 v2, v2, -0x1
if-eq v0, v2, :cond_3a
const/4 v2, 0x1
:goto_25
invoke-virtual {v3, v2}, Lcom/instagram/cliffjumper/edit/common/ui/g;->a(Z)V
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/4 v4, -0x2
const/4 v5, -0x1
invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b:Lcom/instagram/cliffjumper/edit/common/ui/f;
invoke-interface {v2, v3}, Lcom/instagram/cliffjumper/edit/common/ui/f;->a(Lcom/instagram/cliffjumper/edit/common/ui/g;)V
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_3a
move v2, v1
goto :goto_25
:cond_3c
return-void
.end method
.method private a(Lcom/instagram/cliffjumper/edit/common/ui/g;Z)V
.registers 7
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getLeft()I
move-result v0
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getWidth()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getScrollX()I
move-result v1
sub-int v1, v0, v1
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getRight()I
move-result v0
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getWidth()I
move-result v3
add-int/2addr v0, v3
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getWidth()I
move-result v3
sub-int/2addr v0, v3
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getScrollX()I
move-result v3
sub-int/2addr v0, v3
if-lez v0, :cond_60
:goto_25
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getWidth()I
move-result v1
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getPaddingLeft()I
move-result v3
sub-int/2addr v1, v3
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getPaddingRight()I
move-result v3
sub-int/2addr v1, v3
invoke-virtual {p0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getWidth()I
move-result v3
sub-int v1, v3, v1
invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getScrollX()I
move-result v3
add-int/2addr v0, v3
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getScrollX()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0, v0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->smoothScrollBy(II)V
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b:Lcom/instagram/cliffjumper/edit/common/ui/f;
if-eqz v1, :cond_5f
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b:Lcom/instagram/cliffjumper/edit/common/ui/f;
invoke-interface {v1, p1, p2, v0}, Lcom/instagram/cliffjumper/edit/common/ui/f;->a(Lcom/instagram/cliffjumper/edit/common/ui/g;ZI)V
:cond_5f
return-void
:cond_60
if-gez v1, :cond_64
move v0, v1
goto :goto_25
:cond_64
move v0, v2
goto :goto_25
.end method
.method private b()V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setHorizontalFadingEdgeEnabled(Z)V
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setHorizontalScrollBarEnabled(Z)V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->effect_tile_padding:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
div-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->d:I
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->a(Landroid/content/res/Resources;)I
move-result v0
sget v1, Lcom/instagram/creation/base/ui/c;->d:I
if-ne v0, v1, :cond_27
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->d:I
div-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->d:I
:cond_27
return-void
.end method
.method private c()V
.registers 3
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I
const/4 v1, -0x1
iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I
new-instance v1, Lcom/instagram/cliffjumper/edit/common/ui/d;
invoke-direct {v1, p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/d;-><init>(Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;I)V
invoke-virtual {p0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private setRestoreScrollPosition(I)V
.registers 2
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I
return-void
.end method
.method public final a()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/g;
invoke-direct {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a(Lcom/instagram/cliffjumper/edit/common/ui/g;Z)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p1, Lcom/instagram/cliffjumper/edit/common/ui/g;
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a(Lcom/instagram/cliffjumper/edit/common/ui/g;Z)V
const-string v1, " - Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker; onClick"
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
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getChildCount()I
move-result v0
if-lez v0, :cond_11
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I
const/4 v1, -0x1
if-eq v0, v1, :cond_11
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c()V
:cond_11
return-void
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
:goto_f
const-string v1, " - Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_10
check-cast p1, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget v0, p1, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;->a:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setRestoreScrollPosition(I)V
goto :goto_f
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
new-instance v1, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;
invoke-direct {v1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;-><init>(Landroid/os/Parcelable;)V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getScrollX()I
move-result v0
iput v0, v1, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState;->a:I
move-object v2, v1
const-string v1, " - Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v1, v2
return-object v1
.end method
.method public setEffects([Lcom/instagram/cliffjumper/edit/common/ui/c;)V
.registers 4
new-instance v0, Landroid/widget/LinearLayout;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;
sget v1, Lcom/facebook/av;->filter_tile_group:I
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;
invoke-direct {p0, v0, p1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a(Landroid/view/ViewGroup;[Lcom/instagram/cliffjumper/edit/common/ui/c;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->getWidth()I
move-result v0
if-lez v0, :cond_37
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c:I
const/4 v1, -0x1
if-eq v0, v1, :cond_37
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->c()V
:cond_37
return-void
.end method
.method public setFilterListener(Lcom/instagram/cliffjumper/edit/common/ui/f;)V
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->b:Lcom/instagram/cliffjumper/edit/common/ui/f;
return-void
.end method