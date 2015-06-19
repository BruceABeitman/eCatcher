.class public Lorg/apache/commons/io/comparator/DirectoryFileComparator;
.super Lorg/apache/commons/io/comparator/AbstractFileComparator;
.source "DirectoryFileComparator.java"
.implements Ljava/io/Serializable;
.field public static final DIRECTORY_COMPARATOR:Ljava/util/Comparator;
.field public static final DIRECTORY_REVERSE:Ljava/util/Comparator;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lorg/apache/commons/io/comparator/DirectoryFileComparator;
invoke-direct {v0}, Lorg/apache/commons/io/comparator/DirectoryFileComparator;-><init>()V
sput-object v0, Lorg/apache/commons/io/comparator/DirectoryFileComparator;->DIRECTORY_COMPARATOR:Ljava/util/Comparator;
new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;
sget-object v1, Lorg/apache/commons/io/comparator/DirectoryFileComparator;->DIRECTORY_COMPARATOR:Ljava/util/Comparator;
invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V
sput-object v0, Lorg/apache/commons/io/comparator/DirectoryFileComparator;->DIRECTORY_REVERSE:Ljava/util/Comparator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V
return-void
.end method
.method private getType(Ljava/io/File;)I
.registers 3
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x2
goto :goto_7
.end method
.method public compare(Ljava/io/File;Ljava/io/File;)I
.registers 5
invoke-direct {p0, p1}, Lorg/apache/commons/io/comparator/DirectoryFileComparator;->getType(Ljava/io/File;)I
move-result v0
invoke-direct {p0, p2}, Lorg/apache/commons/io/comparator/DirectoryFileComparator;->getType(Ljava/io/File;)I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/io/File;
check-cast p2, Ljava/io/File;
invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/comparator/DirectoryFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I
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