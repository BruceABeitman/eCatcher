.class public Lorg/apache/commons/io/monitor/FileAlterationListenerAdaptor;
.super Ljava/lang/Object;
.source "FileAlterationListenerAdaptor.java"
.implements Lorg/apache/commons/io/monitor/FileAlterationListener;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDirectoryChange(Ljava/io/File;)V
.registers 2
return-void
.end method
.method public onDirectoryCreate(Ljava/io/File;)V
.registers 2
return-void
.end method
.method public onDirectoryDelete(Ljava/io/File;)V
.registers 2
return-void
.end method
.method public onFileChange(Ljava/io/File;)V
.registers 2
return-void
.end method
.method public onFileCreate(Ljava/io/File;)V
.registers 2
return-void
.end method
.method public onFileDelete(Ljava/io/File;)V
.registers 2
return-void
.end method
.method public onStart(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
.registers 4
const-string v1, " + Lorg/apache/commons/io/monitor/FileAlterationListenerAdaptor; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lorg/apache/commons/io/monitor/FileAlterationListenerAdaptor; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
.registers 4
const-string v1, " + Lorg/apache/commons/io/monitor/FileAlterationListenerAdaptor; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lorg/apache/commons/io/monitor/FileAlterationListenerAdaptor; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method