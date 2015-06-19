.class public final Lcom/google/zxing/common/DecoderResult;
.super Ljava/lang/Object;
.source "DecoderResult.java"
.field private final byteSegments:Ljava/util/List;
.field private final ecLevel:Ljava/lang/String;
.field private erasures:Ljava/lang/Integer;
.field private errorsCorrected:Ljava/lang/Integer;
.field private other:Ljava/lang/Object;
.field private final rawBytes:[B
.field private final structuredAppendParity:I
.field private final structuredAppendSequenceNumber:I
.field private final text:Ljava/lang/String;
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.registers 12
const/4 v5, -0x1
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move v6, v5
invoke-direct/range {v0 .. v6}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
return-void
.end method
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B
iput-object p2, p0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;
iput-object p3, p0, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;
iput-object p4, p0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;
iput p6, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendParity:I
iput p5, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendSequenceNumber:I
return-void
.end method
.method public getByteSegments()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;
return-object v0
.end method
.method public getECLevel()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;
return-object v0
.end method
.method public getErasures()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->erasures:Ljava/lang/Integer;
return-object v0
.end method
.method public getErrorsCorrected()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;
return-object v0
.end method
.method public getOther()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->other:Ljava/lang/Object;
return-object v0
.end method
.method public getRawBytes()[B
.registers 2
iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B
return-object v0
.end method
.method public getStructuredAppendParity()I
.registers 2
iget v0, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendParity:I
return v0
.end method
.method public getStructuredAppendSequenceNumber()I
.registers 2
iget v0, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendSequenceNumber:I
return v0
.end method
.method public getText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;
return-object v0
.end method
.method public hasStructuredAppend()Z
.registers 2
iget v0, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendParity:I
if-ltz v0, :cond_a
iget v0, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendSequenceNumber:I
if-ltz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public setErasures(Ljava/lang/Integer;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->erasures:Ljava/lang/Integer;
return-void
.end method
.method public setErrorsCorrected(Ljava/lang/Integer;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;
return-void
.end method
.method public setOther(Ljava/lang/Object;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->other:Ljava/lang/Object;
return-void
.end method