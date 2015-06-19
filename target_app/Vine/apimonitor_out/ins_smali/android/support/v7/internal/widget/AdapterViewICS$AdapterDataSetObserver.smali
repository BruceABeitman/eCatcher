.class  Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterViewICS.java"
.field private mInstanceState:Landroid/os/Parcelable;
.field final synthetic this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
.method constructor <init>(Landroid/support/v7/internal/widget/AdapterViewICS;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;
return-void
.end method
.method public clearSavedState()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;
return-void
.end method
.method public onChanged()V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDataChanged:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iget-object v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iget v1, v1, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I
iput v1, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldItemCount:I
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iget-object v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v1
invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I
move-result v1
iput v1, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;
if-eqz v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iget v0, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldItemCount:I
if-nez v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iget v0, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I
if-lez v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iget-object v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;
#calls: Landroid/support/v7/internal/widget/AdapterViewICS;->onRestoreInstanceState(Landroid/os/Parcelable;)V
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/AdapterViewICS;->access$000(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/os/Parcelable;)V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;
:goto_41
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->checkFocus()V
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->requestLayout()V
return-void
:cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->rememberSyncState()V
goto :goto_41
.end method
.method public onInvalidated()V
.registers 7
const-wide/high16 v4, -0x8000
const/4 v3, 0x0
const/4 v2, -0x1
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDataChanged:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
#calls: Landroid/support/v7/internal/widget/AdapterViewICS;->onSaveInstanceState()Landroid/os/Parcelable;
invoke-static {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->access$100(Landroid/support/v7/internal/widget/AdapterViewICS;)Landroid/os/Parcelable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;
:cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iget-object v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iget v1, v1, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I
iput v1, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldItemCount:I
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iput v3, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iput v2, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iput-wide v4, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedRowId:J
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iput v2, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedPosition:I
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iput-wide v4, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedRowId:J
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
iput-boolean v3, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->checkFocus()V
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->requestLayout()V
return-void
.end method