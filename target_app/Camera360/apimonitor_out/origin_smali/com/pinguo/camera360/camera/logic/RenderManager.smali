.class public Lcom/pinguo/camera360/camera/logic/RenderManager;
.super Ljava/lang/Object;
.source "RenderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckGLSurfaceView;,
        Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckRender;,
        Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;
    }
.end annotation


# static fields
.field public static final GPU_CHECK_RESULT_DISABLE_EASY_CAMERA:I = 0x3

.field public static final GPU_CHECK_RESULT_ENABLE_DEFAULT:I = 0x0

.field public static final GPU_CHECK_RESULT_ENABLE_WITHOUT_CHECK:I = 0x2

.field public static final GPU_CHECK_RESULT_ENABLE_WITH_CHECK:I = 0x1

.field private static final GPU_VENDOR_ARM:Ljava/lang/String; = "ARM"

.field private static final GPU_VENDOR_HISILICON:Ljava/lang/String; = "Hisilicon Technologies"

.field private static final GPU_VENDOR_IT:Ljava/lang/String; = "Imagination Technologies"

.field private static final GPU_VENDOR_QUALCOMM:Ljava/lang/String; = "Qualcomm"

.field private static final TAG:Ljava/lang/String; = "RenderManager"

.field private static mRenderManager:Lcom/pinguo/camera360/camera/logic/RenderManager;


# instance fields
.field private mOnGPUCheckFinishListener:Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pinguo/camera360/camera/logic/RenderManager;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/logic/RenderManager;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/camera/logic/RenderManager;->mRenderManager:Lcom/pinguo/camera360/camera/logic/RenderManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/RenderManager;->mOnGPUCheckFinishListener:Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/logic/RenderManager;)Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/RenderManager;->mOnGPUCheckFinishListener:Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/logic/RenderManager;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/logic/RenderManager;->getGPUSupportRender(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getGPUSupportRender(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x3

    sget-boolean v5, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MTK:Z

    if-eqz v5, :cond_9

    :cond_8
    :goto_8
    return v1

    :cond_9
    sget-boolean v5, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_PAD:Z

    if-eqz v5, :cond_f

    move v1, v2

    goto :goto_8

    :cond_f
    const-string/jumbo v5, "ARM"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-direct {p0, p2, v3}, Lcom/pinguo/camera360/camera/logic/RenderManager;->getGPUVersion(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0x1c2

    if-lt v0, v4, :cond_22

    move v1, v2

    goto :goto_8

    :cond_22
    const/16 v2, 0x190

    if-lt v0, v2, :cond_8

    move v1, v3

    goto :goto_8

    :cond_28
    const-string/jumbo v5, "Imagination Technologies"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-direct {p0, p2, v3}, Lcom/pinguo/camera360/camera/logic/RenderManager;->getGPUVersion(Ljava/lang/String;I)I

    move-result v0

    const/16 v5, 0x221

    if-lt v0, v5, :cond_3b

    move v1, v2

    goto :goto_8

    :cond_3b
    const/16 v2, 0x220

    if-lt v0, v2, :cond_41

    move v1, v3

    goto :goto_8

    :cond_41
    const/16 v2, 0x21f

    if-lt v0, v2, :cond_8

    move v1, v4

    goto :goto_8

    :cond_47
    const-string/jumbo v5, "Qualcomm"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0, p2, v3}, Lcom/pinguo/camera360/camera/logic/RenderManager;->getGPUVersion(Ljava/lang/String;I)I

    move-result v0

    const/16 v5, 0x12c

    if-lt v0, v5, :cond_5a

    move v1, v2

    goto :goto_8

    :cond_5a
    const/16 v2, 0xdc

    if-lt v0, v2, :cond_60

    move v1, v3

    goto :goto_8

    :cond_60
    const/16 v2, 0xcd

    if-lt v0, v2, :cond_8

    move v1, v4

    goto :goto_8
.end method

.method private getGPUVersion(Ljava/lang/String;I)I
    .registers 11

    const-string/jumbo v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "get gpu check result render:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\\d{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "get gpu check result version:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_5d} :catch_5f

    move-result v3

    :goto_5e
    return v3

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_5e

    :cond_64
    const/4 v3, 0x0

    goto :goto_5e
.end method

.method public static instance()Lcom/pinguo/camera360/camera/logic/RenderManager;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/camera/logic/RenderManager;->mRenderManager:Lcom/pinguo/camera360/camera/logic/RenderManager;

    return-object v0
.end method


# virtual methods
.method public clearListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/RenderManager;->mOnGPUCheckFinishListener:Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;

    return-void
.end method

.method public startGPUCheck(Landroid/view/ViewGroup;Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;)V
    .registers 6

    const/4 v2, 0x1

    new-instance v0, Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckGLSurfaceView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckGLSurfaceView;-><init>(Lcom/pinguo/camera360/camera/logic/RenderManager;Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p2, p0, Lcom/pinguo/camera360/camera/logic/RenderManager;->mOnGPUCheckFinishListener:Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;

    return-void
.end method
