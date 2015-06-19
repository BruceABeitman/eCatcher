.class  Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
.super Landroid/widget/HeaderViewListAdapter;
.source "RefreshableListView.java"
.field private final mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;
.field private mRegistered:Z
.field final synthetic this$0:Lcom/twitter/android/widget/RefreshableListView;
.method public constructor <init>(Lcom/twitter/android/widget/RefreshableListView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;)V
.registers 6
iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-direct {p0, p2, p3, p4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
iput-object p5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;
invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->registerDataSetObserver()V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
iget v0, v0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
const/16 v1, 0x22
invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z
move-result v0
if-eqz v0, :cond_15
if-nez p1, :cond_e
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
add-int/lit8 v0, p1, -0x1
invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
goto :goto_d
:cond_15
invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
goto :goto_d
.end method
.method public getItemId(I)J
.registers 4
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
const/16 v1, 0x22
invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z
move-result v0
if-eqz v0, :cond_16
if-nez p1, :cond_f
const-wide/16 v0, 0x0
:goto_e
return-wide v0
:cond_f
add-int/lit8 v0, p1, -0x1
invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItemId(I)J
move-result-wide v0
goto :goto_e
:cond_16
invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItemId(I)J
move-result-wide v0
goto :goto_e
.end method
.method public getItemViewType(I)I
.registers 4
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
const/16 v1, 0x22
invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z
move-result v0
if-eqz v0, :cond_15
if-nez p1, :cond_e
const/4 v0, -0x1
:goto_d
return v0
:cond_e
add-int/lit8 v0, p1, -0x1
invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItemViewType(I)I
move-result v0
goto :goto_d
:cond_15
invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItemViewType(I)I
move-result v0
goto :goto_d
.end method
.method  getSuperCount()I
.registers 2
invoke-super {p0}, Landroid/widget/HeaderViewListAdapter;->getCount()I
move-result v0
return v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
const/16 v2, 0x22
invoke-virtual {v1, v2}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z
move-result v1
if-eqz v1, :cond_18
if-nez p1, :cond_11
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
iget-object v1, v1, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;
:goto_10
return-object v1
:cond_11
add-int/lit8 v1, p1, -0x1
invoke-super {p0, v1, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
goto :goto_10
:cond_18
:try_start_18
invoke-super {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
:try_end_1b
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_1b} :catch_1d
move-result-object v1
goto :goto_10
:catch_1d
move-exception v0
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
iget-object v1, v1, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;
goto :goto_10
.end method
.method public isEnabled(I)Z
.registers 10
const/4 v6, 0x0
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
const/16 v7, 0x22
invoke-virtual {v5, v7}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z
move-result v5
if-eqz v5, :cond_19
if-lez p1, :cond_17
add-int/lit8 v5, p1, -0x1
invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->superEnabled(I)Z
move-result v5
if-eqz v5, :cond_17
const/4 v5, 0x1
:goto_16
return v5
:cond_17
move v5, v6
goto :goto_16
:cond_19
:try_start_19
invoke-virtual {p0, p1}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->superEnabled(I)Z
:try_end_1c
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_1c} :catch_1e
move-result v5
goto :goto_16
:catch_1e
move-exception v2
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$000(Lcom/twitter/android/widget/RefreshableListView;)Ljava/util/ArrayList;
move-result-object v5
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v4
if-ge p1, v4, :cond_3a
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$000(Lcom/twitter/android/widget/RefreshableListView;)Ljava/util/ArrayList;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/widget/ListView$FixedViewInfo;
iget-boolean v5, v5, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z
goto :goto_16
:cond_3a
sub-int v1, p1, v4
const/4 v0, 0x0
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$100(Lcom/twitter/android/widget/RefreshableListView;)Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
move-result-object v5
if-eqz v5, :cond_5c
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$100(Lcom/twitter/android/widget/RefreshableListView;)Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
move-result-object v5
invoke-virtual {v5}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->getCount()I
move-result v0
if-ge v1, v0, :cond_5c
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$100(Lcom/twitter/android/widget/RefreshableListView;)Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
move-result-object v5
invoke-virtual {v5, v1}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->isEnabled(I)Z
move-result v5
goto :goto_16
:cond_5c
:try_start_5c
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$200(Lcom/twitter/android/widget/RefreshableListView;)Ljava/util/ArrayList;
move-result-object v5
sub-int v7, v1, v0
invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/widget/ListView$FixedViewInfo;
iget-boolean v5, v5, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z
:try_end_6c
.catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6c} :catch_6d
goto :goto_16
:catch_6d
move-exception v3
invoke-static {v3}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
move v5, v6
goto :goto_16
.end method
.method public final registerDataSetObserver()V
.registers 2
iget-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mRegistered:Z
if-nez v0, :cond_c
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;
invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mRegistered:Z
:cond_c
return-void
.end method
.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;
invoke-virtual {v0, p1}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
return-void
.end method
.method public superEnabled(I)Z
.registers 9
:try_start_0
invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z
:try_end_3
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5
move-result v5
:goto_4
return v5
:catch_5
move-exception v2
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$000(Lcom/twitter/android/widget/RefreshableListView;)Ljava/util/ArrayList;
move-result-object v5
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v4
if-ge p1, v4, :cond_21
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$000(Lcom/twitter/android/widget/RefreshableListView;)Ljava/util/ArrayList;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/widget/ListView$FixedViewInfo;
iget-boolean v5, v5, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z
goto :goto_4
:cond_21
sub-int v1, p1, v4
const/4 v0, 0x0
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$100(Lcom/twitter/android/widget/RefreshableListView;)Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
move-result-object v5
if-eqz v5, :cond_43
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$100(Lcom/twitter/android/widget/RefreshableListView;)Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
move-result-object v5
invoke-virtual {v5}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->getCount()I
move-result v0
if-ge v1, v0, :cond_43
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$100(Lcom/twitter/android/widget/RefreshableListView;)Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
move-result-object v5
invoke-virtual {v5, v1}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->isEnabled(I)Z
move-result v5
goto :goto_4
:try_start_43
:cond_43
iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;
#getter for: Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;
invoke-static {v5}, Lcom/twitter/android/widget/RefreshableListView;->access$200(Lcom/twitter/android/widget/RefreshableListView;)Ljava/util/ArrayList;
move-result-object v5
sub-int v6, v1, v0
invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/widget/ListView$FixedViewInfo;
iget-boolean v5, v5, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z
:try_end_53
.catch Ljava/lang/Exception; {:try_start_43 .. :try_end_53} :catch_54
goto :goto_4
:catch_54
move-exception v3
invoke-static {v3}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
const/4 v5, 0x0
goto :goto_4
.end method
.method public final unregisterDataSetObserver()V
.registers 2
iget-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mRegistered:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;
invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mRegistered:Z
:cond_c
return-void
.end method
.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;
invoke-virtual {v0, p1}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
return-void
.end method