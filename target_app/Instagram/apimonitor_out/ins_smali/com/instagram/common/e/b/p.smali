.class final Lcom/instagram/common/e/b/p;
.super Ljava/lang/Object;
.source "IgImageCacheUpgradeHelper.java"
.implements Ljava/io/FilenameFilter;
.field final synthetic a:Lcom/instagram/common/e/b/o;
.method constructor <init>(Lcom/instagram/common/e/b/o;)V
.registers 2
iput-object p1, p0, Lcom/instagram/common/e/b/p;->a:Lcom/instagram/common/e/b/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 4
const-string v0, ".0"
invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
const-string v0, "journal"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method