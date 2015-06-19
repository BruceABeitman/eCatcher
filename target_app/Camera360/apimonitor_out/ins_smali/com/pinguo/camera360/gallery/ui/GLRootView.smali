.class public Lcom/pinguo/camera360/gallery/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/pinguo/camera360/gallery/ui/GLRoot;
.field private static final DEBUG_FPS:Z = false
.field private static final FLAG_INITIALIZED:I = 0x1
.field private static final FLAG_NEED_LAYOUT:I = 0x2
.field private static final TAG:Ljava/lang/String; = "GLRootView"
.field private final mAnimations:Ljava/util/ArrayList;
.field private mBackgroundColor:[F
.field private volatile mCancelNextRenderFlag:Z
.field private mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
.field private mCompensation:I
.field private mCompensationMatrix:Landroid/graphics/Matrix;
.field private mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
.field private mDisplayRotation:I
.field private final mEglConfigChooser:Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;
.field private mFirstDraw:Z
.field private mFlags:I
.field private mFrameCount:I
.field private mFrameCountingStart:J
.field private mFreeze:Z
.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;
.field private mGL:Ljavax/microedition/khronos/opengles/GL11;
.field private final mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
.field private final mIdleRunner:Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;
.field private mInDownState:Z
.field private mOrientationSource:Lcom/pinguo/camera360/gallery/ui/OrientationSource;
.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
.field private volatile mRenderRequested:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
const/4 v3, 0x4
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFrameCount:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFrameCountingStart:J
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;
const/4 v0, 0x2
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFlags:I
iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderRequested:Z
iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCancelNextRenderFlag:Z
new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mEglConfigChooser:Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;
new-instance v0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
new-instance v0, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRootView;Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleRunner:Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;
iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mInDownState:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFirstDraw:Z
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFlags:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFlags:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mEglConfigChooser:Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
invoke-virtual {p0, p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V
new-array v0, v3, [F
fill-array-data v0, :array_68
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mBackgroundColor:[F
return-void
nop
:array_68
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
.end array-data
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Lcom/pinguo/camera360/gallery/ui/GLCanvas;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/ui/GLRootView;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderRequested:Z
return v0
.end method
.method private layoutContentPane()V
.registers 11
const/4 v9, 0x0
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFlags:I
and-int/lit8 v5, v5, -0x3
iput v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFlags:I
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->getWidth()I
move-result v4
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->getHeight()I
move-result v2
const/4 v1, 0x0
const/4 v0, 0x0
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mOrientationSource:Lcom/pinguo/camera360/gallery/ui/OrientationSource;
if-eqz v5, :cond_66
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mOrientationSource:Lcom/pinguo/camera360/gallery/ui/OrientationSource;
invoke-interface {v5}, Lcom/pinguo/camera360/gallery/ui/OrientationSource;->getDisplayRotation()I
move-result v1
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mOrientationSource:Lcom/pinguo/camera360/gallery/ui/OrientationSource;
invoke-interface {v5}, Lcom/pinguo/camera360/gallery/ui/OrientationSource;->getCompensation()I
move-result v0
:goto_21
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensation:I
if-eq v5, v0, :cond_4d
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensation:I
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensation:I
rem-int/lit16 v5, v5, 0xb4
if-eqz v5, :cond_69
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensation:I
int-to-float v6, v6
invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;
neg-int v6, v4
div-int/lit8 v6, v6, 0x2
int-to-float v6, v6
neg-int v7, v2
div-int/lit8 v7, v7, 0x2
int-to-float v7, v7
invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;
div-int/lit8 v6, v2, 0x2
int-to-float v6, v6
div-int/lit8 v7, v4, 0x2
int-to-float v7, v7
invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z
:goto_4d
:cond_4d
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mDisplayRotation:I
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensation:I
rem-int/lit16 v5, v5, 0xb4
if-eqz v5, :cond_58
move v3, v4
move v4, v2
move v2, v3
:cond_58
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
if-eqz v5, :cond_65
if-eqz v4, :cond_65
if-eqz v2, :cond_65
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
invoke-virtual {v5, v9, v9, v4, v2}, Lcom/pinguo/camera360/gallery/ui/GLView;->layout(IIII)V
:cond_65
return-void
:cond_66
const/4 v1, 0x0
const/4 v0, 0x0
goto :goto_21
:cond_69
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensation:I
int-to-float v6, v6
div-int/lit8 v7, v4, 0x2
int-to-float v7, v7
div-int/lit8 v8, v2, 0x2
int-to-float v8, v8
invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V
goto :goto_4d
.end method
.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
.registers 8
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
invoke-interface {v4}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->deleteRecycledResources()V
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->resetUploadLimit()V
const/4 v4, 0x0
iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderRequested:Z
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFlags:I
and-int/lit8 v4, v4, 0x2
if-eqz v4, :cond_14
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->layoutContentPane()V
:cond_14
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
const/4 v5, -0x1
invoke-interface {v4, v5}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensation:I
neg-int v4, v4
invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->rotateCanvas(I)V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
if-eqz v4, :cond_2b
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/gallery/ui/GLView;->render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
:cond_2b
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
invoke-interface {v4}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
move-result v4
if-nez v4, :cond_4a
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->get()J
move-result-wide v2
const/4 v0, 0x0
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v1
:goto_43
if-lt v0, v1, :cond_65
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
:cond_4a
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->uploadLimitReached()Z
move-result v4
if-eqz v4, :cond_53
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->requestRender()V
:cond_53
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
monitor-enter v5
:try_start_56
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->isEmpty()Z
move-result v4
if-nez v4, :cond_63
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleRunner:Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->enable()V
:cond_63
monitor-exit v5
:try_end_64
.catchall {:try_start_56 .. :try_end_64} :catchall_73
return-void
:cond_65
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;
invoke-virtual {v4, v2, v3}, Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;->setStartTime(J)V
add-int/lit8 v0, v0, 0x1
goto :goto_43
:catchall_73
move-exception v4
:try_start_74
monitor-exit v5
:try_end_75
.catchall {:try_start_74 .. :try_end_75} :catchall_73
throw v4
.end method
.method private outputFps()V
.registers 9
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFrameCountingStart:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-nez v2, :cond_15
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFrameCountingStart:J
:cond_e
:goto_e
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFrameCount:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFrameCount:I
return-void
:cond_15
iget-wide v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFrameCountingStart:J
sub-long v2, v0, v2
const-wide/32 v4, 0x3b9aca00
cmp-long v2, v2, v4
if-lez v2, :cond_e
const-string/jumbo v2, "GLRootView"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "fps: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFrameCount:I
int-to-double v4, v4
const-wide v6, 0x41cdcd6500000000L
mul-double/2addr v4, v6
iget-wide v6, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFrameCountingStart:J
sub-long v6, v0, v6
long-to-double v6, v6
div-double/2addr v4, v6
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFrameCountingStart:J
const/4 v2, 0x0
iput v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFrameCount:I
goto :goto_e
.end method
.method private rotateCanvas(I)V
.registers 10
const/4 v7, 0x0
if-nez p1, :cond_4
:goto_3
return-void
:cond_4
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->getWidth()I
move-result v3
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->getHeight()I
move-result v2
div-int/lit8 v0, v3, 0x2
div-int/lit8 v1, v2, 0x2
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
int-to-float v5, v0
int-to-float v6, v1
invoke-interface {v4, v5, v6}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
int-to-float v5, p1
const/high16 v6, 0x3f80
invoke-interface {v4, v5, v7, v7, v6}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->rotate(FFFF)V
rem-int/lit16 v4, p1, 0xb4
if-eqz v4, :cond_2d
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
neg-int v5, v1
int-to-float v5, v5
neg-int v6, v0
int-to-float v6, v6
invoke-interface {v4, v5, v6}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
goto :goto_3
:cond_2d
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
neg-int v5, v0
int-to-float v5, v5
neg-int v6, v1
int-to-float v6, v6
invoke-interface {v4, v5, v6}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
goto :goto_3
.end method
.method public addOnGLIdleListener(Lcom/pinguo/camera360/gallery/ui/GLRoot$OnGLIdleListener;)V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleListeners:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->addLast(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mIdleRunner:Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView$IdleRunner;->enable()V
monitor-exit v1
return-void
:catchall_f
move-exception v0
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_f
throw v0
.end method
.method public cancelNextRender()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderRequested:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCancelNextRenderFlag:Z
return-void
.end method
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->isEnabled()Z
move-result v3
if-nez v3, :cond_9
:goto_8
return v1
:cond_9
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const/4 v3, 0x3
if-eq v0, v3, :cond_12
if-ne v0, v2, :cond_33
:cond_12
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mInDownState:Z
:cond_14
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_19
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
if-eqz v3, :cond_26
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
invoke-virtual {v3, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v3
if-eqz v3, :cond_26
move v1, v2
:cond_26
if-nez v0, :cond_2d
if-eqz v1, :cond_2d
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mInDownState:Z
:try_end_2d
.catchall {:try_start_19 .. :try_end_2d} :catchall_3a
:cond_2d
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_8
:cond_33
iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mInDownState:Z
if-nez v3, :cond_14
if-eqz v0, :cond_14
goto :goto_8
:catchall_3a
move-exception v2
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
.end method
.method protected finalize()V
.registers 2
:try_start_0
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unfreeze()V
:try_end_3
.catchall {:try_start_0 .. :try_end_3} :catchall_7
invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V
return-void
:catchall_7
move-exception v0
invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V
throw v0
.end method
.method public freeze()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFreeze:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
.end method
.method public getCompensation()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensation:I
return v0
.end method
.method public getCompensationMatrix()Landroid/graphics/Matrix;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;
return-object v0
.end method
.method public getDisplayRotation()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mDisplayRotation:I
return v0
.end method
.method public lockRenderThread()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unfreeze()V
invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V
return-void
.end method
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.registers 7
const/4 v4, 0x0
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderRequested:Z
if-nez v0, :cond_e
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFirstDraw:Z
if-nez v0, :cond_e
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCancelNextRenderFlag:Z
if-eqz v0, :cond_e
:cond_d
:goto_d
return-void
:cond_e
iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCancelNextRenderFlag:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mBackgroundColor:[F
const/4 v1, 0x1
aget v0, v0, v1
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mBackgroundColor:[F
const/4 v2, 0x2
aget v1, v1, v2
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mBackgroundColor:[F
const/4 v3, 0x3
aget v2, v2, v3
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mBackgroundColor:[F
aget v3, v3, v4
invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->update()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:goto_2e
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFreeze:Z
if-nez v0, :cond_49
:try_start_32
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
:try_end_35
.catchall {:try_start_32 .. :try_end_35} :catchall_4f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFirstDraw:Z
if-eqz v0, :cond_d
iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFirstDraw:Z
new-instance v0, Lcom/pinguo/camera360/gallery/ui/GLRootView$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView$1;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRootView;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->post(Ljava/lang/Runnable;)Z
goto :goto_d
:cond_49
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V
goto :goto_2e
:catchall_4f
move-exception v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
.end method
.method protected onLayout(ZIIII)V
.registers 6
if-eqz p1, :cond_5
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->requestLayoutContentPane()V
:cond_5
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/gallery/ui/GLRootView; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unfreeze()V
invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V
const-string v1, " - Lcom/pinguo/camera360/gallery/ui/GLRootView; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
.registers 8
const-string/jumbo v1, "GLRootView"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "onSurfaceChanged: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "x"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", gl10: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v1, -0x4
invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->setRenderThread()V
move-object v0, p1
check-cast v0, Ljavax/microedition/khronos/opengles/GL11;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;
if-ne v1, v0, :cond_48
const/4 v1, 0x1
:goto_3f
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
invoke-interface {v1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->setSize(II)V
return-void
:cond_48
const/4 v1, 0x0
goto :goto_3f
.end method
.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.registers 7
move-object v0, p1
check-cast v0, Ljavax/microedition/khronos/opengles/GL11;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;
if-eqz v1, :cond_2a
const-string/jumbo v1, "GLRootView"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "GLObject has changed from "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_2a
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_2f
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;
invoke-direct {v1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mCanvas:Lcom/pinguo/camera360/gallery/ui/GLCanvas;
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->invalidateAllTextures()V
:try_end_3b
.catchall {:try_start_2f .. :try_end_3b} :catchall_45
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->setRenderMode(I)V
return-void
:catchall_45
move-exception v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v1
.end method
.method public registerLaunchedAnimation(Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public requestLayoutContentPane()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
if-eqz v0, :cond_f
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFlags:I
:try_end_b
.catchall {:try_start_5 .. :try_end_b} :catchall_2a
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_15
:cond_f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
:goto_14
return-void
:cond_15
:try_start_15
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFlags:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_f
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFlags:I
or-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFlags:I
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->requestRender()V
:try_end_24
.catchall {:try_start_15 .. :try_end_24} :catchall_2a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_14
:catchall_2a
move-exception v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
.end method
.method public requestRender()V
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderRequested:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderRequested:Z
invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V
goto :goto_4
.end method
.method public setContentPane(Lcom/pinguo/camera360/gallery/ui/GLView;)V
.registers 11
const/4 v7, 0x0
const/4 v5, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
if-ne v2, p1, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
if-eqz v2, :cond_2c
iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mInDownState:Z
if-eqz v2, :cond_24
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
const/4 v4, 0x3
move-wide v2, v0
move v6, v5
invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
move-result-object v8
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
invoke-virtual {v2, v8}, Lcom/pinguo/camera360/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V
iput-boolean v7, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mInDownState:Z
:cond_24
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/GLView;->detachFromRoot()V
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->yieldAllTextures()V
:cond_2c
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mContentView:Lcom/pinguo/camera360/gallery/ui/GLView;
if-eqz p1, :cond_6
invoke-virtual {p1, p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->attachToRoot(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->requestLayoutContentPane()V
goto :goto_6
.end method
.method public setContentPaneBackground([F)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mBackgroundColor:[F
return-void
.end method
.method public setOrientationSource(Lcom/pinguo/camera360/gallery/ui/OrientationSource;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mOrientationSource:Lcom/pinguo/camera360/gallery/ui/OrientationSource;
return-void
.end method
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
.registers 5
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unfreeze()V
invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
return-void
.end method
.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unfreeze()V
invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
return-void
.end method
.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unfreeze()V
invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
return-void
.end method
.method public unfreeze()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFreeze:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
.end method
.method public unlockRenderThread()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
.end method