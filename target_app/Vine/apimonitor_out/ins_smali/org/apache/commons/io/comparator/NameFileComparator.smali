.class public Lorg/apache/commons/io/comparator/NameFileComparator;
.super Lorg/apache/commons/io/comparator/AbstractFileComparator;
.source "NameFileComparator.java"
.implements Ljava/io/Serializable;
.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
.field public static final NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;
.field public static final NAME_INSENSITIVE_REVERSE:Ljava/util/Comparator;
.field public static final NAME_REVERSE:Ljava/util/Comparator;
.field public static final NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;
.field public static final NAME_SYSTEM_REVERSE:Ljava/util/Comparator;
.field private final caseSensitivity:Lorg/apache/commons/io/IOCase;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lorg/apache/commons/io/comparator/NameFileComparator;
invoke-direct {v0}, Lorg/apache/commons/io/comparator/NameFileComparator;-><init>()V
sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_COMPARATOR:Ljava/util/Comparator;
new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;
sget-object v1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_COMPARATOR:Ljava/util/Comparator;
invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V
sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_REVERSE:Ljava/util/Comparator;
new-instance v0, Lorg/apache/commons/io/comparator/NameFileComparator;
sget-object v1, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;
invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/NameFileComparator;-><init>(Lorg/apache/commons/io/IOCase;)V
sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;
new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;
sget-object v1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;
invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V
sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_REVERSE:Ljava/util/Comparator;
new-instance v0, Lorg/apache/commons/io/comparator/NameFileComparator;
sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;
invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/NameFileComparator;-><init>(Lorg/apache/commons/io/IOCase;)V
sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;
new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;
sget-object v1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;
invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V
sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_REVERSE:Ljava/util/Comparator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V
sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;
iput-object v0, p0, Lorg/apache/commons/io/comparator/NameFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;
return-void
.end method
.method public constructor <init>(Lorg/apache/commons/io/IOCase;)V
.registers 2
invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V
if-nez p1, :cond_7
sget-object p1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;
:cond_7
iput-object p1, p0, Lorg/apache/commons/io/comparator/NameFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;
return-void
.end method
.method public compare(Ljava/io/File;Ljava/io/File;)I
.registers 6
iget-object v0, p0, Lorg/apache/commons/io/comparator/NameFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/apache/commons/io/IOCase;->checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/io/File;
check-cast p2, Ljava/io/File;
invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/comparator/NameFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I
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
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-super {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "[caseSensitivity="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lorg/apache/commons/io/comparator/NameFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method