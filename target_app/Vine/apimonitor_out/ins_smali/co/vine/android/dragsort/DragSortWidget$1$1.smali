.class  Lco/vine/android/dragsort/DragSortWidget$1$1;
.super Ljava/lang/Object;
.source "DragSortWidget.java"
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.field final synthetic this$1:Lco/vine/android/dragsort/DragSortWidget$1;
.method constructor <init>(Lco/vine/android/dragsort/DragSortWidget$1;)V
.registers 2
iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$1$1;->this$1:Lco/vine/android/dragsort/DragSortWidget$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.registers 3
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$1$1;->this$1:Lco/vine/android/dragsort/DragSortWidget$1;
iget-object v0, v0, Lco/vine/android/dragsort/DragSortWidget$1;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v0}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/views/HorizontalListView;->invalidate()V
return-void
.end method