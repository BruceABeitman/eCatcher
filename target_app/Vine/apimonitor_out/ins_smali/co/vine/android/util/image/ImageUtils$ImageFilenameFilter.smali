.class  Lco/vine/android/util/image/ImageUtils$ImageFilenameFilter;
.super Ljava/lang/Object;
.source "ImageUtils.java"
.implements Ljava/io/FilenameFilter;
.field private final mOwnerId:J
.method constructor <init>(J)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lco/vine/android/util/image/ImageUtils$ImageFilenameFilter;->mOwnerId:J
return-void
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "pic-r-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lco/vine/android/util/image/ImageUtils$ImageFilenameFilter;->mOwnerId:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_36
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "pic-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lco/vine/android/util/image/ImageUtils$ImageFilenameFilter;->mOwnerId:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_38
:cond_36
const/4 v0, 0x1
:goto_37
return v0
:cond_38
const/4 v0, 0x0
goto :goto_37
.end method