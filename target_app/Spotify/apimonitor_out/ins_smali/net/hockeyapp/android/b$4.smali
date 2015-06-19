.class final Lnet/hockeyapp/android/b$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/FilenameFilter;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 4
const-string v0, ".stacktrace"
invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method