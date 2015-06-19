.class  Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$1;
.super Ljava/lang/Object;
.source "BalloonItemizedOverlay.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;
.field final synthetic val$thisIndex:I
.method constructor <init>(Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;I)V
.registers 3
iput-object p1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$1;->this$0:Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;
iput p2, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$1;->val$thisIndex:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$1; onTouch "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x0
const/4 v6, 0x1
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v4
check-cast v4, Landroid/view/View;
const/high16 v5, 0x7f09
invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v4
if-nez v4, :cond_2a
new-array v3, v6, [I
const v4, 0x10100a7
aput v4, v3, v7
invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z
move-result v4
if-eqz v4, :cond_28
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
:cond_28
move v4, v6
:goto_29
const-string v1, " - Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$1; onTouch"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v4
:cond_2a
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v4
if-ne v4, v6, :cond_44
new-array v2, v7, [I
invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z
move-result v4
if-eqz v4, :cond_3b
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
:cond_3b
iget-object v4, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$1;->this$0:Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;
iget v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$1;->val$thisIndex:I
invoke-virtual {v4, v5}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->onBalloonTap(I)Z
move v4, v6
goto :goto_29
:cond_44
move v4, v7
goto :goto_29
.end method