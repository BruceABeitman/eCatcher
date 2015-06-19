.class  Lorg/apache/log4j/f/b/ag;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lorg/apache/log4j/f/b/a;
.field private final b:Lorg/apache/log4j/f/b/d;
.method constructor <init>(Lorg/apache/log4j/f/b/d;Lorg/apache/log4j/f/b/a;)V
.registers 3
iput-object p1, p0, Lorg/apache/log4j/f/b/ag;->b:Lorg/apache/log4j/f/b/d;
iput-object p2, p0, Lorg/apache/log4j/f/b/ag;->a:Lorg/apache/log4j/f/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "Maximum number of displayed LogRecords: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/f/b/ag;->a:Lorg/apache/log4j/f/b/a;
iget v1, v1, Lorg/apache/log4j/f/b/a;->d:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method