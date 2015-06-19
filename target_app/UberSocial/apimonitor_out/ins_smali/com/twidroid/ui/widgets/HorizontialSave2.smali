.class public Lcom/twidroid/ui/widgets/HorizontialSave2;
.super Landroid/widget/Gallery;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public a()V
.registers 4
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialSave2;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialSave2;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v0
if-eqz v0, :cond_6
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialSave2;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0a004a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v0
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialSave2;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v2
invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v2
div-int/2addr v0, v2
if-ge v0, v1, :cond_36
move v0, v1
:cond_36
invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/HorizontialSave2;->setSpacing(I)V
goto :goto_6
.end method
.method public setCurrentTabByTag(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
move v1, v0
:goto_2
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialSave2;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v0
if-ge v1, v0, :cond_27
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialSave2;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/c/h;
invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_23
invoke-virtual {p0, v1}, Lcom/twidroid/ui/widgets/HorizontialSave2;->setSelection(I)V
:cond_23
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_27
return-void
.end method