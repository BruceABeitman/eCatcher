.class  Lcom/pinguo/camera360/photoedit/TextureManager$1;
.super Ljava/lang/Object;
.source "TextureManager.java"
.implements Ljava/io/FilenameFilter;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 4
const-string/jumbo v0, ".png"
invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_14
const-string/jumbo v0, ".jpg"
invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_14
const/4 v0, 0x0
:goto_13
return v0
:cond_14
const/4 v0, 0x1
goto :goto_13
.end method