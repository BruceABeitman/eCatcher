.class Lcom/tencent/utils/Util$TBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/utils/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TBufferedOutputStream"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/utils/Util$TBufferedOutputStream;->a:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    iget v0, p0, Lcom/tencent/utils/Util$TBufferedOutputStream;->a:I

    return v0
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    iget v0, p0, Lcom/tencent/utils/Util$TBufferedOutputStream;->a:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/utils/Util$TBufferedOutputStream;->a:I

    return-void
.end method
