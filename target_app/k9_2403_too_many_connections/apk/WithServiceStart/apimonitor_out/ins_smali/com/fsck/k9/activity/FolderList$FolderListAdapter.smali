.class  Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderList.java"
.field private mFolders:Ljava/util/ArrayList;
.field private mListener:Lcom/fsck/k9/activity/ActivityListener;
.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/ArrayList;
new-instance v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;
invoke-direct {v0, p0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)V
iput-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
return-void
.end method
.method static synthetic access$300(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
return-object v0
.end method
.method static synthetic access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic access$402(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/ArrayList;
return-object p1
.end method
.method public areAllItemsEnabled()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolderIndex(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_11
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
if-eqz v0, :cond_11
move-object v2, v0
:goto_10
return-object v2
:cond_11
const/4 v2, 0x0
goto :goto_10
.end method
.method public getFolderIndex(Ljava/lang/String;)I
.registers 4
new-instance v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-direct {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;-><init>(Lcom/fsck/k9/activity/FolderList;)V
iput-object p1, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
move-result v1
return v1
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItem(J)Ljava/lang/Object;
.registers 4
long-to-int v0, p1
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 14
invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
if-eqz p2, :cond_55
invoke-virtual {p2}, Landroid/view/View;->getId()I
move-result v6
const v7, 0x7f03000c
if-ne v6, v7, :cond_55
move-object v5, p2
:goto_12
invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;
if-nez v1, :cond_52
new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;
iget-object v6, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-direct {v1, v6}, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;-><init>(Lcom/fsck/k9/activity/FolderList;)V
const v6, 0x7f0b0033
invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
iput-object p1, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderName:Landroid/widget/TextView;
const v6, 0x7f0b0035
invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
iput-object p1, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCount:Landroid/widget/TextView;
const v6, 0x7f0b0034
invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
iput-object p1, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderStatus:Landroid/widget/TextView;
const v6, 0x7f0b002c
invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v6
iput-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->chip:Landroid/view/View;
iget-object v6, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
iput-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->rawFolderName:Ljava/lang/String;
invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:cond_52
if-nez v0, :cond_6a
:goto_54
return-object v5
:cond_55
iget-object v6, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mInflater:Landroid/view/LayoutInflater;
invoke-static {v6}, Lcom/fsck/k9/activity/FolderList;->access$700(Lcom/fsck/k9/activity/FolderList;)Landroid/view/LayoutInflater;
move-result-object v6
const v7, 0x7f03000c
const/4 v8, 0x0
invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v5
const v6, 0x7f03000c
invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V
goto :goto_12
:cond_6a
iget-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderName:Landroid/widget/TextView;
iget-object v7, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->displayName:Ljava/lang/String;
invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const-string v4, ""
iget-boolean v6, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->loading:Z
if-eqz v6, :cond_f6
const-string v3, ""
iget-object v6, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
const v7, 0x7f080057
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
aput-object v3, v8, v9
invoke-virtual {v6, v7, v8}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
:cond_88
:goto_88
iget-boolean v6, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->pushActive:Z
if-eqz v6, :cond_ac
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v7, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
const v8, 0x7f0800af
invoke-virtual {v7, v8}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
:cond_ac
if-eqz v4, :cond_139
iget-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderStatus:Landroid/widget/TextView;
invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderStatus:Landroid/widget/TextView;
const/4 v7, 0x0
invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V
:goto_b9
iget v6, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->unreadMessageCount:I
if-eqz v6, :cond_148
iget-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCount:Landroid/widget/TextView;
iget v7, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->unreadMessageCount:I
invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCount:Landroid/widget/TextView;
const/4 v7, 0x0
invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V
:goto_ce
iget-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->chip:Landroid/view/View;
sget-object v7, Lcom/fsck/k9/K9;->COLOR_CHIP_RES_IDS:[I
iget-object v8, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v8}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v8
invoke-virtual {v8}, Lcom/fsck/k9/Account;->getAccountNumber()I
move-result v8
sget-object v9, Lcom/fsck/k9/K9;->COLOR_CHIP_RES_IDS:[I
array-length v9, v9
rem-int/2addr v8, v9
aget v7, v7, v8
invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V
iget-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->chip:Landroid/view/View;
invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v6
iget v7, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->unreadMessageCount:I
if-nez v7, :cond_151
const/16 v7, 0x7f
:goto_f1
invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
goto/16 :goto_54
:cond_f6
iget-object v6, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->status:Ljava/lang/String;
if-eqz v6, :cond_fd
iget-object v4, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->status:Ljava/lang/String;
goto :goto_88
:cond_fd
iget-wide v6, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->lastChecked:J
const-wide/16 v8, 0x0
cmp-long v6, v6, v8
if-eqz v6, :cond_88
new-instance v2, Ljava/util/Date;
iget-wide v6, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->lastChecked:J
invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v7, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-virtual {v7}, Lcom/fsck/k9/activity/FolderList;->getTimeFormat()Ljava/text/DateFormat;
move-result-object v7
invoke-virtual {v7, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-virtual {v7}, Lcom/fsck/k9/activity/FolderList;->getDateFormat()Ljava/text/DateFormat;
move-result-object v7
invoke-virtual {v7, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
goto/16 :goto_88
:cond_139
iget-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderStatus:Landroid/widget/TextView;
const/4 v7, 0x0
invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderStatus:Landroid/widget/TextView;
const/16 v7, 0x8
invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_b9
:cond_148
iget-object v6, v1, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCount:Landroid/widget/TextView;
const/16 v7, 0x8
invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_ce
:cond_151
const/16 v7, 0xff
goto :goto_f1
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getCount()I
move-result v0
if-gt p1, v0, :cond_b
invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isEnabled(I)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public isItemSelectable(I)Z
.registers 3
const/4 v0, 0x1
return v0
.end method