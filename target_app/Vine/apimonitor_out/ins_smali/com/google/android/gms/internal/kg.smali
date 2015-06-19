.class public Lcom/google/android/gms/internal/kg;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/panorama/PanoramaApi;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/content/Context;Landroid/net/Uri;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V
return-void
.end method
.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/kf;Lcom/google/android/gms/internal/ke;Landroid/net/Uri;Landroid/os/Bundle;)V
.registers 7
const/4 v1, 0x1
const-string v0, "com.google.android.gms"
invoke-virtual {p0, v0, p3, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
new-instance v0, Lcom/google/android/gms/internal/kg$4;
invoke-direct {v0, p0, p3, p2}, Lcom/google/android/gms/internal/kg$4;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/ke;)V
const/4 v1, 0x1
:try_start_c
invoke-interface {p1, v0, p3, p4, v1}, Lcom/google/android/gms/internal/kf;->a(Lcom/google/android/gms/internal/ke;Landroid/net/Uri;Landroid/os/Bundle;Z)V
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10
.catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_15
return-void
:catch_10
move-exception v0
invoke-static {p0, p3}, Lcom/google/android/gms/internal/kg;->a(Landroid/content/Context;Landroid/net/Uri;)V
throw v0
:catch_15
move-exception v0
invoke-static {p0, p3}, Lcom/google/android/gms/internal/kg;->a(Landroid/content/Context;Landroid/net/Uri;)V
throw v0
.end method
.method static synthetic b(Landroid/content/Context;Landroid/net/Uri;)V
.registers 2
invoke-static {p0, p1}, Lcom/google/android/gms/internal/kg;->a(Landroid/content/Context;Landroid/net/Uri;)V
return-void
.end method
.method static synthetic b(Landroid/content/Context;Lcom/google/android/gms/internal/kf;Lcom/google/android/gms/internal/ke;Landroid/net/Uri;Landroid/os/Bundle;)V
.registers 5
invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/kg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/kf;Lcom/google/android/gms/internal/ke;Landroid/net/Uri;Landroid/os/Bundle;)V
return-void
.end method
.method public loadPanoramaInfo(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/kg$2;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/kg$2;-><init>(Lcom/google/android/gms/internal/kg;Landroid/net/Uri;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public loadPanoramaInfoAndGrantAccess(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/kg$3;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/kg$3;-><init>(Lcom/google/android/gms/internal/kg;Landroid/net/Uri;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method