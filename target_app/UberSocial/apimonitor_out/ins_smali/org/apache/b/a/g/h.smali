.class public Lorg/apache/b/a/g/h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final a:J = -0x50f329210bb1d21bL
.field private final b:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lorg/apache/b/a/g/h;->b:Ljava/util/Map;
return-void
.end method
.method public static a(Ljava/lang/Object;)Ljava/lang/String;
.registers 4
const/4 v1, 0x0
if-nez p0, :cond_5
const/4 p0, 0x0
:goto_4
return-object p0
:cond_5
instance-of v0, p0, Ljava/lang/String;
if-eqz v0, :cond_c
check-cast p0, Ljava/lang/String;
goto :goto_4
:cond_c
instance-of v0, p0, [Ljava/lang/String;
if-eqz v0, :cond_17
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
aget-object p0, p0, v1
goto :goto_4
:cond_17
instance-of v0, p0, Ljava/util/List;
if-eqz v0, :cond_25
check-cast p0, Ljava/util/List;
invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
move-object p0, v0
goto :goto_4
:cond_25
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Invalid parameter class: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static a(Ljava/util/Map;)Ljava/util/Map;
.registers 4
invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
invoke-static {v2}, Lorg/apache/b/a/g/h;->b(Ljava/lang/Object;)[Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_8
:cond_20
invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/lang/Object;)[Ljava/lang/String;
.registers 4
if-nez p0, :cond_4
const/4 p0, 0x0
:goto_3
return-object p0
:cond_4
instance-of v0, p0, Ljava/lang/String;
if-eqz v0, :cond_12
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
check-cast p0, Ljava/lang/String;
aput-object p0, v0, v1
move-object p0, v0
goto :goto_3
:cond_12
instance-of v0, p0, [Ljava/lang/String;
if-eqz v0, :cond_1b
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
goto :goto_3
:cond_1b
instance-of v0, p0, Ljava/util/List;
if-eqz v0, :cond_31
check-cast p0, Ljava/util/List;
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
check-cast v0, [Ljava/lang/String;
move-object p0, v0
goto :goto_3
:cond_31
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Invalid parameter class: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static c(Ljava/lang/Object;)Ljava/util/Enumeration;
.registers 4
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
instance-of v0, p0, Ljava/lang/String;
if-eqz v0, :cond_e
new-instance v0, Lorg/apache/b/a/g/i;
invoke-direct {v0, p0}, Lorg/apache/b/a/g/i;-><init>(Ljava/lang/Object;)V
goto :goto_3
:cond_e
instance-of v0, p0, [Ljava/lang/String;
if-eqz v0, :cond_1c
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
new-instance v0, Lorg/apache/b/a/g/j;
invoke-direct {v0, p0}, Lorg/apache/b/a/g/j;-><init>([Ljava/lang/String;)V
goto :goto_3
:cond_1c
instance-of v0, p0, Ljava/util/List;
if-eqz v0, :cond_27
check-cast p0, Ljava/util/List;
invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
move-result-object v0
goto :goto_3
:cond_27
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Invalid parameter class: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/g/h;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lorg/apache/b/a/g/h;->b:Ljava/util/Map;
invoke-virtual {p0, p1}, Lorg/apache/b/a/g/h;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1, p2}, Lorg/apache/b/a/g/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_a
:goto_6
invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
:cond_a
instance-of v0, v1, Ljava/lang/String;
if-eqz v0, :cond_1b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object p3, v0
goto :goto_6
:cond_1b
instance-of v0, v1, Ljava/util/List;
if-eqz v0, :cond_27
move-object v0, v1
check-cast v0, Ljava/util/List;
invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object p3, v1
goto :goto_6
:cond_27
instance-of v0, v1, [Ljava/lang/String;
if-eqz v0, :cond_45
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
check-cast v1, [Ljava/lang/String;
check-cast v1, [Ljava/lang/String;
const/4 v0, 0x0
:goto_35
array-length v3, v1
if-ge v0, v3, :cond_40
aget-object v3, v1, v0
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_35
:cond_40
invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object p3, v2
goto :goto_6
:cond_45
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Invalid object type: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public b(Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lorg/apache/b/a/g/h;->b:Ljava/util/Map;
invoke-virtual {p0, p1}, Lorg/apache/b/a/g/h;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lorg/apache/b/a/g/h;->a(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/g/h;->b:Ljava/util/Map;
invoke-static {v0}, Lorg/apache/b/a/g/h;->a(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public c()[Ljava/lang/String;
.registers 3
iget-object v0, p0, Lorg/apache/b/a/g/h;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->size()I
move-result v1
new-array v1, v1, [Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
check-cast v0, [Ljava/lang/String;
return-object v0
.end method
.method public c(Ljava/lang/String;)[Ljava/lang/String;
.registers 4
iget-object v0, p0, Lorg/apache/b/a/g/h;->b:Ljava/util/Map;
invoke-virtual {p0, p1}, Lorg/apache/b/a/g/h;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lorg/apache/b/a/g/h;->b(Ljava/lang/Object;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public d(Ljava/lang/String;)Ljava/util/Enumeration;
.registers 4
iget-object v0, p0, Lorg/apache/b/a/g/h;->b:Ljava/util/Map;
invoke-virtual {p0, p1}, Lorg/apache/b/a/g/h;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lorg/apache/b/a/g/h;->c(Ljava/lang/Object;)Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method