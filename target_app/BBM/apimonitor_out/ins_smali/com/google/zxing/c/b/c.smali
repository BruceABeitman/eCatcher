.class public final Lcom/google/zxing/c/b/c;
.super Ljava/lang/Object;
.source "Detector.java"
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/google/zxing/c/b/c;-><init>()V
return-void
.end method
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
check-cast p1, Lcom/google/zxing/c/b/b;
check-cast p2, Lcom/google/zxing/c/b/b;
iget v0, p1, Lcom/google/zxing/c/b/b;->c:I
iget v1, p2, Lcom/google/zxing/c/b/b;->c:I
sub-int/2addr v0, v1
return v0
.end method