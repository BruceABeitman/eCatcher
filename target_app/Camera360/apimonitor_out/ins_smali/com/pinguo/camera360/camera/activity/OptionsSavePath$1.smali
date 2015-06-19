.class  Lcom/pinguo/camera360/camera/activity/OptionsSavePath$1;
.super Ljava/lang/Object;
.source "OptionsSavePath.java"
.implements Ljava/io/FileFilter;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 9
const/4 v5, 0x1
const/4 v4, 0x0
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v0
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
const-string/jumbo v6, "."
invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_25
move v2, v4
:goto_14
const-string/jumbo v6, "lost+found"
invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_27
move v3, v4
:goto_1e
if-eqz v0, :cond_29
if-eqz v2, :cond_29
if-eqz v3, :cond_29
:goto_24
return v5
:cond_25
move v2, v5
goto :goto_14
:cond_27
move v3, v5
goto :goto_1e
:cond_29
move v5, v4
goto :goto_24
.end method