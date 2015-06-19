.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
.super Landroid/widget/FrameLayout;
.source "StickyGridHeadersBaseAdapterWrapper.java"
.field final synthetic a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
.field private b:I
.method public constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 2
invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
.registers 3
const/4 v1, -0x1
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
return-object v0
.end method
.method public getHeaderId()I
.registers 2
iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->b:I
return v0
.end method
.method public getListHeaderViewLeftLabel()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/bbm/ui/ListHeaderView;
if-eqz v0, :cond_28
invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ListHeaderView;
invoke-virtual {v0}, Lcom/bbm/ui/ListHeaderView;->getLeftLabel()Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
if-eqz v1, :cond_25
invoke-virtual {v0}, Lcom/bbm/ui/ListHeaderView;->getLeftLabel()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
:goto_24
return-object v0
:cond_25
const-string v0, ""
goto :goto_24
:cond_28
const/4 v0, 0x0
goto :goto_24
.end method
.method public getListHeaderViewRightLabel()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/bbm/ui/ListHeaderView;
if-eqz v0, :cond_28
invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ListHeaderView;
invoke-virtual {v0}, Lcom/bbm/ui/ListHeaderView;->getRightLabel()Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
if-eqz v1, :cond_25
invoke-virtual {v0}, Lcom/bbm/ui/ListHeaderView;->getRightLabel()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
:goto_24
return-object v0
:cond_25
const-string v0, ""
goto :goto_24
:cond_28
const/4 v0, 0x0
goto :goto_24
.end method
.method protected onMeasure(II)V
.registers 9
const/4 v5, 0x0
invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-nez v1, :cond_14
invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_14
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v2
const/16 v3, 0x8
if-eq v2, v3, :cond_3f
invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-static {v2, v5, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getChildMeasureSpec(III)I
move-result v2
iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
invoke-static {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
move-result-object v3
invoke-virtual {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I
move-result v3
const/high16 v4, 0x4000
invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-static {v3, v5, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getChildMeasureSpec(III)I
move-result v1
invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V
:cond_3f
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
invoke-virtual {p0, v1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setMeasuredDimension(II)V
return-void
.end method
.method public setHeaderId(I)V
.registers 2
iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->b:I
return-void
.end method