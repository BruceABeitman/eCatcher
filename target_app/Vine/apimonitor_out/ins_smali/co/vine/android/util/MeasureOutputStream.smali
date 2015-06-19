.class public Lco/vine/android/util/MeasureOutputStream;
.super Lorg/apache/http/entity/FileEntity;
.source "MeasureOutputStream.java"
.field private final mProgressListener:Lco/vine/android/util/VineProgressListener;
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lco/vine/android/util/VineProgressListener;)V
.registers 4
invoke-direct {p0, p1, p2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object p3, p0, Lco/vine/android/util/MeasureOutputStream;->mProgressListener:Lco/vine/android/util/VineProgressListener;
return-void
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 4
new-instance v0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;
iget-object v1, p0, Lco/vine/android/util/MeasureOutputStream;->mProgressListener:Lco/vine/android/util/VineProgressListener;
invoke-direct {v0, p1, v1}, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lco/vine/android/util/VineProgressListener;)V
invoke-super {p0, v0}, Lorg/apache/http/entity/FileEntity;->writeTo(Ljava/io/OutputStream;)V
return-void
.end method