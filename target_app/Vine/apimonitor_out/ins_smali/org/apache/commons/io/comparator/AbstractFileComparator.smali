.class abstract Lorg/apache/commons/io/comparator/AbstractFileComparator;
.super Ljava/lang/Object;
.source "AbstractFileComparator.java"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public sort(Ljava/util/List;)Ljava/util/List;
.registers 2
if-eqz p1, :cond_5
invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
:cond_5
return-object p1
.end method
.method public varargs sort([Ljava/io/File;)[Ljava/io/File;
.registers 2
if-eqz p1, :cond_5
invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
:cond_5
return-object p1
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method