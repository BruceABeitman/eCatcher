.class public Lcom/google/android/gms/internal/v;
.super Lcom/google/android/gms/internal/ar$a;
.implements Lcom/google/android/gms/internal/bb;
.implements Lcom/google/android/gms/internal/be;
.implements Lcom/google/android/gms/internal/bg;
.implements Lcom/google/android/gms/internal/bo;
.implements Lcom/google/android/gms/internal/cj;
.implements Lcom/google/android/gms/internal/cm;
.implements Lcom/google/android/gms/internal/dn$a;
.implements Lcom/google/android/gms/internal/ek;
.implements Lcom/google/android/gms/internal/u;
.field private final kA:Lcom/google/android/gms/internal/v$c;
.field private final kB:Lcom/google/android/gms/internal/z;
.field private final kC:Lcom/google/android/gms/internal/ac;
.field private kD:Z
.field private final kE:Landroid/content/ComponentCallbacks;
.field private final kz:Lcom/google/android/gms/internal/bu;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/ew;)V
.registers 7
invoke-direct {p0}, Lcom/google/android/gms/internal/ar$a;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/v$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/v$1;-><init>(Lcom/google/android/gms/internal/v;)V
iput-object v0, p0, Lcom/google/android/gms/internal/v;->kE:Landroid/content/ComponentCallbacks;
new-instance v0, Lcom/google/android/gms/internal/v$c;
invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/v$c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/ew;)V
iput-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-object p4, p0, Lcom/google/android/gms/internal/v;->kz:Lcom/google/android/gms/internal/bu;
new-instance v0, Lcom/google/android/gms/internal/z;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/z;-><init>(Lcom/google/android/gms/internal/v;)V
iput-object v0, p0, Lcom/google/android/gms/internal/v;->kB:Lcom/google/android/gms/internal/z;
new-instance v0, Lcom/google/android/gms/internal/ac;
invoke-direct {v0}, Lcom/google/android/gms/internal/ac;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/v;->kC:Lcom/google/android/gms/internal/ac;
invoke-static {p1}, Lcom/google/android/gms/internal/ep;->k(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/google/android/gms/internal/v;->R()V
return-void
.end method
.method private R()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_19
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kE:Landroid/content/ComponentCallbacks;
invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
:cond_19
return-void
.end method
.method private S()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_19
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kE:Landroid/content/ComponentCallbacks;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
:cond_19
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/v;)Lcom/google/android/gms/internal/v$c;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
return-object v0
.end method
.method private a(I)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Failed to load ad: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
if-eqz v0, :cond_23
:try_start_1c
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/aq;->onAdFailedToLoad(I)V
:cond_23
:goto_23
:try_end_23
.catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_24
return-void
:catch_24
move-exception v0
const-string v1, "Could not call AdListener.onAdFailedToLoad()."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_23
.end method
.method private ac()V
.registers 3
const-string v0, "Ad closing."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
if-eqz v0, :cond_12
:try_start_b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->onAdClosed()V
:cond_12
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
const-string v1, "Could not call AdListener.onAdClosed()."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method private ad()V
.registers 3
const-string v0, "Ad leaving application."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
if-eqz v0, :cond_12
:try_start_b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->onAdLeftApplication()V
:cond_12
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
const-string v1, "Could not call AdListener.onAdLeftApplication()."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method private ae()V
.registers 3
const-string v0, "Ad opening."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
if-eqz v0, :cond_12
:try_start_b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->onAdOpened()V
:cond_12
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
const-string v1, "Could not call AdListener.onAdOpened()."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method private af()V
.registers 3
const-string v0, "Ad finished loading."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
if-eqz v0, :cond_12
:try_start_b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->onAdLoaded()V
:cond_12
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
const-string v1, "Could not call AdListener.onAdLoaded()."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method private ag()Z
.registers 6
const/4 v1, 0x0
const/4 v0, 0x1
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
const-string v4, "android.permission.INTERNET"
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ep;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_32
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z
if-nez v0, :cond_31
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
const-string v3, "Missing internet permission in AndroidManifest.xml."
const-string v4, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"
invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/eu;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/am;Ljava/lang/String;Ljava/lang/String;)V
:cond_31
move v0, v1
:cond_32
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-static {v2}, Lcom/google/android/gms/internal/ep;->j(Landroid/content/Context;)Z
move-result v2
if-nez v2, :cond_54
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z
if-nez v0, :cond_53
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
const-string v3, "Missing AdActivity with android:configChanges in AndroidManifest.xml."
const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"
invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/eu;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/am;Ljava/lang/String;Ljava/lang/String;)V
:cond_53
move v0, v1
:cond_54
if-nez v0, :cond_65
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v2, v2, Lcom/google/android/gms/internal/am;->md:Z
if-nez v2, :cond_65
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/v$a;->setVisibility(I)V
:cond_65
return v0
.end method
.method private ah()V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-nez v0, :cond_c
const-string v0, "Ad state was null when trying to ping click URLs."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:goto_b
:cond_b
return-void
:cond_c
const-string v0, "Pinging click URLs."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kT:Lcom/google/android/gms/internal/eh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/eh;->bx()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nr:Ljava/util/List;
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
iget-object v1, v1, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v2, v2, Lcom/google/android/gms/internal/eg;->nr:Ljava/util/List;
invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ep;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
:cond_33
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
iget-object v0, v0, Lcom/google/android/gms/internal/bn;->nr:Ljava/util/List;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
iget-object v1, v1, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kL:Ljava/lang/String;
const/4 v4, 0x0
iget-object v5, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v5, v5, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v5, v5, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
iget-object v5, v5, Lcom/google/android/gms/internal/bn;->nr:Ljava/util/List;
invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bs;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/eg;Ljava/lang/String;ZLjava/util/List;)V
goto :goto_b
.end method
.method private ai()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->destroy()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
const/4 v1, 0x0
iput-object v1, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
:cond_14
return-void
.end method
.method private b(Landroid/view/View;)V
.registers 4
const/4 v1, -0x2
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/v$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private b(Lcom/google/android/gms/internal/eg;)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
iget-boolean v0, p1, Lcom/google/android/gms/internal/eg;->qd:Z
if-eqz v0, :cond_80
:try_start_6
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->nL:Lcom/google/android/gms/internal/bv;
invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->getView()Lcom/google/android/gms/dynamic/d;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_70
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v3}, Lcom/google/android/gms/internal/v$a;->getNextView()Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_23
iget-object v4, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v4, v4, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/v$a;->removeView(Landroid/view/View;)V
:cond_23
:try_start_23
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->b(Landroid/view/View;)V
:goto_26
:cond_26
:try_end_26
.catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_78
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/v$a;->getChildCount()I
move-result v0
if-le v0, v2, :cond_37
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/v$a;->showNext()V
:cond_37
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_67
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/v$a;->getNextView()Landroid/view/View;
move-result-object v0
instance-of v3, v0, Lcom/google/android/gms/internal/ey;
if-eqz v3, :cond_af
check-cast v0, Lcom/google/android/gms/internal/ey;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v4, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v4, v4, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ey;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;)V
:goto_56
:cond_56
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nL:Lcom/google/android/gms/internal/bv;
if-eqz v0, :cond_67
:try_start_5e
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nL:Lcom/google/android/gms/internal/bv;
invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->destroy()V
:cond_67
:try_end_67
.catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_67} :catch_b9
:goto_67
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v$a;->setVisibility(I)V
move v0, v2
:goto_6f
return v0
:catch_70
move-exception v0
const-string v2, "Could not get View from mediation adapter."
invoke-static {v2, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
move v0, v1
goto :goto_6f
:catch_78
move-exception v0
const-string v2, "Could not add mediation view to view hierarchy."
invoke-static {v2, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
move v0, v1
goto :goto_6f
:cond_80
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->rx:Lcom/google/android/gms/internal/am;
if-eqz v0, :cond_26
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
iget-object v3, p1, Lcom/google/android/gms/internal/eg;->rx:Lcom/google/android/gms/internal/am;
invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/am;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/v$a;->removeAllViews()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
iget-object v3, p1, Lcom/google/android/gms/internal/eg;->rx:Lcom/google/android/gms/internal/am;
iget v3, v3, Lcom/google/android/gms/internal/am;->widthPixels:I
invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/v$a;->setMinimumWidth(I)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
iget-object v3, p1, Lcom/google/android/gms/internal/eg;->rx:Lcom/google/android/gms/internal/am;
iget v3, v3, Lcom/google/android/gms/internal/am;->heightPixels:I
invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/v$a;->setMinimumHeight(I)V
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->b(Landroid/view/View;)V
goto/16 :goto_26
:cond_af
if-eqz v0, :cond_56
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/v$a;->removeView(Landroid/view/View;)V
goto :goto_56
:catch_b9
move-exception v0
const-string v0, "Could not destroy previous mediation adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_67
.end method
.method private c(Lcom/google/android/gms/internal/aj;)Lcom/google/android/gms/internal/dt$a;
.registers 13
const/4 v0, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v5
:try_start_b
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
const/4 v6, 0x0
invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_19
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_19} :catch_c5
move-result-object v6
:goto_1a
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v3, v3, Lcom/google/android/gms/internal/am;->md:Z
if-nez v3, :cond_cb
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v3}, Lcom/google/android/gms/internal/v$a;->getParent()Landroid/view/ViewParent;
move-result-object v3
if-eqz v3, :cond_cb
const/4 v0, 0x2
new-array v0, v0, [I
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/v$a;->getLocationOnScreen([I)V
aget v3, v0, v2
aget v4, v0, v1
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget-object v7, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v7, v7, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v7}, Lcom/google/android/gms/internal/v$a;->getWidth()I
move-result v7
iget-object v8, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v8, v8, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v8}, Lcom/google/android/gms/internal/v$a;->getHeight()I
move-result v8
iget-object v9, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v9, v9, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v9}, Lcom/google/android/gms/internal/v$a;->isShown()Z
move-result v9
if-eqz v9, :cond_c9
add-int v9, v3, v7
if-lez v9, :cond_c9
add-int v9, v4, v8
if-lez v9, :cond_c9
iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I
if-gt v3, v9, :cond_c9
iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
if-gt v4, v0, :cond_c9
move v0, v1
:goto_71
new-instance v1, Landroid/os/Bundle;
const/4 v2, 0x5
invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V
const-string v2, "x"
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "y"
invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "width"
invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "height"
invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "visible"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:goto_90
invoke-static {}, Lcom/google/android/gms/internal/ei;->bD()Ljava/lang/String;
move-result-object v7
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
new-instance v2, Lcom/google/android/gms/internal/eh;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kL:Ljava/lang/String;
invoke-direct {v2, v7, v3}, Lcom/google/android/gms/internal/eh;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v2, v0, Lcom/google/android/gms/internal/v$c;->kT:Lcom/google/android/gms/internal/eh;
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kT:Lcom/google/android/gms/internal/eh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/eh;->f(Lcom/google/android/gms/internal/aj;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-static {v0, p0, v7}, Lcom/google/android/gms/internal/ei;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ek;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v10
new-instance v0, Lcom/google/android/gms/internal/dt$a;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v2, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v4, v2, Lcom/google/android/gms/internal/v$c;->kL:Ljava/lang/String;
sget-object v8, Lcom/google/android/gms/internal/ei;->rN:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v9, v2, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
move-object v2, p1
invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/dt$a;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/am;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ew;Landroid/os/Bundle;)V
return-object v0
:catch_c5
move-exception v3
move-object v6, v0
goto/16 :goto_1a
:cond_c9
move v0, v2
goto :goto_71
:cond_cb
move-object v1, v0
goto :goto_90
.end method
.method private c(Z)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-nez v0, :cond_c
const-string v0, "Ad state was null when trying to ping impression URLs."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:goto_b
:cond_b
return-void
:cond_c
const-string v0, "Pinging Impression URLs."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kT:Lcom/google/android/gms/internal/eh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/eh;->bw()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ns:Ljava/util/List;
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
iget-object v1, v1, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v2, v2, Lcom/google/android/gms/internal/eg;->ns:Ljava/util/List;
invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ep;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
:cond_33
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
iget-object v0, v0, Lcom/google/android/gms/internal/bn;->ns:Ljava/util/List;
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
iget-object v1, v1, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kL:Ljava/lang/String;
iget-object v4, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v4, v4, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v4, v4, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
iget-object v5, v4, Lcom/google/android/gms/internal/bn;->ns:Ljava/util/List;
move v4, p1
invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bs;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/eg;Ljava/lang/String;ZLjava/util/List;)V
:cond_63
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nK:Lcom/google/android/gms/internal/bm;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nK:Lcom/google/android/gms/internal/bm;
iget-object v0, v0, Lcom/google/android/gms/internal/bm;->nn:Ljava/util/List;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
iget-object v1, v1, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kL:Ljava/lang/String;
iget-object v4, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v4, v4, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v4, v4, Lcom/google/android/gms/internal/eg;->nK:Lcom/google/android/gms/internal/bm;
iget-object v5, v4, Lcom/google/android/gms/internal/bm;->nn:Ljava/util/List;
move v4, p1
invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bs;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/eg;Ljava/lang/String;ZLjava/util/List;)V
goto/16 :goto_b
.end method
.method public P()Lcom/google/android/gms/dynamic/d;
.registers 2
const-string v0, "getAdFrame must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
move-result-object v0
return-object v0
.end method
.method public Q()Lcom/google/android/gms/internal/am;
.registers 2
const-string v0, "getAdSize must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
return-object v0
.end method
.method public T()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ad()V
return-void
.end method
.method public U()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kC:Lcom/google/android/gms/internal/ac;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ac;->d(Lcom/google/android/gms/internal/eg;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z
if-eqz v0, :cond_14
invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ai()V
:cond_14
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/v;->kD:Z
invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ac()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kT:Lcom/google/android/gms/internal/eh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/eh;->by()V
return-void
.end method
.method public V()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z
if-eqz v0, :cond_c
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->c(Z)V
:cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/v;->kD:Z
invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ae()V
return-void
.end method
.method public W()V
.registers 1
invoke-virtual {p0}, Lcom/google/android/gms/internal/v;->onAdClicked()V
return-void
.end method
.method public X()V
.registers 1
invoke-virtual {p0}, Lcom/google/android/gms/internal/v;->U()V
return-void
.end method
.method public Y()V
.registers 1
invoke-virtual {p0}, Lcom/google/android/gms/internal/v;->T()V
return-void
.end method
.method public Z()V
.registers 1
invoke-virtual {p0}, Lcom/google/android/gms/internal/v;->V()V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/am;)V
.registers 4
const-string v0, "setAdSize must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-object p1, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/am;)V
:cond_18
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/v$a;->getChildCount()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_32
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v1}, Lcom/google/android/gms/internal/v$a;->getNextView()Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v$a;->removeView(Landroid/view/View;)V
:cond_32
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
iget v1, p1, Lcom/google/android/gms/internal/am;->widthPixels:I
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v$a;->setMinimumWidth(I)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
iget v1, p1, Lcom/google/android/gms/internal/am;->heightPixels:I
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v$a;->setMinimumHeight(I)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/v$a;->requestLayout()V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/aq;)V
.registers 3
const-string v0, "setAdListener must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-object p1, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/at;)V
.registers 3
const-string v0, "setAppEventListener must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-object p1, v0, Lcom/google/android/gms/internal/v$c;->kU:Lcom/google/android/gms/internal/at;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/dd;)V
.registers 3
const-string v0, "setInAppPurchaseListener must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-object p1, v0, Lcom/google/android/gms/internal/v$c;->kW:Lcom/google/android/gms/internal/dd;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/dh;Ljava/lang/String;)V
.registers 7
const-string v0, "setPlayStorePurchaseParams must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
new-instance v1, Lcom/google/android/gms/internal/da;
invoke-direct {v1, p2}, Lcom/google/android/gms/internal/da;-><init>(Ljava/lang/String;)V
iput-object v1, v0, Lcom/google/android/gms/internal/v$c;->kX:Lcom/google/android/gms/internal/da;
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-object p1, v0, Lcom/google/android/gms/internal/v$c;->kV:Lcom/google/android/gms/internal/dh;
invoke-static {}, Lcom/google/android/gms/internal/ei;->bH()Z
move-result v0
if-nez v0, :cond_2e
if-eqz p1, :cond_2e
new-instance v0, Lcom/google/android/gms/internal/ct;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kV:Lcom/google/android/gms/internal/dh;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kX:Lcom/google/android/gms/internal/da;
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ct;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/da;)V
invoke-virtual {v0}, Lcom/google/android/gms/internal/ct;->start()V
:cond_2e
return-void
.end method
.method public a(Lcom/google/android/gms/internal/eg;)V
.registers 10
const-wide/16 v2, 0x0
const/4 v7, 0x0
const/4 v5, 0x3
const/4 v6, -0x2
const/4 v4, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-object v7, v0, Lcom/google/android/gms/internal/v$c;->kQ:Lcom/google/android/gms/internal/en;
iget v0, p1, Lcom/google/android/gms/internal/eg;->errorCode:I
if-eq v0, v6, :cond_1b
iget v0, p1, Lcom/google/android/gms/internal/eg;->errorCode:I
if-eq v0, v5, :cond_1b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
invoke-virtual {v0}, Lcom/google/android/gms/internal/v$c;->al()Ljava/util/HashSet;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ei;->b(Ljava/util/HashSet;)V
:cond_1b
iget v0, p1, Lcom/google/android/gms/internal/eg;->errorCode:I
const/4 v1, -0x1
if-ne v0, v1, :cond_21
:goto_20
return-void
:cond_21
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->pV:Lcom/google/android/gms/internal/aj;
iget-object v0, v0, Lcom/google/android/gms/internal/aj;->extras:Landroid/os/Bundle;
if-eqz v0, :cond_71
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->pV:Lcom/google/android/gms/internal/aj;
iget-object v0, v0, Lcom/google/android/gms/internal/aj;->extras:Landroid/os/Bundle;
const-string v1, "_noRefresh"
invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
:goto_31
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v1, v1, Lcom/google/android/gms/internal/am;->md:Z
if-eqz v1, :cond_73
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Landroid/webkit/WebView;)V
:goto_3e
:cond_3e
iget v0, p1, Lcom/google/android/gms/internal/eg;->errorCode:I
if-ne v0, v5, :cond_67
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
if-eqz v0, :cond_67
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
iget-object v0, v0, Lcom/google/android/gms/internal/bn;->nt:Ljava/util/List;
if-eqz v0, :cond_67
const-string v0, "Pinging no fill URLs."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
iget-object v1, v1, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v2, Lcom/google/android/gms/internal/v$c;->kL:Ljava/lang/String;
iget-object v2, p1, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
iget-object v5, v2, Lcom/google/android/gms/internal/bn;->nt:Ljava/util/List;
move-object v2, p1
invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bs;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/eg;Ljava/lang/String;ZLjava/util/List;)V
:cond_67
iget v0, p1, Lcom/google/android/gms/internal/eg;->errorCode:I
if-eq v0, v6, :cond_ae
iget v0, p1, Lcom/google/android/gms/internal/eg;->errorCode:I
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->a(I)V
goto :goto_20
:cond_71
move v0, v4
goto :goto_31
:cond_73
if-nez v0, :cond_3e
iget-wide v0, p1, Lcom/google/android/gms/internal/eg;->nv:J
cmp-long v0, v0, v2
if-lez v0, :cond_85
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kB:Lcom/google/android/gms/internal/z;
iget-object v1, p1, Lcom/google/android/gms/internal/eg;->pV:Lcom/google/android/gms/internal/aj;
iget-wide v2, p1, Lcom/google/android/gms/internal/eg;->nv:J
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/aj;J)V
goto :goto_3e
:cond_85
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
if-eqz v0, :cond_9d
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
iget-wide v0, v0, Lcom/google/android/gms/internal/bn;->nv:J
cmp-long v0, v0, v2
if-lez v0, :cond_9d
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kB:Lcom/google/android/gms/internal/z;
iget-object v1, p1, Lcom/google/android/gms/internal/eg;->pV:Lcom/google/android/gms/internal/aj;
iget-object v2, p1, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
iget-wide v2, v2, Lcom/google/android/gms/internal/bn;->nv:J
invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/aj;J)V
goto :goto_3e
:cond_9d
iget-boolean v0, p1, Lcom/google/android/gms/internal/eg;->qd:Z
if-nez v0, :cond_3e
iget v0, p1, Lcom/google/android/gms/internal/eg;->errorCode:I
const/4 v1, 0x2
if-ne v0, v1, :cond_3e
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kB:Lcom/google/android/gms/internal/z;
iget-object v1, p1, Lcom/google/android/gms/internal/eg;->pV:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/z;->d(Lcom/google/android/gms/internal/aj;)V
goto :goto_3e
:cond_ae
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z
if-nez v0, :cond_d4
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/v;->b(Lcom/google/android/gms/internal/eg;)Z
move-result v0
if-nez v0, :cond_c1
invoke-direct {p0, v4}, Lcom/google/android/gms/internal/v;->a(I)V
goto/16 :goto_20
:cond_c1
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
if-eqz v0, :cond_d4
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-static {v0}, Lcom/google/android/gms/internal/v$a;->a(Lcom/google/android/gms/internal/v$a;)Lcom/google/android/gms/internal/eq;
move-result-object v0
iget-object v1, p1, Lcom/google/android/gms/internal/eg;->qi:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/eq;->x(Ljava/lang/String;)V
:cond_d4
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_eb
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nN:Lcom/google/android/gms/internal/bp;
if-eqz v0, :cond_eb
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nN:Lcom/google/android/gms/internal/bp;
invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bo;)V
:cond_eb
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->nN:Lcom/google/android/gms/internal/bp;
if-eqz v0, :cond_f4
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->nN:Lcom/google/android/gms/internal/bp;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bo;)V
:cond_f4
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kC:Lcom/google/android/gms/internal/ac;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ac;->d(Lcom/google/android/gms/internal/eg;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-object p1, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->rx:Lcom/google/android/gms/internal/am;
if-eqz v0, :cond_10b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, p1, Lcom/google/android/gms/internal/eg;->rx:Lcom/google/android/gms/internal/am;
iput-object v1, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
:cond_10b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kT:Lcom/google/android/gms/internal/eh;
iget-wide v1, p1, Lcom/google/android/gms/internal/eg;->ry:J
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/eh;->j(J)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kT:Lcom/google/android/gms/internal/eh;
iget-wide v1, p1, Lcom/google/android/gms/internal/eg;->rz:J
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/eh;->k(J)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kT:Lcom/google/android/gms/internal/eh;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v1, v1, Lcom/google/android/gms/internal/am;->md:Z
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/eh;->n(Z)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kT:Lcom/google/android/gms/internal/eh;
iget-boolean v1, p1, Lcom/google/android/gms/internal/eg;->qd:Z
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/eh;->o(Z)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z
if-nez v0, :cond_13e
invoke-direct {p0, v4}, Lcom/google/android/gms/internal/v;->c(Z)V
:cond_13e
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kY:Lcom/google/android/gms/internal/el;
if-nez v0, :cond_151
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
new-instance v1, Lcom/google/android/gms/internal/el;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kL:Ljava/lang/String;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/el;-><init>(Ljava/lang/String;)V
iput-object v1, v0, Lcom/google/android/gms/internal/v$c;->kY:Lcom/google/android/gms/internal/el;
:cond_151
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
if-eqz v0, :cond_1b4
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
iget v0, v0, Lcom/google/android/gms/internal/bn;->nw:I
iget-object v1, p1, Lcom/google/android/gms/internal/eg;->rw:Lcom/google/android/gms/internal/bn;
iget v4, v1, Lcom/google/android/gms/internal/bn;->nx:I
:goto_15d
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kY:Lcom/google/android/gms/internal/el;
invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/el;->a(II)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z
if-nez v0, :cond_1a6
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
if-eqz v0, :cond_1a6
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ez;->ce()Z
move-result v0
if-nez v0, :cond_180
iget-object v0, p1, Lcom/google/android/gms/internal/eg;->rv:Lorg/json/JSONObject;
if-eqz v0, :cond_1a6
:cond_180
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kC:Lcom/google/android/gms/internal/ac;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ac;->a(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/eg;)Lcom/google/android/gms/internal/ad;
move-result-object v0
iget-object v1, p1, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-virtual {v1}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v1
invoke-virtual {v1}, Lcom/google/android/gms/internal/ez;->ce()Z
move-result v1
if-eqz v1, :cond_1a6
if-eqz v0, :cond_1a6
new-instance v1, Lcom/google/android/gms/internal/y;
iget-object v2, p1, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/y;-><init>(Lcom/google/android/gms/internal/ey;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/aa;)V
:cond_1a6
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bS()V
invoke-direct {p0}, Lcom/google/android/gms/internal/v;->af()V
goto/16 :goto_20
:cond_1b4
move v0, v4
goto :goto_15d
.end method
.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 10
new-instance v0, Lcom/google/android/gms/internal/cu;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
iget-object v2, v2, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;
invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/cu;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kW:Lcom/google/android/gms/internal/dd;
if-nez v1, :cond_72
const-string v1, "InAppPurchaseListener is not set. Try to launch default purchase flow."
invoke-static {v1}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
move-result v1
if-eqz v1, :cond_2a
const-string v0, "Google Play Service unavailable, cannot launch default purchase flow."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:cond_29
:goto_29
return-void
:cond_2a
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kV:Lcom/google/android/gms/internal/dh;
if-nez v1, :cond_36
const-string v0, "PlayStorePurchaseListener is not set."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_29
:cond_36
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kX:Lcom/google/android/gms/internal/da;
if-nez v1, :cond_42
const-string v0, "PlayStorePurchaseVerifier is not initialized."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_29
:try_start_42
:cond_42
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kV:Lcom/google/android/gms/internal/dh;
invoke-interface {v1, p1}, Lcom/google/android/gms/internal/dh;->isValidPurchase(Ljava/lang/String;)Z
:try_end_49
.catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_6b
move-result v1
if-eqz v1, :cond_29
:goto_4c
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
iget-boolean v2, v2, Lcom/google/android/gms/internal/ew;->sw:Z
new-instance v3, Lcom/google/android/gms/internal/cr;
iget-object v4, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v4, v4, Lcom/google/android/gms/internal/v$c;->kV:Lcom/google/android/gms/internal/dh;
iget-object v5, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v5, v5, Lcom/google/android/gms/internal/v$c;->kX:Lcom/google/android/gms/internal/da;
iget-object v6, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v6, v6, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-direct {v3, v0, v4, v5, v6}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/da;Landroid/content/Context;)V
invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/cv;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/cr;)V
goto :goto_29
:catch_6b
move-exception v1
const-string v1, "Could not start In-App purchase."
invoke-static {v1}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_4c
:try_start_72
:cond_72
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kW:Lcom/google/android/gms/internal/dd;
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/dd;->a(Lcom/google/android/gms/internal/dc;)V
:try_end_79
.catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_79} :catch_7a
goto :goto_29
:catch_7a
move-exception v0
const-string v0, "Could not start In-App purchase."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_29
.end method
.method public a(Ljava/util/HashSet;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/v$c;->a(Ljava/util/HashSet;)V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/aj;)Z
.registers 14
const/4 v10, 0x1
const/4 v2, 0x0
const-string v0, "loadAd must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kQ:Lcom/google/android/gms/internal/en;
if-eqz v0, :cond_13
const-string v0, "An ad request is already in progress. Aborting."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:cond_12
:goto_12
return v2
:cond_13
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_27
const-string v0, "An interstitial is already loading. Aborting."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_12
:cond_27
invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ag()Z
move-result v0
if-eqz v0, :cond_12
const-string v0, "Starting ad request."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
iget-boolean v0, p1, Lcom/google/android/gms/internal/aj;->lT:Z
if-nez v0, :cond_5a
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Use AdRequest.Builder.addTestDevice(\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-static {v1}, Lcom/google/android/gms/internal/eu;->o(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\") to get test ads on this device."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
:cond_5a
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kB:Lcom/google/android/gms/internal/z;
invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->cancel()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-boolean v2, v0, Lcom/google/android/gms/internal/v$c;->kZ:Z
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/v;->c(Lcom/google/android/gms/internal/aj;)Lcom/google/android/gms/internal/dt$a;
move-result-object v11
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z
if-eqz v0, :cond_aa
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v4, v3, Lcom/google/android/gms/internal/v$c;->kN:Lcom/google/android/gms/internal/l;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v5, v3, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
move v3, v2
invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ey;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/ew;)Lcom/google/android/gms/internal/ey;
move-result-object v8
invoke-virtual {v8}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v0
const/4 v2, 0x0
move-object v1, p0
move-object v3, p0
move-object v4, p0
move v5, v10
move-object v6, p0
move-object v7, p0
invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/cm;ZLcom/google/android/gms/internal/be;Lcom/google/android/gms/internal/bg;)V
move-object v3, v8
:goto_93
iget-object v6, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v1, Lcom/google/android/gms/internal/v$c;->kN:Lcom/google/android/gms/internal/l;
iget-object v4, p0, Lcom/google/android/gms/internal/v;->kz:Lcom/google/android/gms/internal/bu;
move-object v1, v11
move-object v5, p0
invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/dn;->a(Landroid/content/Context;Lcom/google/android/gms/internal/dt$a;Lcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/ey;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/dn$a;)Lcom/google/android/gms/internal/en;
move-result-object v0
iput-object v0, v6, Lcom/google/android/gms/internal/v$c;->kQ:Lcom/google/android/gms/internal/en;
move v2, v10
goto/16 :goto_12
:cond_aa
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/v$a;->getNextView()Landroid/view/View;
move-result-object v0
instance-of v1, v0, Lcom/google/android/gms/internal/ey;
if-eqz v1, :cond_d2
check-cast v0, Lcom/google/android/gms/internal/ey;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ey;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;)V
:goto_c3
:cond_c3
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v3
move-object v4, p0
move-object v5, p0
move-object v6, p0
move-object v7, p0
move v8, v2
move-object v9, p0
invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/cm;ZLcom/google/android/gms/internal/be;)V
move-object v3, v0
goto :goto_93
:cond_d2
if-eqz v0, :cond_db
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/v$a;->removeView(Landroid/view/View;)V
:cond_db
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v4, v3, Lcom/google/android/gms/internal/v$c;->kN:Lcom/google/android/gms/internal/l;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v5, v3, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
move v3, v2
invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ey;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/ew;)Lcom/google/android/gms/internal/ey;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-object v1, v1, Lcom/google/android/gms/internal/am;->me:[Lcom/google/android/gms/internal/am;
if-nez v1, :cond_c3
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->b(Landroid/view/View;)V
goto :goto_c3
.end method
.method public aa()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Mediation adapter "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v1, v1, Lcom/google/android/gms/internal/eg;->nM:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " refreshed, but mediation adapters should never refresh."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:cond_28
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->c(Z)V
invoke-direct {p0}, Lcom/google/android/gms/internal/v;->af()V
return-void
.end method
.method public ab()V
.registers 4
const-string v0, "recordManualImpression must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-nez v0, :cond_11
const-string v0, "Ad state was null when trying to ping manual tracking URLs."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:goto_10
:cond_10
return-void
:cond_11
const-string v0, "Pinging manual tracking URLs."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->qf:Ljava/util/List;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
iget-object v1, v1, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v2, v2, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v2, v2, Lcom/google/android/gms/internal/eg;->qf:Ljava/util/List;
invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ep;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
goto :goto_10
.end method
.method public b(Lcom/google/android/gms/internal/aj;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/v$a;->getParent()Landroid/view/ViewParent;
move-result-object v0
instance-of v1, v0, Landroid/view/View;
if-eqz v1, :cond_22
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->isShown()Z
move-result v0
if-eqz v0, :cond_22
invoke-static {}, Lcom/google/android/gms/internal/ep;->bL()Z
move-result v0
if-eqz v0, :cond_22
iget-boolean v0, p0, Lcom/google/android/gms/internal/v;->kD:Z
if-nez v0, :cond_22
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/aj;)Z
:goto_21
return-void
:cond_22
const-string v0, "Ad is not visible. Not refreshing ad."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kB:Lcom/google/android/gms/internal/z;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/z;->d(Lcom/google/android/gms/internal/aj;)V
goto :goto_21
.end method
.method public b(Z)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-boolean p1, v0, Lcom/google/android/gms/internal/v$c;->kZ:Z
return-void
.end method
.method public destroy()V
.registers 3
const/4 v1, 0x0
const-string v0, "destroy must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/internal/v;->S()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-object v1, v0, Lcom/google/android/gms/internal/v$c;->kP:Lcom/google/android/gms/internal/aq;
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iput-object v1, v0, Lcom/google/android/gms/internal/v$c;->kU:Lcom/google/android/gms/internal/at;
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kB:Lcom/google/android/gms/internal/z;
invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->cancel()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kC:Lcom/google/android/gms/internal/ac;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->stop()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/v;->stopLoading()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/v$a;->removeAllViews()V
:cond_2b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->destroy()V
:cond_42
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nL:Lcom/google/android/gms/internal/bv;
if-eqz v0, :cond_59
:try_start_50
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nL:Lcom/google/android/gms/internal/bv;
invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->destroy()V
:cond_59
:try_end_59
.catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_59} :catch_5a
:goto_59
return-void
:catch_5a
move-exception v0
const-string v0, "Could not destroy mediation adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_59
.end method
.method public isReady()Z
.registers 2
const-string v0, "isLoaded must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kQ:Lcom/google/android/gms/internal/en;
if-nez v0, :cond_13
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_13
const/4 v0, 0x1
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public onAdClicked()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ah()V
return-void
.end method
.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kU:Lcom/google/android/gms/internal/at;
if-eqz v0, :cond_d
:try_start_6
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kU:Lcom/google/android/gms/internal/at;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/at;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
:cond_d
:goto_d
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e
return-void
:catch_e
move-exception v0
const-string v1, "Could not call the AppEventListener."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_d
.end method
.method public pause()V
.registers 2
const-string v0, "pause must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Landroid/webkit/WebView;)V
:cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nL:Lcom/google/android/gms/internal/bv;
if-eqz v0, :cond_2b
:try_start_22
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nL:Lcom/google/android/gms/internal/bv;
invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->pause()V
:try_end_2b
.catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_36
:goto_2b
:cond_2b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kC:Lcom/google/android/gms/internal/ac;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->pause()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kB:Lcom/google/android/gms/internal/z;
invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->pause()V
return-void
:catch_36
move-exception v0
const-string v0, "Could not pause mediation adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_2b
.end method
.method public resume()V
.registers 2
const-string v0, "resume must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->b(Landroid/webkit/WebView;)V
:cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nL:Lcom/google/android/gms/internal/bv;
if-eqz v0, :cond_2b
:try_start_22
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nL:Lcom/google/android/gms/internal/bv;
invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->resume()V
:try_end_2b
.catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_36
:goto_2b
:cond_2b
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kB:Lcom/google/android/gms/internal/z;
invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->resume()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kC:Lcom/google/android/gms/internal/ac;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->resume()V
return-void
:catch_36
move-exception v0
const-string v0, "Could not resume mediation adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_2b
.end method
.method public showInterstitial()V
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
const-string v0, "showInterstitial must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z
if-nez v0, :cond_15
const-string v0, "Cannot call showInterstitial on a banner ad."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:goto_14
return-void
:cond_15
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-nez v0, :cond_21
const-string v0, "The interstitial has not loaded."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_14
:cond_21
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bZ()Z
move-result v0
if-eqz v0, :cond_33
const-string v0, "The interstitial is already showing."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_14
:cond_33
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ey;->q(Z)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ez;->ce()Z
move-result v0
if-nez v0, :cond_54
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->rv:Lorg/json/JSONObject;
if-eqz v0, :cond_82
:cond_54
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kC:Lcom/google/android/gms/internal/ac;
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;
iget-object v4, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v4, v4, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ac;->a(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/eg;)Lcom/google/android/gms/internal/ad;
move-result-object v0
iget-object v3, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v3, v3, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v3, v3, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-virtual {v3}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v3
invoke-virtual {v3}, Lcom/google/android/gms/internal/ez;->ce()Z
move-result v3
if-eqz v3, :cond_82
if-eqz v0, :cond_82
new-instance v3, Lcom/google/android/gms/internal/y;
iget-object v4, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v4, v4, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v4, v4, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-direct {v3, v4}, Lcom/google/android/gms/internal/y;-><init>(Lcom/google/android/gms/internal/ey;)V
invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/aa;)V
:cond_82
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-boolean v0, v0, Lcom/google/android/gms/internal/eg;->qd:Z
if-eqz v0, :cond_9f
:try_start_8a
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->nL:Lcom/google/android/gms/internal/bv;
invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->showInterstitial()V
:try_end_93
.catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_93} :catch_94
goto :goto_14
:catch_94
move-exception v0
const-string v1, "Could not show interstitial."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ai()V
goto/16 :goto_14
:cond_9f
new-instance v8, Lcom/google/android/gms/internal/w;
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-boolean v0, v0, Lcom/google/android/gms/internal/v$c;->kZ:Z
invoke-direct {v8, v0, v2}, Lcom/google/android/gms/internal/w;-><init>(ZZ)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
instance-of v0, v0, Landroid/app/Activity;
if-eqz v0, :cond_ea
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
new-instance v3, Landroid/graphics/Rect;
invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v5
invoke-virtual {v5, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
iget v0, v3, Landroid/graphics/Rect;->bottom:I
if-eqz v0, :cond_ea
iget v0, v4, Landroid/graphics/Rect;->bottom:I
if-eqz v0, :cond_ea
new-instance v8, Lcom/google/android/gms/internal/w;
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-boolean v5, v0, Lcom/google/android/gms/internal/v$c;->kZ:Z
iget v0, v3, Landroid/graphics/Rect;->top:I
iget v3, v4, Landroid/graphics/Rect;->top:I
if-ne v0, v3, :cond_111
move v0, v1
:goto_e7
invoke-direct {v8, v5, v0}, Lcom/google/android/gms/internal/w;-><init>(ZZ)V
:cond_ea
new-instance v0, Lcom/google/android/gms/internal/ci;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v4, v1, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget v5, v1, Lcom/google/android/gms/internal/eg;->orientation:I
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v6, v1, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v7, v1, Lcom/google/android/gms/internal/eg;->qi:Ljava/lang/String;
move-object v1, p0
move-object v2, p0
move-object v3, p0
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/ey;ILcom/google/android/gms/internal/ew;Ljava/lang/String;Lcom/google/android/gms/internal/w;)V
iget-object v1, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v1, v1, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;
invoke-static {v1, v0}, Lcom/google/android/gms/internal/cg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ci;)V
goto/16 :goto_14
:cond_111
move v0, v2
goto :goto_e7
.end method
.method public stopLoading()V
.registers 3
const-string v0, "stopLoading must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->stopLoading()V
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
const/4 v1, 0x0
iput-object v1, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;
:cond_19
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kQ:Lcom/google/android/gms/internal/en;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/google/android/gms/internal/v;->kA:Lcom/google/android/gms/internal/v$c;
iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kQ:Lcom/google/android/gms/internal/en;
invoke-virtual {v0}, Lcom/google/android/gms/internal/en;->cancel()V
:cond_26
return-void
.end method