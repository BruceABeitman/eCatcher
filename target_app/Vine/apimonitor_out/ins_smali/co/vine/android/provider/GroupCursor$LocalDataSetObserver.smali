.class  Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "GroupCursor.java"
.field final synthetic this$0:Lco/vine/android/provider/GroupCursor;
.method public constructor <init>(Lco/vine/android/provider/GroupCursor;)V
.registers 2
iput-object p1, p0, Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;->this$0:Lco/vine/android/provider/GroupCursor;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public onChanged()V
.registers 2
iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;->this$0:Lco/vine/android/provider/GroupCursor;
iget-object v0, v0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;
invoke-virtual {v0}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->notifyChanged()V
return-void
.end method
.method public onInvalidated()V
.registers 2
iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;->this$0:Lco/vine/android/provider/GroupCursor;
iget-object v0, v0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;
invoke-virtual {v0}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->notifyInvalidated()V
return-void
.end method