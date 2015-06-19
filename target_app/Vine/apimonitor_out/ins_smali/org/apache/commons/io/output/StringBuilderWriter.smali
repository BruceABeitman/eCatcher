.class public Lorg/apache/commons/io/output/StringBuilderWriter;
.super Ljava/io/Writer;
.source "StringBuilderWriter.java"
.implements Ljava/io/Serializable;
.field private final builder:Ljava/lang/StringBuilder;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/io/Writer;-><init>()V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lorg/apache/commons/io/output/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;
return-void
.end method
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/io/Writer;-><init>()V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V
iput-object v0, p0, Lorg/apache/commons/io/output/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;
return-void
.end method
.method public constructor <init>(Ljava/lang/StringBuilder;)V
.registers 2
invoke-direct {p0}, Ljava/io/Writer;-><init>()V
if-eqz p1, :cond_8
:goto_5
iput-object p1, p0, Lorg/apache/commons/io/output/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;
return-void
:cond_8
new-instance p1, Ljava/lang/StringBuilder;
invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V
goto :goto_5
.end method
.method public append(C)Ljava/io/Writer;
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/output/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
return-object p0
.end method
.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/output/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
return-object p0
.end method
.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
.registers 5
iget-object v0, p0, Lorg/apache/commons/io/output/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
return-object p0
.end method
.method public bridge synthetic append(C)Ljava/lang/Appendable;
.registers 3
invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/StringBuilderWriter;->append(C)Ljava/io/Writer;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
.registers 3
invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/StringBuilderWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/StringBuilderWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
move-result-object v0
return-object v0
.end method
.method public close()V
.registers 1
return-void
.end method
.method public flush()V
.registers 1
return-void
.end method
.method public getBuilder()Ljava/lang/StringBuilder;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/output/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/output/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public write(Ljava/lang/String;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lorg/apache/commons/io/output/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_7
return-void
.end method
.method public write([CII)V
.registers 5
if-eqz p1, :cond_7
iget-object v0, p0, Lorg/apache/commons/io/output/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
:cond_7
return-void
.end method