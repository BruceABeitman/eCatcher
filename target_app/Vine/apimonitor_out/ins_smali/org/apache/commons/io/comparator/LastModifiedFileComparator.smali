.class public Lorg/apache/commons/io/comparator/LastModifiedFileComparator;
.super Lorg/apache/commons/io/comparator/AbstractFileComparator;
.source "LastModifiedFileComparator.java"
.implements Ljava/io/Serializable;
.field public static final LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;
.field public static final LASTMODIFIED_REVERSE:Ljava/util/Comparator;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;
invoke-direct {v0}, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;-><init>()V
sput-object v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;
new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;
sget-object v1, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;
invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V
sput-object v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_REVERSE:Ljava/util/Comparator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V
return-void
.end method
.method public compare(Ljava/io/File;Ljava/io/File;)I
.registers 11
const-wide/16 v6, 0x0
invoke-virtual {p1}, Ljava/io/File;->lastModified()J
move-result-wide v2
invoke-virtual {p2}, Ljava/io/File;->lastModified()J
move-result-wide v4
sub-long v0, v2, v4
cmp-long v2, v0, v6
if-gez v2, :cond_12
const/4 v2, -0x1
:goto_11
return v2
:cond_12
cmp-long v2, v0, v6
if-lez v2, :cond_18
const/4 v2, 0x1
goto :goto_11
:cond_18
const/4 v2, 0x0
goto :goto_11
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/io/File;
check-cast p2, Ljava/io/File;
invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I
move-result v0
return v0
.end method
.method public bridge synthetic sort(Ljava/util/List;)Ljava/util/List;
.registers 3
invoke-super {p0, p1}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->sort(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic sort([Ljava/io/File;)[Ljava/io/File;
.registers 3
invoke-super {p0, p1}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->sort([Ljava/io/File;)[Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic toString()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method