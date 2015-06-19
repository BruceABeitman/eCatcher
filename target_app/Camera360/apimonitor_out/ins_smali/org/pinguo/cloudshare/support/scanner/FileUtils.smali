.class public Lorg/pinguo/cloudshare/support/scanner/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"
.field private static final IGNORE_LOST_DIR:Ljava/lang/String; = "LOST.DIR"
.field private static final IGNORE_NO_MEDIA:Ljava/lang/String; = ".nomedia"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static isAccessAble(Ljava/io/File;)Z
.registers 2
if-eqz p0, :cond_8
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return v0
:cond_a
invoke-virtual {p0}, Ljava/io/File;->canRead()Z
move-result v0
goto :goto_9
.end method
.method public static isAccessAble(Ljava/lang/String;)Z
.registers 3
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lorg/pinguo/cloudshare/support/scanner/FileUtils;->isAccessAble(Ljava/io/File;)Z
move-result v1
return v1
.end method
.method public static isInValid(Ljava/io/File;)Z
.registers 4
const/4 v1, 0x1
invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "."
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_f
:cond_e
:goto_e
return v1
:cond_f
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v2
if-eqz v2, :cond_1e
const-string/jumbo v2, "LOST.DIR"
invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_e
:cond_1e
const/4 v1, 0x0
goto :goto_e
.end method
.method public static isNoMedia(Ljava/io/File;)Z
.registers 3
invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_15
const-string/jumbo v1, ".nomedia"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_15
const/4 v1, 0x1
:goto_14
return v1
:cond_15
const/4 v1, 0x0
goto :goto_14
.end method