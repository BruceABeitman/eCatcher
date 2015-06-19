.class abstract Lcom/instagram/creation/video/gl/ac;
.super Lcom/instagram/creation/video/gl/a;
.source "UploadedTexture.java"


# static fields
.field static h:[I

.field static i:[F

.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/instagram/creation/video/gl/ad;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Lcom/instagram/creation/video/gl/ad;

.field private static l:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/creation/video/gl/ac;->j:Ljava/util/HashMap;

    new-instance v0, Lcom/instagram/creation/video/gl/ad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/gl/ad;-><init>(B)V

    sput-object v0, Lcom/instagram/creation/video/gl/ac;->k:Lcom/instagram/creation/video/gl/ad;

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/instagram/creation/video/gl/ac;->h:[I

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/instagram/creation/video/gl/ac;->i:[F

    return-void
.end method

.method public static n()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/instagram/creation/video/gl/ac;->l:I

    return-void
.end method

.method public static o()Z
    .registers 2

    sget v0, Lcom/instagram/creation/video/gl/ac;->l:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
