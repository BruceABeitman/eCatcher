.class public final Lcom/google/zxing/pdf417/PDF417ResultMetadata;
.super Ljava/lang/Object;
.source "PDF417ResultMetadata.java"
.field private fileId:Ljava/lang/String;
.field private lastSegment:Z
.field private optionalData:[I
.field private segmentIndex:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getFileId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileId:Ljava/lang/String;
return-object v0
.end method
.method public getOptionalData()[I
.registers 2
iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->optionalData:[I
return-object v0
.end method
.method public getSegmentIndex()I
.registers 2
iget v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentIndex:I
return v0
.end method
.method public isLastSegment()Z
.registers 2
iget-boolean v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->lastSegment:Z
return v0
.end method
.method public setFileId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileId:Ljava/lang/String;
return-void
.end method
.method public setLastSegment(Z)V
.registers 2
iput-boolean p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->lastSegment:Z
return-void
.end method
.method public setOptionalData([I)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->optionalData:[I
return-void
.end method
.method public setSegmentIndex(I)V
.registers 2
iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentIndex:I
return-void
.end method