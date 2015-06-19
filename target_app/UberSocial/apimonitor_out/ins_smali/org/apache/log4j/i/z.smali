.class  Lorg/apache/log4j/i/z;
.super Lorg/apache/log4j/i/v;
.source "SourceFile"
.field private final a:[Lorg/apache/log4j/i/aa;
.method public constructor <init>(Ljava/util/List;)V
.registers 4
invoke-direct {p0}, Lorg/apache/log4j/i/v;-><init>()V
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "fragments must have at least one element"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Lorg/apache/log4j/i/aa;
iput-object v0, p0, Lorg/apache/log4j/i/z;->a:[Lorg/apache/log4j/i/aa;
iget-object v0, p0, Lorg/apache/log4j/i/z;->a:[Lorg/apache/log4j/i/aa;
invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
return-void
.end method
.method public a(ILjava/lang/StringBuffer;)V
.registers 5
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lorg/apache/log4j/i/z;->a:[Lorg/apache/log4j/i/aa;
array-length v1, v1
add-int/lit8 v1, v1, -0x1
if-ge v0, v1, :cond_19
invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I
move-result v1
if-ge p1, v1, :cond_19
iget-object v1, p0, Lorg/apache/log4j/i/z;->a:[Lorg/apache/log4j/i/aa;
aget-object v1, v1, v0
invoke-virtual {v1, p2, p1}, Lorg/apache/log4j/i/aa;->a(Ljava/lang/StringBuffer;I)I
move-result p1
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_19
iget-object v0, p0, Lorg/apache/log4j/i/z;->a:[Lorg/apache/log4j/i/aa;
iget-object v1, p0, Lorg/apache/log4j/i/z;->a:[Lorg/apache/log4j/i/aa;
array-length v1, v1
add-int/lit8 v1, v1, -0x1
aget-object v0, v0, v1
:goto_22
invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I
move-result v1
if-ge p1, v1, :cond_2f
if-ltz p1, :cond_2f
invoke-virtual {v0, p2, p1}, Lorg/apache/log4j/i/aa;->a(Ljava/lang/StringBuffer;I)I
move-result p1
goto :goto_22
:cond_2f
return-void
.end method