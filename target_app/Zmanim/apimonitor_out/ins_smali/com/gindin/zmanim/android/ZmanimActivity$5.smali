.class  Lcom/gindin/zmanim/android/ZmanimActivity$5;
.super Ljava/lang/Object;
.source "ZmanimActivity.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$5;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$5;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->gestureDetector:Landroid/view/GestureDetector;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$400(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/view/GestureDetector;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method