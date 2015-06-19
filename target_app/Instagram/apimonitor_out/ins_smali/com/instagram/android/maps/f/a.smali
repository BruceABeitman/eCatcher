.class public final Lcom/instagram/android/maps/f/a;
.super Ljava/lang/Object;
.source "MapsUtils.java"
.implements Lcom/instagram/n/f/c;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Z
.registers 2
const/4 v0, 0x1
:try_start_1
const-string v1, "com.google.android.maps.MapActivity"
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:goto_6
:try_end_6
.catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_7
return v0
:catch_7
move-exception v0
const/4 v0, 0x0
goto :goto_6
.end method
.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
.registers 6
invoke-static {}, Lcom/instagram/android/maps/f/a;->a()Z
move-result v0
if-nez v0, :cond_20
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-direct {v0, p1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->photo_maps_unavailable_on_device:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->ok:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
:goto_1f
return-void
:cond_20
invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/instagram/android/maps/DedicatedMapActivity;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
goto :goto_1f
.end method