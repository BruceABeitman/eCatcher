.class  Landroid/support/v4/app/RemoteInput$ImplBase;
.super Ljava/lang/Object;
.source "RemoteInput.java"
.implements Landroid/support/v4/app/RemoteInput$Impl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public addResultsToIntent([Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
.registers 6
const-string v0, "RemoteInput"
const-string v1, "RemoteInput is only supported from API Level 16"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
.registers 4
const-string v0, "RemoteInput"
const-string v1, "RemoteInput is only supported from API Level 16"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
return-object v0
.end method