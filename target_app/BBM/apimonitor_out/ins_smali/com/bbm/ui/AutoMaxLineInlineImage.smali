.class public Lcom/bbm/ui/AutoMaxLineInlineImage;
.super Lcom/bbm/ui/CustomView;
.source "AutoMaxLineInlineImage.java"
.field private a:Lcom/bbm/ui/InlineImageTextView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/AutoMaxLineInlineImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 9
const/4 v3, -0x1
invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
const/4 v1, -0x2
const/high16 v2, 0x3f80
invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
new-instance v1, Lcom/bbm/ui/InlineImageTextView;
invoke-direct {v1, p1}, Lcom/bbm/ui/InlineImageTextView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v1, v3}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v1, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0b0196
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F
move-result v3
invoke-virtual {v1, v2, v3}, Lcom/bbm/ui/InlineImageTextView;->setTextSize(IF)V
iget-object v1, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v1, v2}, Lcom/bbm/ui/InlineImageTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v1, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v1, v0}, Lcom/bbm/ui/InlineImageTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
const/16 v1, 0x30
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setGravity(I)V
iget-object v0, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {p0, v0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->addView(Landroid/view/View;)V
return-void
.end method
.method private static a(II)I
.registers 4
invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
sparse-switch v1, :sswitch_data_14
const/4 p1, 0x0
:goto_c
:sswitch_c
return p1
:sswitch_d
invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I
move-result p1
goto :goto_c
:sswitch_12
move p1, v0
goto :goto_c
:sswitch_data_14
.sparse-switch
-0x80000000 -> :sswitch_d
0x0 -> :sswitch_c
0x40000000 -> :sswitch_12
.end sparse-switch
.end method
.method protected onLayout(ZIIII)V
.registers 12
sub-int v0, p5, p3
iget-object v1, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v1}, Lcom/bbm/ui/InlineImageTextView;->getLineHeight()I
move-result v1
div-int/2addr v0, v1
iget-object v1, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v1}, Lcom/bbm/ui/InlineImageTextView;->getLineHeight()I
move-result v1
mul-int/2addr v0, v1
iget-object v1, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {p0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->getPaddingLeft()I
move-result v2
invoke-virtual {p0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->getPaddingTop()I
move-result v3
iget-object v4, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v4}, Lcom/bbm/ui/InlineImageTextView;->getMeasuredWidth()I
move-result v4
iget-object v5, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v5}, Lcom/bbm/ui/InlineImageTextView;->getMeasuredHeight()I
move-result v5
invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bbm/ui/InlineImageTextView;->layout(IIII)V
return-void
.end method
.method protected onMeasure(II)V
.registers 11
const/4 v1, 0x0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
invoke-virtual {p0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->getPaddingLeft()I
move-result v0
invoke-virtual {p0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->getPaddingRight()I
move-result v3
add-int/2addr v3, v0
invoke-virtual {p0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->getPaddingTop()I
move-result v0
invoke-virtual {p0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->getPaddingBottom()I
move-result v4
add-int/2addr v4, v0
iget-object v5, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
neg-int v0, v3
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v6
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v7
if-nez v6, :cond_61
move v0, v1
:goto_28
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v6
if-eqz v6, :cond_45
invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
sub-int/2addr v1, v4
iget-object v2, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v2}, Lcom/bbm/ui/InlineImageTextView;->getLineHeight()I
move-result v2
div-int/2addr v1, v2
iget-object v2, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v2}, Lcom/bbm/ui/InlineImageTextView;->getLineHeight()I
move-result v2
mul-int/2addr v1, v2
invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
:cond_45
invoke-virtual {v5, v0, v1}, Landroid/view/View;->measure(II)V
invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
add-int/2addr v0, v3
invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
add-int/2addr v1, v4
invoke-static {p1, v0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->a(II)I
move-result v2
invoke-static {p2, v1}, Lcom/bbm/ui/AutoMaxLineInlineImage;->a(II)I
move-result v3
invoke-virtual {p0, v2, v3}, Lcom/bbm/ui/AutoMaxLineInlineImage;->setMeasuredDimension(II)V
invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/AutoMaxLineInlineImage;->setMeasuredDimension(II)V
return-void
:cond_61
add-int/2addr v0, v7
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
goto :goto_28
.end method
.method public setText(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, p1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setText(Ljava/lang/CharSequence;I)V
.registers 6
invoke-virtual {p0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->getResources()Landroid/content/res/Resources;
move-result-object v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/InlineImageTextView;->setTextSize(IF)V
:cond_14
iget-object v0, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, p1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setText(Ljava/lang/CharSequence;II)V
.registers 7
invoke-virtual {p0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->getResources()Landroid/content/res/Resources;
move-result-object v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/AutoMaxLineInlineImage;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/InlineImageTextView;->setTextSize(IF)V
:cond_14
iget-object v0, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, p3}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/AutoMaxLineInlineImage;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, p1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method