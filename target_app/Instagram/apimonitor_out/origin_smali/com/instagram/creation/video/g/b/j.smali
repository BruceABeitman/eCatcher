.class public final Lcom/instagram/creation/video/g/b/j;
.super Ljava/lang/Object;
.source "MediaFormatBuilderForVideoEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private a:Lcom/instagram/creation/video/g/b/e;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/g/b/e;)V
    .registers 4

    const/16 v1, 0x280

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x5dc00

    iput v0, p0, Lcom/instagram/creation/video/g/b/j;->e:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/instagram/creation/video/g/b/j;->f:I

    iput-object p1, p0, Lcom/instagram/creation/video/g/b/j;->a:Lcom/instagram/creation/video/g/b/e;

    iput v1, p0, Lcom/instagram/creation/video/g/b/j;->b:I

    iput v1, p0, Lcom/instagram/creation/video/g/b/j;->c:I

    const v0, 0x7f000789

    iput v0, p0, Lcom/instagram/creation/video/g/b/j;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/creation/video/g/b/j;
    .registers 2

    const v0, 0x348000

    iput v0, p0, Lcom/instagram/creation/video/g/b/j;->e:I

    return-object p0
.end method

.method public final b()Lcom/instagram/creation/video/g/b/j;
    .registers 2

    const/16 v0, 0x1e

    iput v0, p0, Lcom/instagram/creation/video/g/b/j;->f:I

    return-object p0
.end method

.method public final c()Lcom/instagram/creation/video/g/b/j;
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/creation/video/g/b/j;->g:I

    return-object p0
.end method

.method public final d()Landroid/media/MediaFormat;
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/g/b/j;->a:Lcom/instagram/creation/video/g/b/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    iget v1, p0, Lcom/instagram/creation/video/g/b/j;->b:I

    iget v2, p0, Lcom/instagram/creation/video/g/b/j;->c:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    iget v2, p0, Lcom/instagram/creation/video/g/b/j;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lcom/instagram/creation/video/g/b/j;->e:I

    if-lez v1, :cond_1e

    const-string v1, "bitrate"

    iget v2, p0, Lcom/instagram/creation/video/g/b/j;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1e
    iget v1, p0, Lcom/instagram/creation/video/g/b/j;->f:I

    if-lez v1, :cond_29

    const-string v1, "frame-rate"

    iget v2, p0, Lcom/instagram/creation/video/g/b/j;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_29
    iget v1, p0, Lcom/instagram/creation/video/g/b/j;->g:I

    if-lez v1, :cond_34

    const-string v1, "i-frame-interval"

    iget v2, p0, Lcom/instagram/creation/video/g/b/j;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_34
    return-object v0
.end method
