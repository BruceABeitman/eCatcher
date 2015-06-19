.class  Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"
.implements Lcom/pinguo/album/data/ContentListener;
.field final synthetic this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
.method private constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V
return-void
.end method
.method public onContentDirty()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
invoke-static {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$5(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
invoke-static {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$5(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->notifyDirty()V
:cond_11
return-void
.end method