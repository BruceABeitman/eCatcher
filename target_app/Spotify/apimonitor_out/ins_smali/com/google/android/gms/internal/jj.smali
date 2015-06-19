.class public final Lcom/google/android/gms/internal/jj;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/plus/a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/plus/internal/m;
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p0, :cond_21
move v0, v1
:goto_5
const-string v3, "GoogleApiClient parameter is required."
invoke-static {v0, v3}, Lcom/google/android/gms/internal/hh;->b(ZLjava/lang/Object;)V
invoke-interface {p0}, Lcom/google/android/gms/common/api/i;->c()Z
move-result v0
const-string v3, "GoogleApiClient must be connected."
invoke-static {v0, v3}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V
invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/i;->a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/f;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/m;
if-eqz v0, :cond_23
:goto_1b
const-string v2, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."
invoke-static {v1, v2}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V
return-object v0
:cond_21
move v0, v2
goto :goto_5
:cond_23
move v1, v2
goto :goto_1b
.end method
.method public final a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/m;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/jj$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jj$1;-><init>(Lcom/google/android/gms/internal/jj;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/i;->a(Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/api/u;
move-result-object v0
return-object v0
.end method
.method public final b(Lcom/google/android/gms/common/api/i;)V
.registers 3
sget-object v0, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/h;
invoke-static {p1, v0}, Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/plus/internal/m;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/m;->m()V
return-void
.end method
.method public final c(Lcom/google/android/gms/common/api/i;)Ljava/lang/String;
.registers 3
sget-object v0, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/h;
invoke-static {p1, v0}, Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/plus/internal/m;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/m;->g()Ljava/lang/String;
move-result-object v0
return-object v0
.end method