.class public Lcom/viewpagerindicator/TabPageIndicator$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:Lcom/viewpagerindicator/TabPageIndicator;
.field private b:I
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public a(Lcom/viewpagerindicator/TabPageIndicator;Ljava/lang/String;I)V
.registers 5
iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->a:Lcom/viewpagerindicator/TabPageIndicator;
iput p3, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->b:I
const v0, 0x1020014
invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public getIndex()I
.registers 2
iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->b:I
return v0
.end method
.method public onMeasure(II)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->a:Lcom/viewpagerindicator/TabPageIndicator;
iget v0, v0, Lcom/viewpagerindicator/TabPageIndicator;->b:I
if-lez v0, :cond_20
invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->getMeasuredWidth()I
move-result v0
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->a:Lcom/viewpagerindicator/TabPageIndicator;
iget v1, v1, Lcom/viewpagerindicator/TabPageIndicator;->b:I
if-le v0, v1, :cond_20
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->a:Lcom/viewpagerindicator/TabPageIndicator;
iget v0, v0, Lcom/viewpagerindicator/TabPageIndicator;->b:I
const/high16 v1, 0x4000
invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
:cond_20
return-void
.end method