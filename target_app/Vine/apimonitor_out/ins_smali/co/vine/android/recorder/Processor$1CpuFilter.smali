.class  Lco/vine/android/recorder/Processor$1CpuFilter;
.super Ljava/lang/Object;
.source "Processor.java"
.implements Ljava/io/FileFilter;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 4
const-string v0, "cpu[0-9]"
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
move-result v0
return v0
.end method