.class  Lorg/apache/commons/io/comparator/ReverseComparator;
.super Lorg/apache/commons/io/comparator/AbstractFileComparator;
.source "ReverseComparator.java"
.implements Ljava/io/Serializable;
.field private final delegate:Ljava/util/Comparator;
.method public constructor <init>(Ljava/util/Comparator;)V
.registers 4
invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Delegate comparator is missing"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lorg/apache/commons/io/comparator/ReverseComparator;->delegate:Ljava/util/Comparator;
return-void
.end method
.method public compare(Ljava/io/File;Ljava/io/File;)I
.registers 4
iget-object v0, p0, Lorg/apache/commons/io/comparator/ReverseComparator;->delegate:Ljava/util/Comparator;
invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/io/File;
check-cast p2, Ljava/io/File;
invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/comparator/ReverseComparator;->compare(Ljava/io/File;Ljava/io/File;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-super {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "["
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lorg/apache/commons/io/comparator/ReverseComparator;->delegate:Ljava/util/Comparator;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method