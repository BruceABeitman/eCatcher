.class  Lorg/apache/log4j/i/x;
.super Lorg/apache/log4j/i/v;
.source "SourceFile"
.field private final a:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lorg/apache/log4j/i/v;-><init>()V
iput p1, p0, Lorg/apache/log4j/i/x;->a:I
return-void
.end method
.method public a(ILjava/lang/StringBuffer;)V
.registers 7
invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I
move-result v0
add-int/lit8 v1, v0, -0x1
invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
iget v0, p0, Lorg/apache/log4j/i/x;->a:I
:goto_c
if-lez v0, :cond_1f
const-string v3, "."
add-int/lit8 v1, v1, -0x1
invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I
move-result v1
const/4 v3, -0x1
if-eq v1, v3, :cond_1b
if-ge v1, p1, :cond_1c
:goto_1b
:cond_1b
return-void
:cond_1c
add-int/lit8 v0, v0, -0x1
goto :goto_c
:cond_1f
add-int/lit8 v0, v1, 0x1
invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
goto :goto_1b
.end method