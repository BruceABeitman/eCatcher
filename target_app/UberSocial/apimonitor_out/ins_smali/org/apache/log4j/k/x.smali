.class  Lorg/apache/log4j/k/x;
.super Ljava/io/PrintWriter;
.source "SourceFile"
.field private a:Ljava/util/Vector;
.method constructor <init>()V
.registers 2
new-instance v0, Lorg/apache/log4j/k/n;
invoke-direct {v0}, Lorg/apache/log4j/k/n;-><init>()V
invoke-direct {p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
return-void
.end method
.method public a()[Ljava/lang/String;
.registers 5
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v2
new-array v3, v2, [Ljava/lang/String;
const/4 v0, 0x0
move v1, v0
:goto_a
if-ge v1, v2, :cond_1a
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
aput-object v0, v3, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_a
:cond_1a
return-object v3
.end method
.method public print(Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public print(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public print([C)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
new-instance v1, Ljava/lang/String;
invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public println(Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public println(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public println([C)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
new-instance v1, Ljava/lang/String;
invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public write(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public write(Ljava/lang/String;II)V
.registers 6
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
add-int v1, p2, p3
invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public write([C)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
new-instance v1, Ljava/lang/String;
invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public write([CII)V
.registers 6
iget-object v0, p0, Lorg/apache/log4j/k/x;->a:Ljava/util/Vector;
new-instance v1, Ljava/lang/String;
invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method