.class  Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;
.super Ljava/lang/Object;
.source "PhotoPage.java"
.implements Lcom/pinguo/camera360/gallery/ui/GLRoot$OnGLIdleListener;
.field private mPhotoFallback:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
.field private mResultReady:Z
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoPage;
.method private constructor <init>(Lcom/pinguo/camera360/gallery/PhotoPage;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;->mResultReady:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/PhotoPage;Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;-><init>(Lcom/pinguo/camera360/gallery/PhotoPage;)V
return-void
.end method
.method public declared-synchronized get()Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
.registers 2
monitor-enter p0
:goto_1
:try_start_1
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;->mResultReady:Z
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_d
monitor-exit p0
return-object v0
:try_start_9
:cond_9
invoke-static {p0}, Lcom/pinguo/camera360/gallery/util/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_d
goto :goto_1
:catchall_d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized onGLIdle(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Z)Z
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;
#getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$0(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/ui/PhotoView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;
#getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$13(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/ui/GLView;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->buildFallbackEffect(Lcom/pinguo/camera360/gallery/ui/GLView;Lcom/pinguo/camera360/gallery/ui/GLCanvas;)Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;->mResultReady:Z
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
:try_end_19
.catchall {:try_start_1 .. :try_end_19} :catchall_1c
const/4 v0, 0x0
monitor-exit p0
return v0
:catchall_1c
move-exception v0
monitor-exit p0
throw v0
.end method