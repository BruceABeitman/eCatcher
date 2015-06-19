.class public Lcom/google/android/gms/internal/gk;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;
.field private final a:Landroid/app/Activity;
.field private final b:Landroid/content/Intent;
.field private final c:I
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/gk;->a:Landroid/app/Activity;
iput-object p2, p0, Lcom/google/android/gms/internal/gk;->b:Landroid/content/Intent;
iput p3, p0, Lcom/google/android/gms/internal/gk;->c:I
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/internal/gk; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/gk;->b:Landroid/content/Intent;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/google/android/gms/internal/gk;->a:Landroid/app/Activity;
iget-object v1, p0, Lcom/google/android/gms/internal/gk;->b:Landroid/content/Intent;
iget v2, p0, Lcom/google/android/gms/internal/gk;->c:I
invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
:cond_d
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
:goto_10
:try_end_10
.catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_10} :catch_11
const-string v1, " - Lcom/google/android/gms/internal/gk; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_11
move-exception v0
const-string v0, "SettingsRedirect"
const-string v1, "Can\'t redirect to app settings for Google Play services"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_10
.end method