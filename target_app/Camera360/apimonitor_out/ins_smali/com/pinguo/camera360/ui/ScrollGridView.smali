.class public Lcom/pinguo/camera360/ui/ScrollGridView;
.super Landroid/widget/GridView;
.source "ScrollGridView.java"
.field private haveScrollbar:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/ui/ScrollGridView;->haveScrollbar:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/ui/ScrollGridView;->haveScrollbar:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/ui/ScrollGridView;->haveScrollbar:Z
return-void
.end method
.method protected onMeasure(II)V
.registers 6
iget-boolean v1, p0, Lcom/pinguo/camera360/ui/ScrollGridView;->haveScrollbar:Z
if-nez v1, :cond_11
const v1, 0x1fffffff
const/high16 v2, -0x8000
invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V
:goto_10
return-void
:cond_11
invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V
goto :goto_10
.end method