.class public final Lcom/instagram/creation/video/l/a;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field public static final i:Z

.field public static final j:Z

.field public static final k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0xb

    const/16 v7, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_ad

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/instagram/creation/video/l/a;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_b0

    move v0, v1

    :goto_14
    sput-boolean v0, Lcom/instagram/creation/video/l/a;->b:Z

    const-class v0, Landroid/view/View;

    const-string v3, "SYSTEM_UI_FLAG_LAYOUT_STABLE"

    invoke-static {v0, v3}, Lcom/instagram/creation/video/l/a;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/instagram/creation/video/l/a;->c:Z

    const-string v0, "android.graphics.SurfaceTexture"

    const-string v3, "setDefaultBufferSize"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/instagram/creation/video/l/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/instagram/creation/video/l/a;->d:Z

    const-string v0, "android.graphics.SurfaceTexture"

    const-string v3, "release"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lcom/instagram/creation/video/l/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/instagram/creation/video/l/a;->e:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_b3

    move v0, v1

    :goto_46
    sput-boolean v0, Lcom/instagram/creation/video/l/a;->f:Z

    const-class v0, Landroid/view/View;

    const-string v3, "setSystemUiVisibility"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/instagram/creation/video/l/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/instagram/creation/video/l/a;->g:Z

    :try_start_58
    const-string v0, "android.hardware.Camera$FaceDetectionListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Landroid/hardware/Camera;

    const-string v4, "setFaceDetectionListener"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/instagram/creation/video/l/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const-class v0, Landroid/hardware/Camera;

    const-string v3, "startFaceDetection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lcom/instagram/creation/video/l/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const-class v0, Landroid/hardware/Camera;

    const-string v3, "stopFaceDetection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lcom/instagram/creation/video/l/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v3, "getMaxNumDetectedFaces"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lcom/instagram/creation/video/l/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_92} :catch_b7

    move-result v0

    if-eqz v0, :cond_b5

    move v0, v1

    :goto_96
    sput-boolean v0, Lcom/instagram/creation/video/l/a;->h:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_ba

    move v0, v1

    :goto_9d
    sput-boolean v0, Lcom/instagram/creation/video/l/a;->i:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_bc

    move v0, v1

    :goto_a4
    sput-boolean v0, Lcom/instagram/creation/video/l/a;->j:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_be

    :goto_aa
    sput-boolean v1, Lcom/instagram/creation/video/l/a;->k:Z

    return-void

    :cond_ad
    move v0, v2

    goto/16 :goto_b

    :cond_b0
    move v0, v2

    goto/16 :goto_14

    :cond_b3
    move v0, v2

    goto :goto_46

    :cond_b5
    move v0, v2

    goto :goto_96

    :catch_b7
    move-exception v0

    move v0, v2

    goto :goto_96

    :cond_ba
    move v0, v2

    goto :goto_9d

    :cond_bc
    move v0, v2

    goto :goto_a4

    :cond_be
    move v1, v2

    goto :goto_aa
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method
