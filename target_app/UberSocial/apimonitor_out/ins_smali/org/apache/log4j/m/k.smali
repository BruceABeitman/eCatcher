.class public Lorg/apache/log4j/m/k;
.super Lorg/apache/log4j/u;
.source "SourceFile"
.field private final a:I
.field private final b:I
.field private c:Ljava/lang/StringBuffer;
.field private d:Z
.field private e:Z
.method public constructor <init>()V
.registers 4
const/16 v2, 0x100
const/4 v1, 0x0
invoke-direct {p0}, Lorg/apache/log4j/u;-><init>()V
iput v2, p0, Lorg/apache/log4j/m/k;->a:I
const/16 v0, 0x800
iput v0, p0, Lorg/apache/log4j/m/k;->b:I
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
iput-boolean v1, p0, Lorg/apache/log4j/m/k;->d:Z
iput-boolean v1, p0, Lorg/apache/log4j/m/k;->e:Z
return-void
.end method
.method public a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->capacity()I
move-result v0
const/16 v2, 0x800
if-le v0, v2, :cond_bb
new-instance v0, Ljava/lang/StringBuffer;
const/16 v2, 0x100
invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
:goto_14
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v2, "<log4j:event logger=\""
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->c()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/log4j/c/af;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v2, "\" timestamp=\""
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
iget-wide v2, p1, Lorg/apache/log4j/k/k;->d:J
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v2, "\" level=\""
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/log4j/c/af;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v2, "\" thread=\""
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/log4j/c/af;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v2, "\">\r\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v2, "<log4j:message><![CDATA["
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lorg/apache/log4j/c/af;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v2, "]]></log4j:message>\r\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_99
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v3, "<log4j:NDC><![CDATA["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-static {v2, v0}, Lorg/apache/log4j/c/af;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v2, "]]></log4j:NDC>\r\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_99
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_c9
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v3, "<log4j:throwable><![CDATA["
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v0, v1
:goto_a7
array-length v3, v2
if-ge v0, v3, :cond_c2
iget-object v3, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
aget-object v4, v2, v0
invoke-static {v3, v4}, Lorg/apache/log4j/c/af;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V
iget-object v3, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v4, "\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_a7
:cond_bb
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V
goto/16 :goto_14
:cond_c2
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v2, "]]></log4j:throwable>\r\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_c9
iget-boolean v0, p0, Lorg/apache/log4j/m/k;->d:Z
if-eqz v0, :cond_124
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;
move-result-object v0
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v3, "<log4j:locationInfo class=\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Lorg/apache/log4j/k/h;->a()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lorg/apache/log4j/c/af;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v3, "\" method=\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Lorg/apache/log4j/k/h;->d()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lorg/apache/log4j/c/af;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v3, "\" file=\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Lorg/apache/log4j/k/h;->b()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lorg/apache/log4j/c/af;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v3, "\" line=\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Lorg/apache/log4j/k/h;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v2, "\"/>\r\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_124
iget-boolean v0, p0, Lorg/apache/log4j/m/k;->e:Z
if-eqz v0, :cond_184
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->o()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v2
if-lez v2, :cond_184
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v3, "<log4j:properties>\r\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
:goto_140
array-length v2, v0
if-ge v1, v2, :cond_17d
aget-object v2, v0, v1
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Lorg/apache/log4j/k/k;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_17a
iget-object v4, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v5, "<log4j:data name=\""
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v4, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-static {v2}, Lorg/apache/log4j/c/af;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v4, "\" value=\""
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lorg/apache/log4j/c/af;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v3, "\"/>\r\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_17a
add-int/lit8 v1, v1, 0x1
goto :goto_140
:cond_17d
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v1, "</log4j:properties>\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_184
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
const-string v1, "</log4j:event>\r\n\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/m/k;->c:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/log4j/m/k;->d:Z
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/m/k;->d:Z
return v0
.end method
.method public b(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/log4j/m/k;->e:Z
return-void
.end method
.method public b()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public c()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/m/k;->e:Z
return v0
.end method
.method public i()V
.registers 1
return-void
.end method