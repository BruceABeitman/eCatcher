.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.super Ljava/lang/Object;
.source "DecodedObject.java"
.field private final newPosition:I
.method constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->newPosition:I
return-void
.end method
.method final getNewPosition()I
.registers 2
iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->newPosition:I
return v0
.end method