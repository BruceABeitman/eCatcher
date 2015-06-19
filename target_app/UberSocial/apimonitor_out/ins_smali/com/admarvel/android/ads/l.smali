.class  Lcom/admarvel/android/ads/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Lcom/admarvel/android/ads/l;
.field private static b:Lcom/admarvel/android/ads/l$a;
.field private static c:Lcom/admarvel/android/ads/l$a;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/ref/WeakReference;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/admarvel/android/ads/l;->a:Lcom/admarvel/android/ads/l;
sput-object v0, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;
sput-object v0, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/admarvel/android/ads/l;
.registers 1
sget-object v0, Lcom/admarvel/android/ads/l;->a:Lcom/admarvel/android/ads/l;
if-nez v0, :cond_b
new-instance v0, Lcom/admarvel/android/ads/l;
invoke-direct {v0}, Lcom/admarvel/android/ads/l;-><init>()V
sput-object v0, Lcom/admarvel/android/ads/l;->a:Lcom/admarvel/android/ads/l;
:cond_b
sget-object v0, Lcom/admarvel/android/ads/l;->a:Lcom/admarvel/android/ads/l;
return-object v0
.end method
.method static synthetic a(Lcom/admarvel/android/ads/l;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/l;->d:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/admarvel/android/ads/l;)Ljava/lang/ref/WeakReference;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/l;->f:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;)Z
.registers 7
const/4 v2, 0x0
const-string v0, "location"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
:try_start_9
invoke-static {v0}, Ldroidbox/android/location/LocationManager;->getAllProviders(Landroid/location/LocationManager;)Ljava/util/List;
:try_end_c
.catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_26
move-result-object v3
move v1, v2
:goto_e
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_21
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
const/4 v2, 0x1
:goto_21
:cond_21
return v2
:cond_22
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_e
:catch_26
move-exception v0
goto :goto_21
.end method
.method static synthetic b(Lcom/admarvel/android/ads/l;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/l;->e:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/admarvel/android/ads/l;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/l;->d:Ljava/lang/String;
return-object v0
.end method
.method public a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/location/Location;
.registers 6
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v2, "android.permission.ACCESS_COARSE_LOCATION"
invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1b
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v2, "android.permission.ACCESS_FINE_LOCATION"
invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1b
move-object v0, v1
:goto_1a
return-object v0
:cond_1b
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v2, "location"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
const/4 v2, 0x1
invoke-static {v0, v2}, Ldroidbox/android/location/LocationManager;->getProviders(Landroid/location/LocationManager;Z)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
:goto_32
if-ltz v2, :cond_45
invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v1
if-eqz v1, :cond_42
move-object v0, v1
goto :goto_1a
:cond_42
add-int/lit8 v2, v2, -0x1
goto :goto_32
:cond_45
move-object v0, v1
goto :goto_1a
.end method
.method public a(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
const-string v0, "location"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
sget-object v1, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;
if-eqz v1, :cond_12
sget-object v1, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
:cond_12
sget-object v1, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;
if-eqz v1, :cond_1b
sget-object v1, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
:cond_1b
sput-object v2, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;
sput-object v2, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;
return-void
.end method
.method public a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
.registers 6
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "android.permission.ACCESS_COARSE_LOCATION"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_19
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "android.permission.ACCESS_FINE_LOCATION"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_19
:cond_18
:goto_18
return-void
:cond_19
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "location"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/admarvel/android/ads/l;->f:Ljava/lang/ref/WeakReference;
iput-object p2, p0, Lcom/admarvel/android/ads/l;->e:Ljava/lang/String;
:try_start_2e
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v1
const-string v2, "gps"
invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/l;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4b
const-string v1, "gps"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getProvider(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/LocationProvider;
move-result-object v1
if-eqz v1, :cond_4b
new-instance v1, Lcom/admarvel/android/ads/l$a;
const-string v2, "gps"
invoke-direct {v1, p0, v2, v0}, Lcom/admarvel/android/ads/l$a;-><init>(Lcom/admarvel/android/ads/l;Ljava/lang/String;Landroid/location/LocationManager;)V
sput-object v1, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;
:try_end_4b
.catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4b} :catch_7d
:goto_4b
:try_start_4b
:cond_4b
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v1
const-string v2, "network"
invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/l;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_68
const-string v1, "network"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getProvider(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/LocationProvider;
move-result-object v1
if-eqz v1, :cond_68
new-instance v1, Lcom/admarvel/android/ads/l$a;
const-string v2, "network"
invoke-direct {v1, p0, v2, v0}, Lcom/admarvel/android/ads/l$a;-><init>(Lcom/admarvel/android/ads/l;Ljava/lang/String;Landroid/location/LocationManager;)V
sput-object v1, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;
:try_end_68
.catch Ljava/lang/Exception; {:try_start_4b .. :try_end_68} :catch_7b
:cond_68
:goto_68
sget-object v0, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;
if-eqz v0, :cond_71
sget-object v0, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;
invoke-virtual {v0}, Lcom/admarvel/android/ads/l$a;->a()V
:cond_71
sget-object v0, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;
if-eqz v0, :cond_18
sget-object v0, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;
invoke-virtual {v0}, Lcom/admarvel/android/ads/l$a;->a()V
goto :goto_18
:catch_7b
move-exception v0
goto :goto_68
:catch_7d
move-exception v1
goto :goto_4b
.end method