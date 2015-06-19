.class public Lco/vine/android/service/VineAuthenticationService;
.super Landroid/app/Service;
.source "VineAuthenticationService.java"
.field private mAuthenticator:Lco/vine/android/VineAccountAuthenticator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Service;-><init>()V
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Lco/vine/android/service/VineAuthenticationService;->mAuthenticator:Lco/vine/android/VineAccountAuthenticator;
invoke-virtual {v0}, Lco/vine/android/VineAccountAuthenticator;->getIBinder()Landroid/os/IBinder;
move-result-object v0
return-object v0
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lco/vine/android/service/VineAuthenticationService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
new-instance v0, Lco/vine/android/VineAccountAuthenticator;
invoke-direct {v0, p0}, Lco/vine/android/VineAccountAuthenticator;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lco/vine/android/service/VineAuthenticationService;->mAuthenticator:Lco/vine/android/VineAccountAuthenticator;
const-string v1, " - Lco/vine/android/service/VineAuthenticationService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/service/VineAuthenticationService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/service/VineAuthenticationService;->mAuthenticator:Lco/vine/android/VineAccountAuthenticator;
const-string v1, " - Lco/vine/android/service/VineAuthenticationService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method