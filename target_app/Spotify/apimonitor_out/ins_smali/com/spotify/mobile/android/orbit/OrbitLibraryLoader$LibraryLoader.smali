.class public Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getABI()Ljava/lang/String;
.registers 2
sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
return-object v0
.end method
.method public getResource(Ljava/lang/String;)Ljava/net/URL;
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
return-object v0
.end method
.method public load(Ljava/lang/String;)V
.registers 2
invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V
return-void
.end method
.method public loadLibrary(Ljava/lang/String;)V
.registers 2
invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
return-void
.end method