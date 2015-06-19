.class final Lcom/spotify/android/paste/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/android/paste/widget/b;
.field final synthetic a:Lcom/spotify/android/paste/widget/CardView;
.method private constructor <init>(Lcom/spotify/android/paste/widget/CardView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/android/paste/widget/CardView;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/android/paste/widget/c;-><init>(Lcom/spotify/android/paste/widget/CardView;)V
return-void
.end method
.method public final a(II)V
.registers 13
const/high16 v8, -0x8000
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->a()I
move-result v4
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
sub-int/2addr v0, v4
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v3
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v5
invoke-static {v2}, Lcom/spotify/android/paste/widget/CardView;->b(I)I
move-result v0
invoke-static {v3}, Lcom/spotify/android/paste/widget/CardView;->b(I)I
move-result v2
invoke-static {v5}, Lcom/spotify/android/paste/widget/CardView;->b(I)I
move-result v3
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v5
sparse-switch v5, :sswitch_data_106
:goto_2d
move v0, v1
move v2, v1
:goto_2f
iget-object v3, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/CardView;->getPaddingLeft()I
move-result v3
iget-object v5, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v5}, Lcom/spotify/android/paste/widget/CardView;->getPaddingRight()I
move-result v5
add-int/2addr v3, v5
iget-object v5, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v5}, Lcom/spotify/android/paste/widget/CardView;->getPaddingTop()I
move-result v5
iget-object v6, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v6}, Lcom/spotify/android/paste/widget/CardView;->getPaddingBottom()I
move-result v6
add-int/2addr v5, v6
iget-object v6, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v6}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;
move-result-object v6
invoke-static {v2, v3}, Lcom/spotify/android/paste/widget/CardView;->a(II)I
move-result v2
invoke-static {v0, v5}, Lcom/spotify/android/paste/widget/CardView;->a(II)I
move-result v0
invoke-virtual {v6, v2, v0}, Landroid/widget/ImageView;->measure(II)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v0
iget-object v2, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v2}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v2
iget-object v6, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v6}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;
move-result-object v6
if-eqz v6, :cond_87
iget-object v6, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v6}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;
move-result-object v6
invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v7
invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->measure(II)V
:cond_87
iget-object v6, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v6}, Lcom/spotify/android/paste/widget/CardView;->c(Lcom/spotify/android/paste/widget/CardView;)I
move-result v6
mul-int/lit8 v6, v6, 0x2
sub-int v6, v0, v6
const/high16 v7, 0x4000
invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v6
iget-object v7, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v7}, Lcom/spotify/android/paste/widget/CardView;->d(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
move-result-object v7
invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->measure(II)V
iget-object v7, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v7}, Lcom/spotify/android/paste/widget/CardView;->e(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
move-result-object v7
invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->measure(II)V
iget-object v7, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v7}, Lcom/spotify/android/paste/widget/CardView;->f(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
move-result-object v7
invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-virtual {v7, v6, v1}, Landroid/widget/TextView;->measure(II)V
add-int/2addr v0, v3
add-int v1, v2, v4
add-int/2addr v1, v5
iget-object v2, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v2, v0, v1}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;II)V
return-void
:sswitch_c8
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v5
sparse-switch v5, :sswitch_data_114
goto/16 :goto_2d
:sswitch_d1
move v2, v0
move v0, v3
goto/16 :goto_2f
:sswitch_d5
move v9, v2
move v2, v0
move v0, v9
goto/16 :goto_2f
:sswitch_da
move v2, v0
goto/16 :goto_2f
:sswitch_dd
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v5
sparse-switch v5, :sswitch_data_122
goto/16 :goto_2d
:sswitch_e6
move v0, v3
move v2, v3
goto/16 :goto_2f
:sswitch_ea
move v0, v2
move v2, v3
goto/16 :goto_2f
:sswitch_ee
move v2, v0
goto/16 :goto_2f
:sswitch_f1
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v3
sparse-switch v3, :sswitch_data_130
goto/16 :goto_2d
:sswitch_fa
move v0, v2
goto/16 :goto_2f
:sswitch_fd
move v0, v2
goto/16 :goto_2f
:sswitch_100
move v9, v2
move v2, v0
move v0, v9
goto/16 :goto_2f
nop
:sswitch_data_122
.sparse-switch
-0x80000000 -> :sswitch_e6
0x0 -> :sswitch_ee
0x40000000 -> :sswitch_ea
.end sparse-switch
:sswitch_data_114
.sparse-switch
-0x80000000 -> :sswitch_d1
0x0 -> :sswitch_da
0x40000000 -> :sswitch_d5
.end sparse-switch
:sswitch_data_106
.sparse-switch
-0x80000000 -> :sswitch_dd
0x0 -> :sswitch_f1
0x40000000 -> :sswitch_c8
.end sparse-switch
:sswitch_data_130
.sparse-switch
-0x80000000 -> :sswitch_fa
0x0 -> :sswitch_100
0x40000000 -> :sswitch_fd
.end sparse-switch
.end method
.method public final a(IIII)V
.registers 14
iget-object v0, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->getPaddingLeft()I
move-result v0
iget-object v1, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/CardView;->getPaddingTop()I
move-result v1
sub-int v2, p3, p1
iget-object v3, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/CardView;->getPaddingRight()I
move-result v3
sub-int/2addr v2, v3
sub-int v3, p4, p2
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v4}, Lcom/spotify/android/paste/widget/CardView;->getPaddingBottom()I
move-result v4
sub-int/2addr v3, v4
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;
move-result-object v4
iget-object v5, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v5}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;
move-result-object v5
invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v5
add-int/2addr v5, v1
invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/ImageView;->layout(IIII)V
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v4
add-int/2addr v1, v4
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;
move-result-object v4
if-eqz v4, :cond_84
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;
move-result-object v4
iget-object v5, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v5}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;
move-result-object v5
invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I
move-result v5
sub-int v5, v2, v5
iget-object v6, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v6}, Lcom/spotify/android/paste/widget/CardView;->g(Lcom/spotify/android/paste/widget/CardView;)I
move-result v6
sub-int/2addr v5, v6
iget-object v6, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v6}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;
move-result-object v6
invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I
move-result v6
sub-int v6, v1, v6
iget-object v7, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v7}, Lcom/spotify/android/paste/widget/CardView;->g(Lcom/spotify/android/paste/widget/CardView;)I
move-result v7
sub-int/2addr v6, v7
iget-object v7, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v7}, Lcom/spotify/android/paste/widget/CardView;->g(Lcom/spotify/android/paste/widget/CardView;)I
move-result v7
sub-int v7, v2, v7
iget-object v8, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v8}, Lcom/spotify/android/paste/widget/CardView;->g(Lcom/spotify/android/paste/widget/CardView;)I
move-result v8
sub-int v8, v1, v8
invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/ViewGroup;->layout(IIII)V
:cond_84
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->c(Lcom/spotify/android/paste/widget/CardView;)I
move-result v4
add-int/2addr v0, v4
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->c(Lcom/spotify/android/paste/widget/CardView;)I
move-result v4
add-int/2addr v1, v4
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->c(Lcom/spotify/android/paste/widget/CardView;)I
move-result v4
sub-int/2addr v2, v4
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->c(Lcom/spotify/android/paste/widget/CardView;)I
move-result v4
sub-int/2addr v3, v4
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->d(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
move-result-object v4
iget-object v5, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v5}, Lcom/spotify/android/paste/widget/CardView;->d(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
move-result-object v5
invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v5
add-int/2addr v5, v1
invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/TextView;->layout(IIII)V
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->d(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v4
add-int/2addr v1, v4
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->e(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
move-result-object v4
iget-object v5, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v5}, Lcom/spotify/android/paste/widget/CardView;->e(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
move-result-object v5
invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v5
add-int/2addr v5, v1
invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/TextView;->layout(IIII)V
iget-object v1, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v1}, Lcom/spotify/android/paste/widget/CardView;->f(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
move-result-object v1
iget-object v4, p0, Lcom/spotify/android/paste/widget/c;->a:Lcom/spotify/android/paste/widget/CardView;
invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->f(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v4
sub-int v4, v3, v4
invoke-virtual {v1, v0, v4, v2, v3}, Landroid/widget/TextView;->layout(IIII)V
return-void
.end method