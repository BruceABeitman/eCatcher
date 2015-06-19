.class public Lcom/bbm/util/ck;
.super Ljava/lang/Object;
.source "LocationServicesUtil.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
.registers 4
new-instance v0, Lcom/bbm/ui/b/o;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e04d6
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
const v1, 0x7f0e04d3
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V
const v1, 0x7f0e04d4
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(I)V
const v1, 0x7f0e04d5
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V
new-instance v1, Lcom/bbm/util/cl;
invoke-direct {v1, v0}, Lcom/bbm/util/cl;-><init>(Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V
new-instance v1, Lcom/bbm/util/cm;
invoke-direct {v1, v0, p0, p1}, Lcom/bbm/util/cm;-><init>(Lcom/bbm/ui/b/o;Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
return-void
.end method
.method public static a(Landroid/content/Context;)Z
.registers 5
const/4 v1, 0x0
const-string v0, "location"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
:try_start_9
const-string v2, "gps"
invoke-static {v0, v2}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_19
const-string v2, "network"
invoke-static {v0, v2}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
:try_end_16
.catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_16} :catch_1d
move-result v0
if-eqz v0, :cond_1b
:cond_19
const/4 v0, 0x1
:goto_1a
return v0
:cond_1b
move v0, v1
goto :goto_1a
:catch_1d
move-exception v0
const-string v2, "Can\'t check if Location Provider is enabled"
new-array v3, v1, [Ljava/lang/Object;
invoke-static {v0, v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
goto :goto_1a
.end method