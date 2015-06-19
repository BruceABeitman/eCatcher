.class  Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageList.java"
.field private static final NON_MESSAGE_ITEMS:I = 0x1
.field private footerView:Landroid/view/View;
.field private mAnsweredIcon:Landroid/graphics/drawable/Drawable;
.field private mAttachmentIcon:Landroid/graphics/drawable/Drawable;
.field private mListener:Lcom/fsck/k9/activity/ActivityListener;
.field private messages:Ljava/util/List;
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;
.method constructor <init>(Lcom/fsck/k9/activity/MessageList;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
new-instance v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;
invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;-><init>(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)V
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->footerView:Landroid/view/View;
invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageList;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f020057
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mAttachmentIcon:Landroid/graphics/drawable/Drawable;
invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageList;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f020056
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mAnsweredIcon:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method static synthetic access$1800(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;Lcom/fsck/k9/Account;Ljava/lang/String;)Z
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic access$1900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->addOrUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
return-void
.end method
.method static synthetic access$2000(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->addOrUpdateMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
return-void
.end method
.method static synthetic access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
return-object v0
.end method
.method private addOrUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->addOrUpdateMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
return-void
.end method
.method private addOrUpdateMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
.registers 13
const/4 v5, 0x0
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_f
:goto_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_54
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/fsck/k9/mail/Message;
invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_f
invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v6
invoke-virtual {p0, v6}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
move-result-object v1
sget-object v6, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
invoke-virtual {v2, v6}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z
move-result v6
if-eqz v6, :cond_37
if-eqz v1, :cond_f
invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_37
if-nez v1, :cond_44
new-instance v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
iget-object v6, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {v1, v6, v2, p1}, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;-><init>(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)V
invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_44
new-instance v6, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
iget-object v7, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;
move-result-object v8
invoke-direct {v6, v7, v8, p1}, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;-><init>(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/Account;)V
invoke-virtual {v1, v2, v6, p1}, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->populate(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;Lcom/fsck/k9/Account;)V
const/4 v5, 0x1
goto :goto_f
:cond_54
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v6
if-lez v6, :cond_5d
invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->removeMessages(Ljava/util/List;)V
:cond_5d
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v6
if-lez v6, :cond_6c
iget-object v6, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
invoke-static {v6}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;
move-result-object v6
invoke-virtual {v6, v3}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->addMessages(Ljava/util/List;)V
:cond_6c
if-eqz v5, :cond_77
iget-object v6, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
invoke-static {v6}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;
move-result-object v6
#calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
invoke-static {v6}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V
:cond_77
return-void
.end method
.method private updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1200(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_28
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1000(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$000(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$000(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2a
:cond_28
const/4 v0, 0x1
:goto_29
return v0
:cond_2a
const/4 v0, 0x0
goto :goto_29
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_1a
:cond_18
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, 0x1
goto :goto_19
.end method
.method public getFolder(Ljava/lang/String;Lcom/fsck/k9/Account;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
.registers 9
const/4 v2, 0x0
:try_start_1
invoke-virtual {p2}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageList;->getApplication()Landroid/app/Application;
move-result-object v4
invoke-static {v3, v4}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v1
check-cast v1, Lcom/fsck/k9/mail/store/LocalStore;
invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
move-result-object v2
new-instance v3, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {v3, v4, v2, p2}, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;-><init>(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/Account;)V
:try_end_1c
.catchall {:try_start_1 .. :try_end_1c} :catchall_49
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_22
if-eqz v2, :cond_21
invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
:cond_21
:goto_21
return-object v3
:catch_22
move-exception v3
move-object v0, v3
:try_start_24
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "getFolder("
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ") goes boom: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_42
.catchall {:try_start_24 .. :try_end_42} :catchall_49
const/4 v3, 0x0
if-eqz v2, :cond_21
invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
goto :goto_21
:catchall_49
move-exception v3
if-eqz v2, :cond_4f
invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
:cond_4f
throw v3
.end method
.method public getFooterView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 10
const v3, 0x7f030012
const/4 v4, 0x1
const/4 v5, 0x0
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->footerView:Landroid/view/View;
if-nez v1, :cond_54
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mInflater:Landroid/view/LayoutInflater;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$2200(Lcom/fsck/k9/activity/MessageList;)Landroid/view/LayoutInflater;
move-result-object v1
invoke-virtual {v1, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->footerView:Landroid/view/View;
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$1200(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_24
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->footerView:Landroid/view/View;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:cond_24
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->footerView:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V
new-instance v0, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;-><init>(Lcom/fsck/k9/activity/MessageList;)V
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->footerView:Landroid/view/View;
const v2, 0x7f0b004e
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ProgressBar;
iput-object v1, v0, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;->progress:Landroid/widget/ProgressBar;
iget-object v1, v0, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;->progress:Landroid/widget/ProgressBar;
invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->footerView:Landroid/view/View;
const v2, 0x7f0b004f
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v0, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;->main:Landroid/widget/TextView;
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->footerView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:cond_54
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->footerView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
move-result-object v1
if-eqz v1, :cond_84
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
move-result-object v1
iget-boolean v1, v1, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->loading:Z
if-eqz v1, :cond_84
iget-object v1, v0, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;->main:Landroid/widget/TextView;
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
const v3, 0x7f080059
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v0, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;->progress:Landroid/widget/ProgressBar;
invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V
:goto_81
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->footerView:Landroid/view/View;
return-object v1
:cond_84
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
move-result-object v1
if-eqz v1, :cond_c1
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
move-result-object v1
iget-boolean v1, v1, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->lastCheckFailed:Z
if-nez v1, :cond_c1
iget-object v1, v0, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;->main:Landroid/widget/TextView;
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
const v3, 0x7f08005f
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;
move-result-object v2
new-array v3, v4, [Ljava/lang/Object;
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v4}, Lcom/fsck/k9/activity/MessageList;->access$1000(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/Account;
move-result-object v4
invoke-virtual {v4}, Lcom/fsck/k9/Account;->getDisplayCount()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v5
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_ba
iget-object v1, v0, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;->progress:Landroid/widget/ProgressBar;
const/4 v2, 0x4
invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
goto :goto_81
:cond_c1
iget-object v1, v0, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;->main:Landroid/widget/TextView;
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
const v3, 0x7f08005e
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_ba
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 6
:try_start_0
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v1
iget-object v1, v1, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge p1, v1, :cond_4b
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v1
iget-object v1, v1, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
:try_end_19
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b
move-result-object v1
:goto_1a
return-object v1
:catch_1b
move-exception v1
move-object v0, v1
const-string v1, "k9"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "getItem("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "), but folder.messages.size() = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v3
iget-object v3, v3, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_4b
const/4 v1, 0x0
goto :goto_1a
.end method
.method public getItem(J)Ljava/lang/Object;
.registers 4
long-to-int v0, p1
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 7
:try_start_0
invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
if-eqz v1, :cond_31
iget-object p0, v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;
check-cast p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getId()J
:try_end_f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11
move-result-wide v2
:goto_10
return-wide v2
:catch_11
move-exception v2
move-object v0, v2
const-string v2, "k9"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "getItemId("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ") "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_31
const-wide/16 v2, -0x1
goto :goto_10
.end method
.method public getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 16
const/4 v3, -0x1
const v5, 0x7f030011
const/4 v2, 0x1
const/4 v11, 0x0
const/4 v1, 0x0
invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
if-eqz p2, :cond_171
invoke-virtual {p2}, Landroid/view/View;->getId()I
move-result v0
if-ne v0, v5, :cond_171
move-object v9, p2
:goto_16
invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;
if-nez v6, :cond_a2
new-instance v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {v6, v0}, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;-><init>(Lcom/fsck/k9/activity/MessageList;)V
const v0, 0x7f0b003a
invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->subject:Landroid/widget/TextView;
const v0, 0x7f0b0036
invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->from:Landroid/widget/TextView;
const v0, 0x7f0b004d
invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->date:Landroid/widget/TextView;
const v0, 0x7f0b002c
invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->chip:Landroid/view/View;
const v0, 0x7f0b0050
invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->preview:Landroid/widget/TextView;
const v0, 0x7f0b004b
invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->selected:Landroid/widget/CheckBox;
const v0, 0x7f0b004c
invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->flagged:Landroid/widget/CheckBox;
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->flagged:Landroid/widget/CheckBox;
new-instance v4, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2;
invoke-direct {v4, p0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2;-><init>(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)V
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mStars:Z
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$2400(Lcom/fsck/k9/activity/MessageList;)Z
move-result v0
if-nez v0, :cond_89
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->flagged:Landroid/widget/CheckBox;
const/16 v4, 0x8
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V
:cond_89
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCheckboxes:Z
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$2500(Lcom/fsck/k9/activity/MessageList;)Z
move-result v0
if-ne v0, v2, :cond_96
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->selected:Landroid/widget/CheckBox;
invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setVisibility(I)V
:cond_96
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->selected:Landroid/widget/CheckBox;
if-eqz v0, :cond_9f
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->selected:Landroid/widget/CheckBox;
invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
:cond_9f
invoke-virtual {v9, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:cond_a2
if-eqz v7, :cond_1cb
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->subject:Landroid/widget/TextView;
iget-boolean v4, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z
if-eqz v4, :cond_19a
move v4, v11
:goto_ab
invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->flagged:Landroid/widget/CheckBox;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->flagged:Landroid/widget/CheckBox;
iget-boolean v4, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->flagged:Z
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V
iput v3, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->position:I
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->selected:Landroid/widget/CheckBox;
iget-boolean v4, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCheckboxes:Z
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$2500(Lcom/fsck/k9/activity/MessageList;)Z
move-result v0
if-nez v0, :cond_d8
iget-boolean v0, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z
if-ne v0, v2, :cond_19d
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->selected:Landroid/widget/CheckBox;
invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setVisibility(I)V
:cond_d8
:goto_d8
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->chip:Landroid/view/View;
sget-object v4, Lcom/fsck/k9/K9;->COLOR_CHIP_RES_IDS:[I
iget-object v5, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;
invoke-virtual {v5}, Lcom/fsck/k9/Account;->getAccountNumber()I
move-result v5
sget-object v10, Lcom/fsck/k9/K9;->COLOR_CHIP_RES_IDS:[I
array-length v10, v10
rem-int/2addr v5, v10
aget v4, v4, v5
invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->chip:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
iget-boolean v4, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z
if-eqz v4, :cond_1a6
const/16 v4, 0x7f
:goto_f7
invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
iget-boolean v0, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->downloaded:Z
if-eqz v0, :cond_1aa
invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:goto_105
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->subject:Landroid/widget/TextView;
iget-object v4, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->subject:Ljava/lang/String;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->preview:Landroid/widget/TextView;
if-eqz v0, :cond_1b5
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->preview:Landroid/widget/TextView;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->sender:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->preview:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;
invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->preview:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v8
check-cast v8, Landroid/text/Spannable;
new-instance v0, Landroid/text/style/TextAppearanceSpan;
iget-object v4, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->subject:Landroid/widget/TextView;
invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
move-result-object v4
iget-object v5, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->subject:Landroid/widget/TextView;
invoke-virtual {v5}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;
move-result-object v5
invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
iget-object v2, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->sender:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
const/16 v3, 0x21
invoke-interface {v8, v0, v11, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
:goto_156
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->date:Landroid/widget/TextView;
iget-object v2, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->date:Ljava/lang/String;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->subject:Landroid/widget/TextView;
iget-boolean v2, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->answered:Z
if-eqz v2, :cond_1c7
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mAnsweredIcon:Landroid/graphics/drawable/Drawable;
:goto_165
iget-boolean v3, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->hasAttachments:Z
if-eqz v3, :cond_1c9
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mAttachmentIcon:Landroid/graphics/drawable/Drawable;
:goto_16b
invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
iput p1, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->position:I
:goto_170
return-object v9
:cond_171
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mTouchView:Z
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$2100(Lcom/fsck/k9/activity/MessageList;)Z
move-result v0
if-eqz v0, :cond_18b
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mInflater:Landroid/view/LayoutInflater;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$2200(Lcom/fsck/k9/activity/MessageList;)Landroid/view/LayoutInflater;
move-result-object v0
const v4, 0x7f030013
invoke-virtual {v0, v4, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v9
invoke-virtual {v9, v5}, Landroid/view/View;->setId(I)V
goto/16 :goto_16
:cond_18b
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mInflater:Landroid/view/LayoutInflater;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$2200(Lcom/fsck/k9/activity/MessageList;)Landroid/view/LayoutInflater;
move-result-object v0
invoke-virtual {v0, v5, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v9
invoke-virtual {v9, v5}, Landroid/view/View;->setId(I)V
goto/16 :goto_16
:cond_19a
move v4, v2
goto/16 :goto_ab
:cond_19d
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->selected:Landroid/widget/CheckBox;
const/16 v4, 0x8
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V
goto/16 :goto_d8
:cond_1a6
const/16 v4, 0xff
goto/16 :goto_f7
:cond_1aa
invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
const/16 v4, 0x7f
invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
goto/16 :goto_105
:cond_1b5
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->from:Landroid/widget/TextView;
iget-object v3, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->sender:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->from:Landroid/widget/TextView;
iget-boolean v3, v7, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z
if-eqz v3, :cond_1c3
move v2, v11
:cond_1c3
invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
goto :goto_156
:cond_1c7
move-object v2, v1
goto :goto_165
:cond_1c9
move-object v3, v1
goto :goto_16b
:cond_1cb
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->chip:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->subject:Landroid/widget/TextView;
const-string v2, "No subject"
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->subject:Landroid/widget/TextView;
invoke-virtual {v0, v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->preview:Landroid/widget/TextView;
if-eqz v0, :cond_219
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->preview:Landroid/widget/TextView;
const-string v2, "No sender"
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->preview:Landroid/widget/TextView;
invoke-virtual {v0, v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->preview:Landroid/widget/TextView;
invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
:goto_1f5
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->date:Landroid/widget/TextView;
const-string v1, "No date"
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iput v3, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->position:I
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->selected:Landroid/widget/CheckBox;
invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCheckboxes:Z
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$2500(Lcom/fsck/k9/activity/MessageList;)Z
move-result v0
if-nez v0, :cond_212
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->selected:Landroid/widget/CheckBox;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V
:cond_212
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->flagged:Landroid/widget/CheckBox;
invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V
goto/16 :goto_170
:cond_219
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->from:Landroid/widget/TextView;
const-string v2, "No sender"
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->from:Landroid/widget/TextView;
invoke-virtual {v0, v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->from:Landroid/widget/TextView;
invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
goto :goto_1f5
.end method
.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
.registers 5
new-instance v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {v1, v2}, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;-><init>(Lcom/fsck/k9/activity/MessageList;)V
iput-object p1, v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->uid:Ljava/lang/String;
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v2
iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v0
if-ltz v0, :cond_27
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v2
iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
move-object v2, p0
:goto_26
return-object v2
:cond_27
const/4 v2, 0x0
goto :goto_26
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ne p1, v0, :cond_13
invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getFooterView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:goto_12
return-object v0
:cond_13
invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_12
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isItemSelectable(I)Z
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge p1, v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public removeMessage(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
.registers 3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->removeMessages(Ljava/util/List;)V
return-void
.end method
.method public removeMessages(Ljava/util/List;)V
.registers 3
if-eqz p1, :cond_b
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->removeMessage(Ljava/util/List;)V
:cond_b
return-void
.end method