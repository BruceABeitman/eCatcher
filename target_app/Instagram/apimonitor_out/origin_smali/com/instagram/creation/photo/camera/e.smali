.class final synthetic Lcom/instagram/creation/photo/camera/e;
.super Ljava/lang/Object;
.source "CameraFragment.java"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/instagram/creation/photo/camera/b;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/instagram/creation/photo/camera/e;->b:[I

    :try_start_9
    sget-object v0, Lcom/instagram/creation/photo/camera/e;->b:[I

    sget v1, Lcom/instagram/creation/photo/camera/b;->a:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_53

    :goto_12
    :try_start_12
    sget-object v0, Lcom/instagram/creation/photo/camera/e;->b:[I

    sget v1, Lcom/instagram/creation/photo/camera/b;->c:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_51

    :goto_1b
    :try_start_1b
    sget-object v0, Lcom/instagram/creation/photo/camera/e;->b:[I

    sget v1, Lcom/instagram/creation/photo/camera/b;->b:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_24} :catch_4f

    :goto_24
    invoke-static {}, Lcom/instagram/creation/base/ui/c;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/instagram/creation/photo/camera/e;->a:[I

    :try_start_2d
    sget-object v0, Lcom/instagram/creation/photo/camera/e;->a:[I

    sget v1, Lcom/instagram/creation/base/ui/c;->b:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_4d

    :goto_36
    :try_start_36
    sget-object v0, Lcom/instagram/creation/photo/camera/e;->a:[I

    sget v1, Lcom/instagram/creation/base/ui/c;->c:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_3f} :catch_4b

    :goto_3f
    :try_start_3f
    sget-object v0, Lcom/instagram/creation/photo/camera/e;->a:[I

    sget v1, Lcom/instagram/creation/base/ui/c;->d:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_48} :catch_49

    :goto_48
    return-void

    :catch_49
    move-exception v0

    goto :goto_48

    :catch_4b
    move-exception v0

    goto :goto_3f

    :catch_4d
    move-exception v0

    goto :goto_36

    :catch_4f
    move-exception v0

    goto :goto_24

    :catch_51
    move-exception v0

    goto :goto_1b

    :catch_53
    move-exception v0

    goto :goto_12
.end method
