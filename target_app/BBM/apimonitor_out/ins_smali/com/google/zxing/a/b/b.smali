.class public final Lcom/google/zxing/a/b/b;
.super Ljava/lang/Object;
.source "Detector.java"
.field public final a:I
.field public final b:I
.method private constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/a/b/b;->a:I
iput p2, p0, Lcom/google/zxing/a/b/b;->b:I
return-void
.end method
.method public synthetic constructor <init>(IIB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/zxing/a/b/b;-><init>(II)V
return-void
.end method
.method public final a()Lcom/google/zxing/o;
.registers 4
new-instance v0, Lcom/google/zxing/o;
iget v1, p0, Lcom/google/zxing/a/b/b;->a:I
int-to-float v1, v1
iget v2, p0, Lcom/google/zxing/a/b/b;->b:I
int-to-float v2, v2
invoke-direct {v0, v1, v2}, Lcom/google/zxing/o;-><init>(FF)V
return-object v0
.end method