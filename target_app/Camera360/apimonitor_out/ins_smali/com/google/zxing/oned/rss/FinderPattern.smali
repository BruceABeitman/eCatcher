.class public final Lcom/google/zxing/oned/rss/FinderPattern;
.super Ljava/lang/Object;
.source "FinderPattern.java"
.field private final resultPoints:[Lcom/google/zxing/ResultPoint;
.field private final startEnd:[I
.field private final value:I
.method public constructor <init>(I[IIII)V
.registers 11
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I
iput-object p2, p0, Lcom/google/zxing/oned/rss/FinderPattern;->startEnd:[I
const/4 v0, 0x2
new-array v0, v0, [Lcom/google/zxing/ResultPoint;
const/4 v1, 0x0
new-instance v2, Lcom/google/zxing/ResultPoint;
int-to-float v3, p3
int-to-float v4, p5
invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v2, v0, v1
const/4 v1, 0x1
new-instance v2, Lcom/google/zxing/ResultPoint;
int-to-float v3, p4
int-to-float v4, p5
invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
aput-object v2, v0, v1
iput-object v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->resultPoints:[Lcom/google/zxing/ResultPoint;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/zxing/oned/rss/FinderPattern;
if-nez v2, :cond_6
:cond_5
:goto_5
return v1
:cond_6
move-object v0, p1
check-cast v0, Lcom/google/zxing/oned/rss/FinderPattern;
iget v2, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I
iget v3, v0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I
if-ne v2, v3, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method
.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
.registers 2
iget-object v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->resultPoints:[Lcom/google/zxing/ResultPoint;
return-object v0
.end method
.method public getStartEnd()[I
.registers 2
iget-object v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->startEnd:[I
return-object v0
.end method
.method public getValue()I
.registers 2
iget v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I
return v0
.end method
.method public hashCode()I
.registers 2
iget v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I
return v0
.end method