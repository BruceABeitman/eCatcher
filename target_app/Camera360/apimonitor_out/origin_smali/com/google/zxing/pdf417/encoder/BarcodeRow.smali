.class final Lcom/google/zxing/pdf417/encoder/BarcodeRow;
.super Ljava/lang/Object;
.source "BarcodeRow.java"


# instance fields
.field private currentLocation:I

.field private final row:[B


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->currentLocation:I

    return-void
.end method


# virtual methods
.method addBar(ZI)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_f

    iget v1, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->currentLocation:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->currentLocation:I

    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->set(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method getScaledRow(I)[B
    .registers 6

    iget-object v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    array-length v2, v2

    mul-int/2addr v2, p1

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_15

    iget-object v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    div-int v3, v0, p1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-object v1
.end method

.method set(IB)V
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method set(IZ)V
    .registers 5

    iget-object v1, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    :goto_5
    int-to-byte v0, v0

    aput-byte v0, v1, p1

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
