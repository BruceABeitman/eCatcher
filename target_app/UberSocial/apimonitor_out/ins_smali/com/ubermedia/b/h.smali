.class public Lcom/ubermedia/b/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Ljava/lang/String; = "network"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)Landroid/location/Location;
.registers 3
const-string v0, "location"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
const-string v1, "network"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_17
const-string v1, "network"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
:goto_16
return-object v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method