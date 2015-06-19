.class final Lcom/a/a/w;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/FilenameFilter;
.field private final a:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/a/a/w;->a:Ljava/lang/String;
return-void
.end method
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/a/a/w;->a:Ljava/lang/String;
invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_12
const-string v0, ".cls_temp"
invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method