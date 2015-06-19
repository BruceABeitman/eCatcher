.class public final Lcom/google/android/gms/internal/cj;
.super Lcom/google/android/gms/dynamic/g;
.field private static final a:Lcom/google/android/gms/internal/cj;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/cj;
invoke-direct {v0}, Lcom/google/android/gms/internal/cj;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/cj;->a:Lcom/google/android/gms/internal/cj;
return-void
.end method
.method private constructor <init>()V
.registers 2
const-string v0, "com.google.android.gms.ads.AdOverlayCreatorImpl"
invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/g;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/internal/ch;
.registers 4
:try_start_0
invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_1e
new-instance v0, Lcom/google/android/gms/internal/cj$a;
const-string v1, "Ad overlay requires the useClientJar flag in intent extras."
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cj$a;-><init>(Ljava/lang/String;)V
throw v0
:catch_14
:try_end_14
.catch Lcom/google/android/gms/internal/cj$a; {:try_start_0 .. :try_end_14} :catch_14
move-exception v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/cj$a;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_1d
return-object v0
:try_start_1e
:cond_1e
const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_32
const-string v0, "Using AdOverlay from the client jar."
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
new-instance v0, Lcom/google/android/gms/internal/cc;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cc;-><init>(Landroid/app/Activity;)V
goto :goto_1d
:cond_32
sget-object v0, Lcom/google/android/gms/internal/cj;->a:Lcom/google/android/gms/internal/cj;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cj;->b(Landroid/app/Activity;)Lcom/google/android/gms/internal/ch;
:try_end_37
.catch Lcom/google/android/gms/internal/cj$a; {:try_start_1e .. :try_end_37} :catch_14
move-result-object v0
goto :goto_1d
.end method
.method private b(Landroid/app/Activity;)Lcom/google/android/gms/internal/ch;
.registers 5
const/4 v1, 0x0
:try_start_1
invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
move-result-object v2
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cj;->a(Landroid/content/Context;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/cl;
invoke-interface {v0, v2}, Lcom/google/android/gms/internal/cl;->a(Lcom/google/android/gms/dynamic/b;)Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ci;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ch;
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14
.catch Lcom/google/android/gms/dynamic/g$a; {:try_start_1 .. :try_end_12} :catch_1c
move-result-object v0
:goto_13
return-object v0
:catch_14
move-exception v0
const-string v2, "Could not create remote AdOverlay."
invoke-static {v2, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_13
:catch_1c
move-exception v0
const-string v2, "Could not create remote AdOverlay."
invoke-static {v2, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_13
.end method
.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/cm;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cl;
move-result-object v0
return-object v0
.end method