.class final Lcom/millennialmedia/android/a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/FileFilter;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 4
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_14
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, "ad.dat"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method