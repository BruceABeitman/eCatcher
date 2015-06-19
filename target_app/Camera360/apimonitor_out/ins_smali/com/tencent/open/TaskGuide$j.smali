.class  Lcom/tencent/open/TaskGuide$j;
.super Landroid/widget/RelativeLayout;
.source "ProGuard"
.field  a:I
.field final synthetic b:Lcom/tencent/open/TaskGuide;
.method public constructor <init>(Lcom/tencent/open/TaskGuide;Landroid/content/Context;)V
.registers 4
iput-object p1, p0, Lcom/tencent/open/TaskGuide$j;->b:Lcom/tencent/open/TaskGuide;
invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput v0, p0, Lcom/tencent/open/TaskGuide$j;->a:I
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 6
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
float-to-int v0, v0
const-string/jumbo v1, "XXXX"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "onInterceptTouchEvent-- action = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "currentY = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/tencent/open/TaskGuide$j;->b:Lcom/tencent/open/TaskGuide;
const/16 v2, 0xbb8
invoke-static {v1, v2}, Lcom/tencent/open/TaskGuide;->e(Lcom/tencent/open/TaskGuide;I)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
packed-switch v1, :pswitch_data_58
:cond_3c
invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_40
return v0
:pswitch_41
iput v0, p0, Lcom/tencent/open/TaskGuide$j;->a:I
const/4 v0, 0x0
goto :goto_40
:pswitch_45
iget v1, p0, Lcom/tencent/open/TaskGuide$j;->a:I
sub-int v0, v1, v0
invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I
move-result v1
mul-int/lit8 v1, v1, 0x2
if-le v0, v1, :cond_3c
iget-object v0, p0, Lcom/tencent/open/TaskGuide$j;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->q(Lcom/tencent/open/TaskGuide;)V
const/4 v0, 0x1
goto :goto_40
:pswitch_data_58
.packed-switch 0x0
:pswitch_41
:pswitch_45
.end packed-switch
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 6
invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
float-to-int v0, v0
const-string/jumbo v1, "XXXX"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, " onTouchEvent-----startY = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p0, Lcom/tencent/open/TaskGuide$j;->a:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "currentY = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
packed-switch v1, :pswitch_data_4e
:pswitch_36
:goto_36
:cond_36
const/4 v0, 0x0
return v0
:pswitch_38
iput v0, p0, Lcom/tencent/open/TaskGuide$j;->a:I
goto :goto_36
:pswitch_3b
iget v1, p0, Lcom/tencent/open/TaskGuide$j;->a:I
sub-int v0, v1, v0
invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I
move-result v1
mul-int/lit8 v1, v1, 0x2
if-le v0, v1, :cond_36
iget-object v0, p0, Lcom/tencent/open/TaskGuide$j;->b:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->q(Lcom/tencent/open/TaskGuide;)V
goto :goto_36
nop
:pswitch_data_4e
.packed-switch 0x0
:pswitch_38
:pswitch_3b
:pswitch_36
.end packed-switch
.end method