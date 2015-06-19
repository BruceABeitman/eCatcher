.class final Lcom/tencent/a/a/i;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Ljava/io/FileFilter;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 7
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
invoke-static {p1}, Lcom/tencent/a/a/h;->a(Ljava/io/File;)J
move-result-wide v1
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-lez v1, :cond_7
const/4 v0, 0x1
goto :goto_7
.end method