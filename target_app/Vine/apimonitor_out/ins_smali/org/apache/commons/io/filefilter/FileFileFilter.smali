.class public Lorg/apache/commons/io/filefilter/FileFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "FileFileFilter.java"
.implements Ljava/io/Serializable;
.field public static final FILE:Lorg/apache/commons/io/filefilter/IOFileFilter;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/apache/commons/io/filefilter/FileFileFilter;
invoke-direct {v0}, Lorg/apache/commons/io/filefilter/FileFileFilter;-><init>()V
sput-object v0, Lorg/apache/commons/io/filefilter/FileFileFilter;->FILE:Lorg/apache/commons/io/filefilter/IOFileFilter;
return-void
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 3
invoke-virtual {p1}, Ljava/io/File;->isFile()Z
move-result v0
return v0
.end method