.class public abstract Lcom/google/zxing/Binarizer;
.super Ljava/lang/Object;
.source "Binarizer.java"
.field private final source:Lcom/google/zxing/LuminanceSource;
.method protected constructor <init>(Lcom/google/zxing/LuminanceSource;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;
return-void
.end method
.method public abstract createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
.end method
.method public abstract getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
.end method
.method public abstract getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
.end method
.method public final getHeight()I
.registers 2
iget-object v0, p0, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;
invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I
move-result v0
return v0
.end method
.method public final getLuminanceSource()Lcom/google/zxing/LuminanceSource;
.registers 2
iget-object v0, p0, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;
return-object v0
.end method
.method public final getWidth()I
.registers 2
iget-object v0, p0, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;
invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I
move-result v0
return v0
.end method