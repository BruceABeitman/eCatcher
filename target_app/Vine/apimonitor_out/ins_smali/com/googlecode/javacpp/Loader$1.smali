.class final Lcom/googlecode/javacpp/Loader$1;
.super Ljava/lang/SecurityManager;
.source "Loader.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V
return-void
.end method
.method public getClassContext()[Ljava/lang/Class;
.registers 2
invoke-super {p0}, Ljava/lang/SecurityManager;->getClassContext()[Ljava/lang/Class;
move-result-object v0
return-object v0
.end method