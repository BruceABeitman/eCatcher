.class final Lcom/crashlytics/android/m;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/crashlytics/android/internal/aU;
.field private synthetic a:Lcom/crashlytics/android/Crashlytics;
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
.registers 2
iput-object p1, p0, Lcom/crashlytics/android/m;->a:Lcom/crashlytics/android/Crashlytics;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/crashlytics/android/internal/aX;)Ljava/lang/Object;
.registers 5
const/4 v0, 0x1
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v1
invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->e()Landroid/app/Activity;
move-result-object v1
if-eqz v1, :cond_21
invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z
move-result v2
if-nez v2, :cond_21
iget-object v2, p0, Lcom/crashlytics/android/m;->a:Lcom/crashlytics/android/Crashlytics;
invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics;->j()Z
move-result v2
if-eqz v2, :cond_21
iget-object v0, p0, Lcom/crashlytics/android/m;->a:Lcom/crashlytics/android/Crashlytics;
iget-object v2, p1, Lcom/crashlytics/android/internal/aX;->c:Lcom/crashlytics/android/internal/aQ;
invoke-static {v0, v1, v2}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lcom/crashlytics/android/internal/aQ;)Z
move-result v0
:cond_21
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method