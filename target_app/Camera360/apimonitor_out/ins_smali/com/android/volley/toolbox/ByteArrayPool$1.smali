.class  Lcom/android/volley/toolbox/ByteArrayPool$1;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, [B
check-cast p2, [B
invoke-virtual {p0, p1, p2}, Lcom/android/volley/toolbox/ByteArrayPool$1;->compare([B[B)I
move-result v0
return v0
.end method
.method public compare([B[B)I
.registers 5
array-length v0, p1
array-length v1, p2
sub-int/2addr v0, v1
return v0
.end method