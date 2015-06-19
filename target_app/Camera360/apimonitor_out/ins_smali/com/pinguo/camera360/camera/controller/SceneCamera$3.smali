.class  Lcom/pinguo/camera360/camera/controller/SceneCamera$3;
.super Ljava/lang/Object;
.source "SceneCamera.java"
.implements Ljava/io/FilenameFilter;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 4
const-string/jumbo v0, "20121218145945"
invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
return v0
.end method