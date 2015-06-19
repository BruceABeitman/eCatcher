.class final Lcom/crashlytics/android/l;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/crashlytics/android/internal/aU;
.field private synthetic a:Lcom/crashlytics/android/Crashlytics;
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
.registers 2
iput-object p1, p0, Lcom/crashlytics/android/l;->a:Lcom/crashlytics/android/Crashlytics;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/crashlytics/android/internal/aX;)Ljava/lang/Object;
.registers 4
const/4 v0, 0x0
iget-object v1, p1, Lcom/crashlytics/android/internal/aX;->d:Lcom/crashlytics/android/internal/aP;
iget-boolean v1, v1, Lcom/crashlytics/android/internal/aP;->a:Z
if-eqz v1, :cond_15
iget-object v1, p0, Lcom/crashlytics/android/l;->a:Lcom/crashlytics/android/Crashlytics;
invoke-static {}, Lcom/crashlytics/android/Crashlytics;->k()Z
move-result v1
if-nez v1, :cond_10
const/4 v0, 0x1
:cond_10
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_14
return-object v0
:cond_15
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_14
.end method