.class public Lcom/bbm/ui/activities/UnmeasuredLayout;
.super Landroid/view/ViewGroup;
.source "UnmeasuredLayout.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/activities/UnmeasuredLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/activities/UnmeasuredLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method private getView()Lcom/google/b/a/l;
.registers 2
invoke-virtual {p0}, Lcom/bbm/ui/activities/UnmeasuredLayout;->getChildCount()I
move-result v0
if-lez v0, :cond_10
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/UnmeasuredLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
:goto_f
return-object v0
:cond_10
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
goto :goto_f
.end method
.method protected onLayout(ZIIII)V
.registers 12
const/high16 v4, 0x4000
const/4 v5, 0x0
sub-int v1, p5, p3
sub-int v2, p4, p2
invoke-direct {p0}, Lcom/bbm/ui/activities/UnmeasuredLayout;->getView()Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v3
if-eqz v3, :cond_25
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V
invoke-virtual {v0, v5, v5, v2, v1}, Landroid/view/View;->layout(IIII)V
:cond_25
return-void
.end method
.method protected onMeasure(II)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/UnmeasuredLayout;->setMeasuredDimension(II)V
return-void
.end method