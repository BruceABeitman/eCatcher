.class abstract Lcom/pinguo/camera360/gallery/ui/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"
.implements Lcom/pinguo/camera360/gallery/ui/Texture;
.field private static final MAX_TEXTURE_SIZE:I = 0x800
.field protected static final STATE_ERROR:I = -0x1
.field protected static final STATE_LOADED:I = 0x1
.field protected static final STATE_UNLOADED:I = 0x0
.field private static final TAG:Ljava/lang/String; = "BasicTexture"
.field protected static final UNSPECIFIED:I = -0x1
.field private static sAllTextures:Ljava/util/WeakHashMap;
.field private static sInFinalizer:Ljava/lang/ThreadLocal;
.field protected mCanvasRef:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
.field private mHasBorder:Z
.field protected mHeight:I
.field protected mId:I
.field protected mState:I
.field private mTextureHeight:I
.field private mTextureWidth:I
.field protected mWidth:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
sput-object v0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;
new-instance v0, Ljava/lang/ThreadLocal;
invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V
sput-object v0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;
return-void
.end method
.method protected constructor <init>()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, v0, v1, v1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;-><init>(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
return-void
.end method
.method protected constructor <init>(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 7
const/4 v1, 0x0
const/4 v0, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mWidth:I
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mHeight:I
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mCanvasRef:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->setAssociatedCanvas(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mId:I
iput p3, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mState:I
sget-object v1, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;
monitor-enter v1
:try_start_15
sget-object v0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;
const/4 v2, 0x0
invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
return-void
:catchall_1d
move-exception v0
monitor-exit v1
:try_end_1f
.catchall {:try_start_15 .. :try_end_1f} :catchall_1d
throw v0
.end method
.method private freeResource()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mCanvasRef:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
if-eqz v0, :cond_d
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->isLoaded()Z
move-result v1
if-eqz v1, :cond_d
invoke-interface {v0, p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->unloadTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)Z
:cond_d
const/4 v1, 0x0
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mState:I
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->setAssociatedCanvas(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
return-void
.end method
.method public static inFinalizer()Z
.registers 1
sget-object v0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;
invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static invalidateAllTextures()V
.registers 4
sget-object v2, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;
monitor-enter v2
:try_start_3
sget-object v1, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;
invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_15
monitor-exit v2
return-void
:cond_15
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;
const/4 v3, 0x0
iput v3, v0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mState:I
const/4 v3, 0x0
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->setAssociatedCanvas(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
goto :goto_d
:catchall_23
move-exception v1
monitor-exit v2
:try_end_25
.catchall {:try_start_3 .. :try_end_25} :catchall_23
throw v1
.end method
.method public static yieldAllTextures()V
.registers 4
sget-object v2, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;
monitor-enter v2
:try_start_3
sget-object v1, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;
invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_15
monitor-exit v2
return-void
:cond_15
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->yield()V
goto :goto_d
:catchall_1f
move-exception v1
monitor-exit v2
:try_end_21
.catchall {:try_start_3 .. :try_end_21} :catchall_1f
throw v1
.end method
.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 10
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getWidth()I
move-result v4
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getHeight()I
move-result v5
move-object v0, p1
move-object v1, p0
move v2, p2
move v3, p3
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIII)V
return-void
.end method
.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
.registers 12
move-object v0, p1
move-object v1, p0
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIII)V
return-void
.end method
.method protected finalize()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;
const-class v1, Lcom/pinguo/camera360/gallery/ui/BasicTexture;
invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->recycle()V
sget-object v0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
return-void
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mHeight:I
return v0
.end method
.method public getId()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mId:I
return v0
.end method
.method protected abstract getTarget()I
.end method
.method public getTextureHeight()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mTextureHeight:I
return v0
.end method
.method public getTextureWidth()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mTextureWidth:I
return v0
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mWidth:I
return v0
.end method
.method public hasBorder()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mHasBorder:Z
return v0
.end method
.method public isLoaded()Z
.registers 3
const/4 v0, 0x1
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mState:I
if-ne v1, v0, :cond_6
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method protected abstract onBind(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)Z
.end method
.method public recycle()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->freeResource()V
return-void
.end method
.method protected setAssociatedCanvas(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mCanvasRef:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
return-void
.end method
.method protected setBorder(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mHasBorder:Z
return-void
.end method
.method protected setSize(II)V
.registers 8
const/16 v1, 0x800
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mWidth:I
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mHeight:I
invoke-static {p1}, Lcom/pinguo/camera360/gallery/util/Utils;->nextPowerOf2(I)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mTextureWidth:I
invoke-static {p2}, Lcom/pinguo/camera360/gallery/util/Utils;->nextPowerOf2(I)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mTextureHeight:I
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mTextureWidth:I
if-gt v0, v1, :cond_1a
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mTextureHeight:I
if-le v0, v1, :cond_41
:cond_1a
const-string/jumbo v0, "BasicTexture"
const-string/jumbo v1, "texture is too large: %d x %d"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mTextureWidth:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->mTextureHeight:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/Exception;
invoke-direct {v2}, Ljava/lang/Exception;-><init>()V
invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_41
return-void
.end method
.method public yield()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->freeResource()V
return-void
.end method