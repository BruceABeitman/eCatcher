.class public Landroid/support/v4/app/ListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ListFragment.java"
.field static final INTERNAL_EMPTY_ID:I = 0xff0001
.field static final INTERNAL_LIST_CONTAINER_ID:I = 0xff0003
.field static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0002
.field  mAdapter:Landroid/widget/ListAdapter;
.field  mEmptyText:Ljava/lang/CharSequence;
.field  mEmptyView:Landroid/view/View;
.field private final mHandler:Landroid/os/Handler;
.field  mList:Landroid/widget/ListView;
.field  mListContainer:Landroid/view/View;
.field  mListShown:Z
.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;
.field  mProgressContainer:Landroid/view/View;
.field private final mRequestFocus:Ljava/lang/Runnable;
.field  mStandardEmptyView:Landroid/widget/TextView;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;
new-instance v0, Landroid/support/v4/app/ListFragment$1;
invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$1;-><init>(Landroid/support/v4/app/ListFragment;)V
iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;
new-instance v0, Landroid/support/v4/app/ListFragment$2;
invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$2;-><init>(Landroid/support/v4/app/ListFragment;)V
iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;
return-void
.end method
.method private ensureList()V
.registers 7
const/4 v5, 0x0
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
if-eqz v3, :cond_6
:goto_5
return-void
:cond_6
invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;
move-result-object v2
if-nez v2, :cond_14
new-instance v3, Ljava/lang/IllegalStateException;
const-string v4, "Content view not yet created"
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_14
instance-of v3, v2, Landroid/widget/ListView;
if-eqz v3, :cond_3a
check-cast v2, Landroid/widget/ListView;
iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
:goto_1c
:cond_1c
const/4 v3, 0x1
iput-boolean v3, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
iget-object v4, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;
if-eqz v3, :cond_ad
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;
const/4 v3, 0x0
iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;
invoke-virtual {p0, v0}, Landroid/support/v4/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V
:goto_32
:cond_32
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;
iget-object v4, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;
invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_5
:cond_3a
const v3, 0xff0001
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;
if-nez v3, :cond_79
const v3, 0x1020004
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;
:goto_52
const v3, 0xff0002
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;
const v3, 0xff0003
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;
const v3, 0x102000a
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
instance-of v3, v1, Landroid/widget/ListView;
if-nez v3, :cond_89
if-nez v1, :cond_81
new-instance v3, Ljava/lang/RuntimeException;
const-string v4, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"
invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v3
:cond_79
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;
const/16 v4, 0x8
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_52
:cond_81
new-instance v3, Ljava/lang/RuntimeException;
const-string v4, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"
invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v3
:cond_89
check-cast v1, Landroid/widget/ListView;
iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;
if-eqz v3, :cond_99
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
iget-object v4, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;
invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
goto :goto_1c
:cond_99
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;
if-eqz v3, :cond_1c
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;
iget-object v4, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
iget-object v4, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;
invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
goto/16 :goto_1c
:cond_ad
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;
if-eqz v3, :cond_32
invoke-direct {p0, v5, v5}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V
goto/16 :goto_32
.end method
.method private setListShown(ZZ)V
.registers 9
const v5, 0x10a0001
const/high16 v4, 0x10a
const/16 v3, 0x8
const/4 v2, 0x0
invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;
if-nez v0, :cond_17
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Can\'t be used with a custom content view"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iget-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z
if-ne v0, p1, :cond_1c
:goto_1b
return-void
:cond_1c
iput-boolean p1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z
if-eqz p1, :cond_52
if-eqz p2, :cond_47
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;
invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;
invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:goto_3c
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_1b
:cond_47
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
goto :goto_3c
:cond_52
if-eqz p2, :cond_79
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;
invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;
invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:goto_6e
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_1b
:cond_79
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
goto :goto_6e
.end method
.method public getListAdapter()Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;
return-object v0
.end method
.method public getListView()Landroid/widget/ListView;
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
return-object v0
.end method
.method public getSelectedItemId()J
.registers 3
invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J
move-result-wide v0
return-wide v0
.end method
.method public getSelectedItemPosition()I
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I
move-result v0
return v0
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 16
const/16 v11, 0x11
const/4 v10, -0x2
const/4 v9, -0x1
invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
new-instance v5, Landroid/widget/FrameLayout;
invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v3, Landroid/widget/LinearLayout;
invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const v7, 0xff0002
invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setId(I)V
const/4 v7, 0x1
invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V
const/16 v7, 0x8
invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V
invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setGravity(I)V
new-instance v4, Landroid/widget/ProgressBar;
const/4 v7, 0x0
const v8, 0x101007a
invoke-direct {v4, v0, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v7, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v3, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v7, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v5, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/widget/FrameLayout;
invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
const v7, 0xff0003
invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V
new-instance v6, Landroid/widget/TextView;
invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const v7, 0xff0001
invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V
invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V
new-instance v7, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v1, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v2, Landroid/widget/ListView;
invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
invoke-direct {v2, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V
const v7, 0x102000a
invoke-virtual {v2, v7}, Landroid/widget/ListView;->setId(I)V
const/4 v7, 0x0
invoke-virtual {v2, v7}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V
new-instance v7, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v1, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v7, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v5, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v7, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-object v5
.end method
.method public onDestroyView()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z
iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;
iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;
iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;
iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V
return-void
.end method
.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v4/app/ListFragment; onListItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Landroid/support/v4/app/ListFragment; onListItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V
return-void
.end method
.method public setEmptyText(Ljava/lang/CharSequence;)V
.registers 4
invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;
if-nez v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Can\'t be used with a custom content view"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;
if-nez v0, :cond_1f
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
:cond_1f
iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;
return-void
.end method
.method public setListAdapter(Landroid/widget/ListAdapter;)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;
if-eqz v3, :cond_27
move v0, v1
:goto_7
iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
if-eqz v3, :cond_26
iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-boolean v3, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z
if-nez v3, :cond_26
if-nez v0, :cond_26
invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v3
if-eqz v3, :cond_23
move v2, v1
:cond_23
invoke-direct {p0, v1, v2}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V
:cond_26
return-void
:cond_27
move v0, v2
goto :goto_7
.end method
.method public setListShown(Z)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V
return-void
.end method
.method public setListShownNoAnimation(Z)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V
return-void
.end method
.method public setSelection(I)V
.registers 3
invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V
iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V
return-void
.end method