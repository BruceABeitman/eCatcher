.class public Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "MLPSpecificBox.java"


# instance fields
.field format_info:I

.field peak_data_rate:I

.field reserved:I

.field reserved2:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "dmlp"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 5

    const/16 v2, 0x20

    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/a/c;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->format_info:I

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->peak_data_rate:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved:I

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved2:I

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 6

    const/16 v3, 0x20

    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;-><init>(Ljava/nio/ByteBuffer;)V

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->format_info:I

    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->peak_data_rate:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved2:I

    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    return-void
.end method

.method protected getContentSize()J
    .registers 3

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getFormat_info()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->format_info:I

    return v0
.end method

.method public getPeak_data_rate()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->peak_data_rate:I

    return v0
.end method

.method public getReserved()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved:I

    return v0
.end method

.method public getReserved2()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved2:I

    return v0
.end method

.method public setFormat_info(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->format_info:I

    return-void
.end method

.method public setPeak_data_rate(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->peak_data_rate:I

    return-void
.end method

.method public setReserved(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved:I

    return-void
.end method

.method public setReserved2(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved2:I

    return-void
.end method
