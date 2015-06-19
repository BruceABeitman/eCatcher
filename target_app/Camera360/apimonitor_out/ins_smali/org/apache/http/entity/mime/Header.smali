.class public Lorg/apache/http/entity/mime/Header;
.super Ljava/lang/Object;
.source "Header.java"
.implements Ljava/lang/Iterable;
.field private final fieldMap:Ljava/util/Map;
.field private final fields:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lorg/apache/http/entity/mime/Header;->fields:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lorg/apache/http/entity/mime/Header;->fieldMap:Ljava/util/Map;
return-void
.end method
.method public addField(Lorg/apache/http/entity/mime/MinimalField;)V
.registers 6
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
invoke-virtual {p1}, Lorg/apache/http/entity/mime/MinimalField;->getName()Ljava/lang/String;
move-result-object v2
sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lorg/apache/http/entity/mime/Header;->fieldMap:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-nez v1, :cond_21
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
iget-object v2, p0, Lorg/apache/http/entity/mime/Header;->fieldMap:Ljava/util/Map;
invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_21
invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lorg/apache/http/entity/mime/Header;->fields:Ljava/util/List;
invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_2
.end method
.method public getField(Ljava/lang/String;)Lorg/apache/http/entity/mime/MinimalField;
.registers 6
const/4 v2, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return-object v2
:cond_4
sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lorg/apache/http/entity/mime/Header;->fieldMap:Ljava/util/Map;
invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-eqz v1, :cond_3
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v3
if-nez v3, :cond_3
const/4 v2, 0x0
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lorg/apache/http/entity/mime/MinimalField;
goto :goto_3
.end method
.method public getFields()Ljava/util/List;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lorg/apache/http/entity/mime/Header;->fields:Ljava/util/List;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public getFields(Ljava/lang/String;)Ljava/util/List;
.registers 5
if-nez p1, :cond_4
const/4 v2, 0x0
:goto_3
return-object v2
:cond_4
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lorg/apache/http/entity/mime/Header;->fieldMap:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-eqz v1, :cond_1a
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_1f
:cond_1a
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v2
goto :goto_3
:cond_1f
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
goto :goto_3
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lorg/apache/http/entity/mime/Header;->fields:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public removeFields(Ljava/lang/String;)I
.registers 6
const/4 v2, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return v2
:cond_4
sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lorg/apache/http/entity/mime/Header;->fieldMap:Ljava/util/Map;
invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-eqz v1, :cond_3
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v3
if-nez v3, :cond_3
iget-object v2, p0, Lorg/apache/http/entity/mime/Header;->fields:Ljava/util/List;
invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v2
goto :goto_3
.end method
.method public setField(Lorg/apache/http/entity/mime/MinimalField;)V
.registers 10
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
invoke-virtual {p1}, Lorg/apache/http/entity/mime/MinimalField;->getName()Ljava/lang/String;
move-result-object v6
sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v4
iget-object v6, p0, Lorg/apache/http/entity/mime/Header;->fieldMap:Ljava/util/Map;
invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/util/List;
if-eqz v5, :cond_1d
invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
move-result v6
if-eqz v6, :cond_21
:cond_1d
invoke-virtual {p0, p1}, Lorg/apache/http/entity/mime/Header;->addField(Lorg/apache/http/entity/mime/MinimalField;)V
goto :goto_2
:cond_21
invoke-interface {v5}, Ljava/util/List;->clear()V
invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v1, -0x1
const/4 v2, 0x0
iget-object v6, p0, Lorg/apache/http/entity/mime/Header;->fields:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_2f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_53
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/http/entity/mime/MinimalField;
invoke-virtual {v0}, Lorg/apache/http/entity/mime/MinimalField;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1}, Lorg/apache/http/entity/mime/MinimalField;->getName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_50
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
const/4 v6, -0x1
if-ne v1, v6, :cond_50
move v1, v2
:cond_50
add-int/lit8 v2, v2, 0x1
goto :goto_2f
:cond_53
iget-object v6, p0, Lorg/apache/http/entity/mime/Header;->fields:Ljava/util/List;
invoke-interface {v6, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
goto :goto_2
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/http/entity/mime/Header;->fields:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method