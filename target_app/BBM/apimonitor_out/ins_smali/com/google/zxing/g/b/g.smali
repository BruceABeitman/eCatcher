.class public final Lcom/google/zxing/g/b/g;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;
.field private final a:F
.method private constructor <init>(F)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/g/b/g;->a:F
return-void
.end method
.method public synthetic constructor <init>(FB)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/zxing/g/b/g;-><init>(F)V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 6
check-cast p1, Lcom/google/zxing/g/b/d;
check-cast p2, Lcom/google/zxing/g/b/d;
iget v0, p2, Lcom/google/zxing/g/b/d;->c:F
iget v1, p0, Lcom/google/zxing/g/b/g;->a:F
sub-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
iget v1, p1, Lcom/google/zxing/g/b/d;->c:F
iget v2, p0, Lcom/google/zxing/g/b/g;->a:F
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpg-float v2, v0, v1
if-gez v2, :cond_1c
const/4 v0, -0x1
:goto_1b
return v0
:cond_1c
cmpl-float v0, v0, v1
if-nez v0, :cond_22
const/4 v0, 0x0
goto :goto_1b
:cond_22
const/4 v0, 0x1
goto :goto_1b
.end method