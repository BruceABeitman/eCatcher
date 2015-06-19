.class public Lcom/tencent/weibo/sdk/android/component/LetterListView;
.super Landroid/view/View;
.source "LetterListView.java"
.field  b:Ljava/util/List;
.field  choose:I
.field  onTouchingLetterChangedListener:Lcom/tencent/weibo/sdk/android/component/LetterListView$OnTouchingLetterChangedListener;
.field  paint:Landroid/graphics/Paint;
.field  showBkg:Z
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, -0x1
iput v0, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->choose:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->showBkg:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, -0x1
iput v0, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->choose:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->showBkg:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
.registers 4
invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
const/4 v0, -0x1
iput v0, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->choose:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->showBkg:Z
iput-object p2, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->b:Ljava/util/List;
return-void
.end method
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.registers 10
const/4 v7, 0x1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v4
iget v3, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->choose:I
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->onTouchingLetterChangedListener:Lcom/tencent/weibo/sdk/android/component/LetterListView$OnTouchingLetterChangedListener;
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/LetterListView;->getHeight()I
move-result v5
int-to-float v5, v5
div-float v5, v4, v5
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->b:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v6
int-to-float v6, v6
mul-float/2addr v5, v6
float-to-int v1, v5
packed-switch v0, :pswitch_data_5c
:goto_20
:cond_20
return v7
:pswitch_21
iput-boolean v7, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->showBkg:Z
if-eq v3, v1, :cond_20
if-eqz v2, :cond_20
if-ltz v1, :cond_20
iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->b:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
if-ge v1, v5, :cond_20
invoke-interface {v2, v1}, Lcom/tencent/weibo/sdk/android/component/LetterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(I)V
iput v1, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->choose:I
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/LetterListView;->invalidate()V
goto :goto_20
:pswitch_3a
if-eq v3, v1, :cond_20
if-eqz v2, :cond_20
if-ltz v1, :cond_20
iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->b:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
if-ge v1, v5, :cond_20
invoke-interface {v2, v1}, Lcom/tencent/weibo/sdk/android/component/LetterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(I)V
iput v1, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->choose:I
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/LetterListView;->invalidate()V
goto :goto_20
:pswitch_51
const/4 v5, 0x0
iput-boolean v5, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->showBkg:Z
const/4 v5, -0x1
iput v5, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->choose:I
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/LetterListView;->invalidate()V
goto :goto_20
nop
:pswitch_data_5c
.packed-switch 0x0
:pswitch_21
:pswitch_51
:pswitch_3a
.end packed-switch
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 12
const/4 v9, 0x1
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
iget-boolean v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->showBkg:Z
if-eqz v6, :cond_12
const-string/jumbo v6, "#00000000"
invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v6
invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V
:cond_12
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/LetterListView;->getHeight()I
move-result v0
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/LetterListView;->getWidth()I
move-result v6
add-int/lit8 v3, v6, -0x1e
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->b:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v6
if-lez v6, :cond_35
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->b:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v6
div-int v2, v0, v6
const/4 v1, 0x0
:goto_2d
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->b:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v6
if-lt v1, v6, :cond_36
:cond_35
return-void
:cond_36
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
const-string/jumbo v7, "#2796c4"
invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v7
invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
const/high16 v7, 0x4188
invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->choose:I
if-ne v1, v6, :cond_66
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
const v7, -0x777778
invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V
:cond_66
div-int/lit8 v6, v3, 0x2
int-to-float v7, v6
iget-object v8, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->b:Ljava/util/List;
invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
move-result v6
const/high16 v8, 0x4000
div-float/2addr v6, v8
sub-float v4, v7, v6
mul-int v6, v2, v1
add-int/2addr v6, v2
int-to-float v5, v6
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->b:Ljava/util/List;
invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v6
iget-object v7, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->paint:Landroid/graphics/Paint;
invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V
add-int/lit8 v1, v1, 0x1
goto :goto_2d
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public setB(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->b:Ljava/util/List;
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/LetterListView;->invalidate()V
return-void
.end method
.method public setOnTouchingLetterChangedListener(Lcom/tencent/weibo/sdk/android/component/LetterListView$OnTouchingLetterChangedListener;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/LetterListView;->onTouchingLetterChangedListener:Lcom/tencent/weibo/sdk/android/component/LetterListView$OnTouchingLetterChangedListener;
return-void
.end method