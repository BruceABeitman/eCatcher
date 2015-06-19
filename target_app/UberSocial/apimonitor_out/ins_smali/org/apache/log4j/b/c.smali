.class public Lorg/apache/log4j/b/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/b/b;
.field protected a:I
.field protected b:Ljava/util/Hashtable;
.field protected c:Ljava/util/Hashtable;
.field protected d:Ljava/io/PrintWriter;
.field protected e:Z
.method public constructor <init>(Ljava/io/PrintWriter;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lorg/apache/log4j/b/c;-><init>(Ljava/io/PrintWriter;Z)V
return-void
.end method
.method public constructor <init>(Ljava/io/PrintWriter;Z)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lorg/apache/log4j/b/c;->a:I
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/b/c;->b:Ljava/util/Hashtable;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/b/c;->c:Ljava/util/Hashtable;
iput-object p1, p0, Lorg/apache/log4j/b/c;->d:Ljava/io/PrintWriter;
iput-boolean p2, p0, Lorg/apache/log4j/b/c;->e:Z
invoke-virtual {p0, p1}, Lorg/apache/log4j/b/c;->a(Ljava/io/PrintWriter;)V
invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
return-void
.end method
.method public static a([Ljava/lang/String;)V
.registers 4
new-instance v0, Lorg/apache/log4j/b/c;
new-instance v1, Ljava/io/PrintWriter;
sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
invoke-direct {v0, v1}, Lorg/apache/log4j/b/c;-><init>(Ljava/io/PrintWriter;)V
return-void
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z
move-result v0
if-eqz v0, :cond_30
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-eq v0, v1, :cond_1c
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z
move-result v0
if-eqz v0, :cond_30
:cond_1c
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C
move-result v1
invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
:cond_30
return-object p0
.end method
.method protected a()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "A"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget v1, p0, Lorg/apache/log4j/b/c;->a:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/apache/log4j/b/c;->a:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/io/PrintWriter;)V
.registers 4
invoke-static {}, Lorg/apache/log4j/aa;->t()Lorg/apache/log4j/aa;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/b/c;->a(Ljava/io/PrintWriter;Lorg/apache/log4j/aa;)V
invoke-static {}, Lorg/apache/log4j/x;->c()Ljava/util/Enumeration;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/aa;
invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/b/c;->a(Ljava/io/PrintWriter;Lorg/apache/log4j/aa;)V
goto :goto_b
:cond_1b
return-void
.end method
.method protected a(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/lang/String;)V
.registers 6
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p2, p0, v0}, Lorg/apache/log4j/b/a;->a(Ljava/lang/Object;Lorg/apache/log4j/b/b;Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/io/PrintWriter;Lorg/apache/log4j/aa;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/b/c;->a(Ljava/io/PrintWriter;Lorg/apache/log4j/g;)V
return-void
.end method
.method protected a(Ljava/io/PrintWriter;Lorg/apache/log4j/g;)V
.registers 9
invoke-virtual {p2}, Lorg/apache/log4j/g;->c()Ljava/util/Enumeration;
move-result-object v3
invoke-virtual {p2}, Lorg/apache/log4j/g;->l()Lorg/apache/log4j/v;
move-result-object v0
if-nez v0, :cond_8d
const-string v0, ""
:goto_c
move-object v2, v0
:goto_d
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_93
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/a;
iget-object v1, p0, Lorg/apache/log4j/b/c;->b:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-nez v1, :cond_74
invoke-interface {v0}, Lorg/apache/log4j/a;->f()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_2f
invoke-virtual {p0, v1}, Lorg/apache/log4j/b/c;->a(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_33
:cond_2f
invoke-virtual {p0}, Lorg/apache/log4j/b/c;->a()Ljava/lang/String;
move-result-object v1
:cond_33
iget-object v4, p0, Lorg/apache/log4j/b/c;->b:Ljava/util/Hashtable;
invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
const-string v5, "log4j.appender."
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, p1, v0, v4}, Lorg/apache/log4j/b/c;->a(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/lang/String;)V
invoke-interface {v0}, Lorg/apache/log4j/a;->h()Lorg/apache/log4j/u;
move-result-object v4
if-eqz v4, :cond_74
invoke-interface {v0}, Lorg/apache/log4j/a;->h()Lorg/apache/log4j/u;
move-result-object v0
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
const-string v5, "log4j.appender."
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
const-string v5, ".layout"
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, p1, v0, v4}, Lorg/apache/log4j/b/c;->a(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/lang/String;)V
:cond_74
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, ", "
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
move-object v2, v0
goto :goto_d
:cond_8d
invoke-virtual {v0}, Lorg/apache/log4j/v;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_c
:cond_93
invoke-static {}, Lorg/apache/log4j/aa;->t()Lorg/apache/log4j/aa;
move-result-object v0
if-ne p2, v0, :cond_e6
const-string v0, "log4j.rootLogger"
:goto_9b
const-string v1, ""
if-eq v2, v1, :cond_b9
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_b9
invoke-virtual {p2}, Lorg/apache/log4j/g;->b()Z
move-result v0
if-nez v0, :cond_e5
invoke-static {}, Lorg/apache/log4j/aa;->t()Lorg/apache/log4j/aa;
move-result-object v0
if-eq p2, v0, :cond_e5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "log4j.additivity."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {p2}, Lorg/apache/log4j/g;->j()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "=false"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_e5
return-void
:cond_e6
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "log4j.logger."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {p2}, Lorg/apache/log4j/g;->j()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_9b
.end method
.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.registers 8
instance-of v0, p1, Lorg/apache/log4j/a;
if-eqz v0, :cond_d
const-string v0, "name"
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
:goto_c
return-void
:cond_d
iget-boolean v0, p0, Lorg/apache/log4j/b/c;->e:Z
if-eqz v0, :cond_15
invoke-static {p3}, Lorg/apache/log4j/b/c;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object p3
:cond_15
iget-object v0, p0, Lorg/apache/log4j/b/c;->d:Ljava/io/PrintWriter;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "="
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
goto :goto_c
.end method
.method protected a(Ljava/lang/String;)Z
.registers 6
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
const/4 v2, 0x2
if-lt v0, v2, :cond_10
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v2, 0x41
if-eq v0, v2, :cond_11
:goto_10
:cond_10
return v1
:cond_11
move v0, v1
:goto_12
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-ge v0, v2, :cond_2b
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v3, 0x30
if-lt v2, v3, :cond_10
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v3, 0x39
if-gt v2, v3, :cond_10
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_2b
const/4 v1, 0x1
goto :goto_10
.end method