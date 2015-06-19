.class  Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.field private final mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
.field private final mOperation:I
.field private mPaths:Ljava/util/ArrayList;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;ILjava/util/ArrayList;Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->mOperation:I
iput-object p3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->mPaths:Ljava/util/ArrayList;
iput-object p4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->onProgressUpdate(ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->setRefreshEvent()V
return-void
.end method
.method private execute(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;ILjava/util/ArrayList;)Z
.registers 15
const/4 v8, 0x1
const/4 v9, 0x0
const/4 v6, 0x1
sparse-switch p2, :sswitch_data_9c
:goto_6
:cond_6
return v6
:sswitch_7
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSingleDeleteNotifyer:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;
invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;
move-result-object v7
if-eqz v7, :cond_1e
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSingleDeleteNotifyer:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;
invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;
move-result-object v10
invoke-virtual {p3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/pinguo/camera360/gallery/data/Path;
invoke-interface {v10, v7}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;->notifySingleDeleted(Lcom/pinguo/camera360/gallery/data/Path;)V
:cond_1e
const/4 v7, -0x1
if-eq p2, v7, :cond_3f
move v2, v8
:goto_22
invoke-virtual {p3}, Ljava/util/ArrayList;->size()I
move-result v7
if-ne v7, v8, :cond_41
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v8
invoke-virtual {p3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/pinguo/camera360/gallery/data/Path;
invoke-virtual {v8, v7, v2}, Lcom/pinguo/camera360/gallery/data/DataManager;->deleteSingle(Lcom/pinguo/camera360/gallery/data/Path;Z)V
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->setRefreshEvent()V
goto :goto_6
:cond_3f
move v2, v9
goto :goto_22
:cond_41
invoke-virtual {p3}, Ljava/util/ArrayList;->size()I
move-result v7
if-le v7, v8, :cond_6
const/4 v0, 0x0
invoke-virtual {p3}, Ljava/util/ArrayList;->size()I
move-result v7
new-array v5, v7, [Lcom/pinguo/camera360/gallery/data/Path;
invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_52
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-nez v8, :cond_81
new-instance v3, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$1;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$1;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;)V
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/SelectionManager;
move-result-object v7
if-eqz v7, :cond_8d
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/SelectionManager;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getSourceMediaSet()Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v4
:goto_73
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v7
invoke-virtual {v7, v5, v4, v3, v2}, Lcom/pinguo/camera360/gallery/data/DataManager;->deleteBatch([Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;Z)V
goto :goto_6
:cond_81
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/gallery/data/Path;
add-int/lit8 v1, v0, 0x1
aput-object v4, v5, v0
move v0, v1
goto :goto_52
:cond_8d
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSourceMediaSet()Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v4
goto :goto_73
:sswitch_data_9c
.sparse-switch
-0x1 -> :sswitch_7
0x7f0a0123 -> :sswitch_7
0x7f0a0126 -> :sswitch_7
0x7f0a0157 -> :sswitch_7
.end sparse-switch
.end method
.method private onProgressComplete(ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/os/Handler;
move-result-object v1
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method private onProgressUpdate(ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/os/Handler;
move-result-object v1
const/4 v2, 0x2
const/4 v3, 0x0
invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method private setRefreshEvent()V
.registers 4
new-instance v0, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;-><init>(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$2;
invoke-direct {v2, p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$2;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public bridge synthetic run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method public run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
.registers 5
const/4 v0, 0x1
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->mOperation:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->mPaths:Ljava/util/ArrayList;
invoke-direct {p0, p1, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->execute(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;ILjava/util/ArrayList;)Z
move-result v1
if-nez v1, :cond_c
const/4 v0, 0x2
:cond_c
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->onProgressComplete(ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
const/4 v1, 0x0
return-object v1
.end method