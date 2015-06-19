.class  Lcom/umeng/fb/h;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/umeng/fb/ConversationActivity;
.method constructor <init>(Lcom/umeng/fb/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Landroid/view/MotionEvent;)V
.registers 10
const/4 v1, 0x0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I
move-result v2
move v0, v1
:goto_6
if-lt v0, v2, :cond_9
return-void
:cond_9
iget-object v3, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
invoke-static {v3}, Lcom/umeng/fb/ConversationActivity;->b(Lcom/umeng/fb/ConversationActivity;)Landroid/widget/ListView;
move-result-object v3
invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v3
if-nez v3, :cond_54
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F
move-result v3
float-to-int v3, v3
iget-object v4, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
invoke-static {v4}, Lcom/umeng/fb/ConversationActivity;->c(Lcom/umeng/fb/ConversationActivity;)I
move-result v4
sub-int/2addr v3, v4
iget-object v4, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget v4, v4, Lcom/umeng/fb/ConversationActivity;->b:I
sub-int/2addr v3, v4
int-to-double v3, v3
const-wide v5, 0x3ffb333333333333L
div-double/2addr v3, v5
double-to-int v3, v3
iget-object v4, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v4, v4, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v4, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v4, v4, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
iget-object v5, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v5, v5, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getPaddingLeft()I
move-result v5
iget-object v6, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v6, v6, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingRight()I
move-result v6
iget-object v7, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v7, v7, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getPaddingBottom()I
move-result v7
invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V
:cond_54
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 9
const/4 v5, 0x0
iget-object v0, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
invoke-static {v0}, Lcom/umeng/fb/ConversationActivity;->b(Lcom/umeng/fb/ConversationActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
const/4 v1, 0x2
if-ge v0, v1, :cond_13
:cond_12
:goto_12
return v5
:cond_13
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_b6
goto :goto_12
:pswitch_1b
iget-object v0, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
float-to-int v1, v1
invoke-static {v0, v1}, Lcom/umeng/fb/ConversationActivity;->a(Lcom/umeng/fb/ConversationActivity;I)V
goto :goto_12
:pswitch_26
iget-object v0, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
invoke-static {v0}, Lcom/umeng/fb/ConversationActivity;->b(Lcom/umeng/fb/ConversationActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I
move-result v0
iget-object v1, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget v1, v1, Lcom/umeng/fb/ConversationActivity;->b:I
add-int/lit8 v1, v1, 0x14
if-ge v0, v1, :cond_4c
iget-object v0, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I
move-result v0
if-lez v0, :cond_77
:cond_4c
iget-object v0, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v1, v1, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I
move-result v1
iget-object v2, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget v2, v2, Lcom/umeng/fb/ConversationActivity;->c:I
iget-object v3, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v3, v3, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I
move-result v3
iget-object v4, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v4, v4, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I
move-result v4
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V
goto :goto_12
:cond_77
iget-object v0, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
invoke-static {v0}, Lcom/umeng/fb/ConversationActivity;->b(Lcom/umeng/fb/ConversationActivity;)Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
iget-object v0, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v1, v1, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I
move-result v1
iget-object v2, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget v2, v2, Lcom/umeng/fb/ConversationActivity;->b:I
neg-int v2, v2
iget-object v3, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v3, v3, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I
move-result v3
iget-object v4, p0, Lcom/umeng/fb/h;->a:Lcom/umeng/fb/ConversationActivity;
iget-object v4, v4, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I
move-result v4
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V
goto/16 :goto_12
:pswitch_b0
invoke-direct {p0, p2}, Lcom/umeng/fb/h;->a(Landroid/view/MotionEvent;)V
goto/16 :goto_12
nop
:pswitch_data_b6
.packed-switch 0x0
:pswitch_1b
:pswitch_26
:pswitch_b0
.end packed-switch
.end method