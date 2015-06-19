.class public Lcom/twidroid/widget/CustomRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"
.field private a:Lcom/twidroid/widget/h;
.field private b:Lcom/twidroid/widget/h;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected onMeasure(II)V
.registers 9
invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V
iget-object v0, p0, Lcom/twidroid/widget/CustomRelativeLayout;->a:Lcom/twidroid/widget/h;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/twidroid/widget/CustomRelativeLayout;->a:Lcom/twidroid/widget/h;
invoke-interface {v0, p1, p2}, Lcom/twidroid/widget/h;->a(II)V
:cond_c
const/4 v0, 0x0
move v1, v0
:goto_e
invoke-virtual {p0}, Lcom/twidroid/widget/CustomRelativeLayout;->getChildCount()I
move-result v0
if-ge v1, v0, :cond_3b
invoke-virtual {p0, v1}, Lcom/twidroid/widget/CustomRelativeLayout;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
add-int/2addr v3, v4
iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
invoke-static {p1, v3, v4}, Lcom/twidroid/widget/CustomRelativeLayout;->getChildMeasureSpec(III)I
move-result v3
iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
add-int/2addr v4, v5
iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
invoke-static {p2, v4, v0}, Lcom/twidroid/widget/CustomRelativeLayout;->getChildMeasureSpec(III)I
move-result v0
invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_e
:cond_3b
iget-object v0, p0, Lcom/twidroid/widget/CustomRelativeLayout;->b:Lcom/twidroid/widget/h;
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/twidroid/widget/CustomRelativeLayout;->b:Lcom/twidroid/widget/h;
invoke-interface {v0, p1, p2}, Lcom/twidroid/widget/h;->a(II)V
:cond_44
return-void
.end method
.method public setOnPostMeasureListener(Lcom/twidroid/widget/h;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/widget/CustomRelativeLayout;->b:Lcom/twidroid/widget/h;
return-void
.end method
.method public setOnPreMeasureListener(Lcom/twidroid/widget/h;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/widget/CustomRelativeLayout;->a:Lcom/twidroid/widget/h;
return-void
.end method