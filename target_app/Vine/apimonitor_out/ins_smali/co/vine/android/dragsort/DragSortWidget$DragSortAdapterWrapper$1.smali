.class  Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortWidget.java"
.field final synthetic this$1:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
.method constructor <init>(Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;)V
.registers 2
iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper$1;->this$1:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public onChanged()V
.registers 2
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper$1;->this$1:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
invoke-virtual {v0}, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->notifyDataSetChanged()V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper$1;->this$1:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
iget-object v0, v0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#calls: Lco/vine/android/dragsort/DragSortWidget;->adjustItems()V
invoke-static {v0}, Lco/vine/android/dragsort/DragSortWidget;->access$1200(Lco/vine/android/dragsort/DragSortWidget;)V
return-void
.end method