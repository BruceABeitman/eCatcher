.class public Lorg/apache/log4j/l/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/k/e;
.field  a:Lorg/apache/log4j/a;
.field  b:Lorg/apache/log4j/a;
.field  c:Ljava/util/Vector;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/Exception;I)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/log4j/l/c;->a(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/k/k;)V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/k/k;)V
.registers 9
instance-of v0, p2, Ljava/io/InterruptedIOException;
if-eqz v0, :cond_b
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:cond_b
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "FB: The following error reported: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
const-string v0, "FB: INITIATING FALLBACK PROCEDURE."
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/l/c;->c:Ljava/util/Vector;
if-eqz v0, :cond_e5
const/4 v0, 0x0
move v1, v0
:goto_2c
iget-object v0, p0, Lorg/apache/log4j/l/c;->c:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-ge v1, v0, :cond_e5
iget-object v0, p0, Lorg/apache/log4j/l/c;->c:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "FB: Searching for ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/l/c;->b:Lorg/apache/log4j/a;
invoke-interface {v3}, Lorg/apache/log4j/a;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "] in logger ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v0}, Lorg/apache/log4j/aa;->j()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "FB: Replacing ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/l/c;->b:Lorg/apache/log4j/a;
invoke-interface {v3}, Lorg/apache/log4j/a;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "] by ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/l/c;->a:Lorg/apache/log4j/a;
invoke-interface {v3}, Lorg/apache/log4j/a;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "] in logger ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v0}, Lorg/apache/log4j/aa;->j()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
iget-object v2, p0, Lorg/apache/log4j/l/c;->b:Lorg/apache/log4j/a;
invoke-virtual {v0, v2}, Lorg/apache/log4j/aa;->c(Lorg/apache/log4j/a;)V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "FB: Adding appender ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/l/c;->a:Lorg/apache/log4j/a;
invoke-interface {v3}, Lorg/apache/log4j/a;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "] to logger "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v0}, Lorg/apache/log4j/aa;->j()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
iget-object v2, p0, Lorg/apache/log4j/l/c;->a:Lorg/apache/log4j/a;
invoke-virtual {v0, v2}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/a;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto/16 :goto_2c
:cond_e5
return-void
.end method
.method public a(Lorg/apache/log4j/a;)V
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "FB: Setting primary appender to ["
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-interface {p1}, Lorg/apache/log4j/a;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "]."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
iput-object p1, p0, Lorg/apache/log4j/l/c;->b:Lorg/apache/log4j/a;
return-void
.end method
.method public a(Lorg/apache/log4j/aa;)V
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "FB: Adding logger ["
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {p1}, Lorg/apache/log4j/aa;->j()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "]."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/l/c;->c:Ljava/util/Vector;
if-nez v0, :cond_2b
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/l/c;->c:Ljava/util/Vector;
:cond_2b
iget-object v0, p0, Lorg/apache/log4j/l/c;->c:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public b(Lorg/apache/log4j/a;)V
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "FB: Setting backup appender to ["
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-interface {p1}, Lorg/apache/log4j/a;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "]."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
iput-object p1, p0, Lorg/apache/log4j/l/c;->a:Lorg/apache/log4j/a;
return-void
.end method
.method public i()V
.registers 1
return-void
.end method