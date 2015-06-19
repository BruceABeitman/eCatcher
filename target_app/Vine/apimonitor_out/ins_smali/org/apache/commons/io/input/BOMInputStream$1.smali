.class final Lorg/apache/commons/io/input/BOMInputStream$1;
.super Ljava/lang/Object;
.source "BOMInputStream.java"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lorg/apache/commons/io/ByteOrderMark;
check-cast p2, Lorg/apache/commons/io/ByteOrderMark;
invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/input/BOMInputStream$1;->compare(Lorg/apache/commons/io/ByteOrderMark;Lorg/apache/commons/io/ByteOrderMark;)I
move-result v0
return v0
.end method
.method public compare(Lorg/apache/commons/io/ByteOrderMark;Lorg/apache/commons/io/ByteOrderMark;)I
.registers 6
invoke-virtual {p1}, Lorg/apache/commons/io/ByteOrderMark;->length()I
move-result v0
invoke-virtual {p2}, Lorg/apache/commons/io/ByteOrderMark;->length()I
move-result v1
if-le v0, v1, :cond_c
const/4 v2, -0x1
:goto_b
return v2
:cond_c
if-le v1, v0, :cond_10
const/4 v2, 0x1
goto :goto_b
:cond_10
const/4 v2, 0x0
goto :goto_b
.end method