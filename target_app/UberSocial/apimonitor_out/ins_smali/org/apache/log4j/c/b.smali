.class public Lorg/apache/log4j/c/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/k/a;
.field protected a:Ljava/util/Vector;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lorg/apache/log4j/k/k;)I
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
if-eqz v1, :cond_1e
iget-object v1, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v1
move v2, v0
:goto_c
if-ge v2, v1, :cond_1d
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/a;
invoke-interface {v0, p1}, Lorg/apache/log4j/a;->b(Lorg/apache/log4j/k/k;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_c
:cond_1d
move v0, v1
:cond_1e
return v0
.end method
.method public a(Lorg/apache/log4j/a;)V
.registers 4
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
if-nez v0, :cond_f
new-instance v0, Ljava/util/Vector;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
:cond_f
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_2
.end method
.method public b(Ljava/lang/String;)Lorg/apache/log4j/a;
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
if-eqz v0, :cond_7
if-nez p1, :cond_9
:cond_7
move-object v0, v1
:goto_8
:cond_8
return-object v0
:cond_9
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v3
const/4 v0, 0x0
move v2, v0
:goto_11
if-ge v2, v3, :cond_29
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/a;
invoke-interface {v0}, Lorg/apache/log4j/a;->f()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_8
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_11
:cond_29
move-object v0, v1
goto :goto_8
.end method
.method public b(Lorg/apache/log4j/a;)Z
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
if-eqz v0, :cond_7
if-nez p1, :cond_9
:cond_7
move v0, v1
:goto_8
return v0
:cond_9
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v3
move v2, v1
:goto_10
if-ge v2, v3, :cond_22
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/a;
if-ne v0, p1, :cond_1e
const/4 v0, 0x1
goto :goto_8
:cond_1e
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_10
:cond_22
move v0, v1
goto :goto_8
.end method
.method public c()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v0
goto :goto_5
.end method
.method public c(Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_6
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_f
if-ge v1, v2, :cond_6
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/a;
invoke-interface {v0}, Lorg/apache/log4j/a;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_29
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V
goto :goto_6
:cond_29
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_f
.end method
.method public c(Lorg/apache/log4j/a;)V
.registers 3
if-eqz p1, :cond_6
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
goto :goto_6
.end method
.method public m()V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
if-eqz v0, :cond_25
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_c
if-ge v1, v2, :cond_1d
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/a;
invoke-interface {v0}, Lorg/apache/log4j/a;->a()V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_c
:cond_1d
iget-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/log4j/c/b;->a:Ljava/util/Vector;
:cond_25
return-void
.end method