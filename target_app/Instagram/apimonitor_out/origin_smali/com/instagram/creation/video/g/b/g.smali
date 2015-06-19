.class public Lcom/instagram/creation/video/g/b/g;
.super Ljava/lang/Object;
.source "MediaCodecFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:Lcom/instagram/creation/video/g/b/h;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/instagram/creation/video/g/b/g;

    sput-object v0, Lcom/instagram/creation/video/g/b/g;->a:Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/instagram/creation/video/g/b/g;->b:Ljava/util/Set;

    const-string v1, "OMX.ittiam.video.encoder.avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/instagram/creation/video/g/b/g;->b:Ljava/util/Set;

    const-string v1, "OMX.Exynos.avc.enc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/creation/video/g/b/g;->c:Ljava/util/Map;

    const-string v1, "OMX.qcom.video.encoder.avc"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/instagram/creation/video/g/b/g;->d:Ljava/util/Set;

    const-string v1, "OMX.qcom.video.decoder.avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/instagram/creation/video/g/b/g;->e:Ljava/util/Set;

    const-string v1, "OMX.ittiam.video.decoder.avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/instagram/creation/video/g/b/g;->e:Ljava/util/Set;

    const-string v1, "OMX.Exynos.AVC.Decoder"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/instagram/creation/video/g/b/g;->f:Ljava/util/Set;

    const-string v1, "GT-S6812i"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/instagram/creation/video/g/b/g;->f:Ljava/util/Set;

    const-string v1, "GT-I8552"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/instagram/creation/video/g/b/g;->f:Ljava/util/Set;

    const-string v1, "GT-I8552"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/instagram/creation/video/g/b/g;->f:Ljava/util/Set;

    const-string v1, "GT-I8552B"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/instagram/creation/video/g/b/g;->f:Ljava/util/Set;

    const-string v1, "GT-I8262B"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/instagram/creation/video/g/b/g;->g:Ljava/util/List;

    const-string v1, "OMX.SEC.AVC.Encoder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/instagram/creation/video/g/b/g;->g:Ljava/util/List;

    const-string v1, "OMX.SEC.avc.enc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/instagram/creation/video/g/b/h;->a()Lcom/instagram/creation/video/g/b/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/g/b/g;-><init>(Lcom/instagram/creation/video/g/b/h;)V

    return-void
.end method

.method private constructor <init>(Lcom/instagram/creation/video/g/b/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/creation/video/g/b/g;->h:Lcom/instagram/creation/video/g/b/h;

    return-void
.end method

.method private static a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;I)Lcom/instagram/creation/video/g/b/i;
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/instagram/creation/video/g/b/c;->b:I

    if-ne p2, v0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_20

    :cond_c
    move v0, v1

    :goto_d
    invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Z)V

    invoke-virtual {p0, p1, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    sget v0, Lcom/instagram/creation/video/g/b/c;->b:I

    if-ne p2, v0, :cond_22

    invoke-virtual {p0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    :goto_1b
    invoke-static {p0, v0}, Lcom/instagram/creation/video/g/b/i;->a(Landroid/media/MediaCodec;Landroid/view/Surface;)Lcom/instagram/creation/video/g/b/i;

    move-result-object v0

    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_d

    :cond_22
    move-object v0, v2

    goto :goto_1b
.end method

.method private static a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;)Lcom/instagram/creation/video/g/b/i;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-static {p0, v0}, Lcom/instagram/creation/video/g/b/i;->a(Landroid/media/MediaCodec;Z)Lcom/instagram/creation/video/g/b/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/media/MediaFormat;I)Lcom/instagram/creation/video/g/b/i;
    .registers 4

    invoke-static {p0}, Lcom/instagram/creation/video/g/b/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/instagram/creation/video/g/b/g;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;I)Lcom/instagram/creation/video/g/b/i;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/instagram/creation/video/g/a/a;->a(Ljava/lang/String;)Lcom/instagram/creation/video/g/a/a;

    move-result-object v0

    throw v0
.end method

.method public static a(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;)Lcom/instagram/creation/video/g/b/i;
    .registers 4

    invoke-static {p0}, Lcom/instagram/creation/video/g/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/instagram/creation/video/g/b/g;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;)Lcom/instagram/creation/video/g/b/i;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/instagram/creation/video/g/a/a;->a(Ljava/lang/String;)Lcom/instagram/creation/video/g/a/a;

    move-result-object v0

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/instagram/creation/video/g/b/e;->c:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/instagram/creation/video/g/b/e;->e:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/instagram/creation/video/g/b/e;->d:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/instagram/creation/video/g/b/e;->a:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static b(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/instagram/creation/video/g/b/e;->i:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/instagram/creation/video/g/b/e;->c:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
