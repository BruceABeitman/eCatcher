.class public final Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;
.super Ljava/lang/Object;
.source "QRCodeDecoderMetaData.java"


# instance fields
.field private final mirrored:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->mirrored:Z

    return-void
.end method


# virtual methods
.method public applyMirroredCorrection([Lcom/google/zxing/ResultPoint;)V
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->mirrored:Z

    if-eqz v1, :cond_c

    if-eqz p1, :cond_c

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    aget-object v0, p1, v3

    aget-object v1, p1, v4

    aput-object v1, p1, v3

    aput-object v0, p1, v4

    goto :goto_c
.end method

.method public isMirrored()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->mirrored:Z

    return v0
.end method
