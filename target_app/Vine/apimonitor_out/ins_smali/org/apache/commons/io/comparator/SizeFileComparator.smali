.class public Lorg/apache/commons/io/comparator/SizeFileComparator;
.super Lorg/apache/commons/io/comparator/AbstractFileComparator;
.source "SizeFileComparator.java"
.implements Ljava/io/Serializable;
.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
.field public static final SIZE_REVERSE:Ljava/util/Comparator;
.field public static final SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;
.field public static final SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;
.field private final sumDirectoryContents:Z
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;
invoke-direct {v0}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>()V
sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;
new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;
sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;
invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V
sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_REVERSE:Ljava/util/Comparator;
new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;
const/4 v1, 0x1
invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>(Z)V
sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;
new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;
sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;
invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V
sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z
return-void
.end method
.method public constructor <init>(Z)V
.registers 2
invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V
iput-boolean p1, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z
return-void
.end method
.method public compare(Ljava/io/File;Ljava/io/File;)I
.registers 12
const-wide/16 v6, 0x0
const-wide/16 v2, 0x0
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v8
if-eqz v8, :cond_38
iget-boolean v8, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z
if-eqz v8, :cond_36
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v8
if-eqz v8, :cond_36
invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J
move-result-wide v2
:goto_18
const-wide/16 v4, 0x0
invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z
move-result v8
if-eqz v8, :cond_3f
iget-boolean v8, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z
if-eqz v8, :cond_3d
invoke-virtual {p2}, Ljava/io/File;->exists()Z
move-result v8
if-eqz v8, :cond_3d
invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J
move-result-wide v4
:goto_2e
sub-long v0, v2, v4
cmp-long v8, v0, v6
if-gez v8, :cond_44
const/4 v6, -0x1
:goto_35
return v6
:cond_36
move-wide v2, v6
goto :goto_18
:cond_38
invoke-virtual {p1}, Ljava/io/File;->length()J
move-result-wide v2
goto :goto_18
:cond_3d
move-wide v4, v6
goto :goto_2e
:cond_3f
invoke-virtual {p2}, Ljava/io/File;->length()J
move-result-wide v4
goto :goto_2e
:cond_44
cmp-long v6, v0, v6
if-lez v6, :cond_4a
const/4 v6, 0x1
goto :goto_35
:cond_4a
const/4 v6, 0x0
goto :goto_35
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/io/File;
check-cast p2, Ljava/io/File;
invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/comparator/SizeFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I
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
const-string v1, "[sumDirectoryContents="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method