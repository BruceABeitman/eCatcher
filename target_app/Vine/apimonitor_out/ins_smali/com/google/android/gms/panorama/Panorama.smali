.class public final Lcom/google/android/gms/panorama/Panorama;
.super Ljava/lang/Object;
.field public static final API:Lcom/google/android/gms/common/api/Api;
.field public static final PanoramaApi:Lcom/google/android/gms/panorama/PanoramaApi;
.field public static final yE:Lcom/google/android/gms/common/api/Api$c;
.field static final yF:Lcom/google/android/gms/common/api/Api$b;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lcom/google/android/gms/common/api/Api$c;
invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V
sput-object v0, Lcom/google/android/gms/panorama/Panorama;->yE:Lcom/google/android/gms/common/api/Api$c;
new-instance v0, Lcom/google/android/gms/panorama/Panorama$1;
invoke-direct {v0}, Lcom/google/android/gms/panorama/Panorama$1;-><init>()V
sput-object v0, Lcom/google/android/gms/panorama/Panorama;->yF:Lcom/google/android/gms/common/api/Api$b;
new-instance v0, Lcom/google/android/gms/common/api/Api;
sget-object v1, Lcom/google/android/gms/panorama/Panorama;->yF:Lcom/google/android/gms/common/api/Api$b;
sget-object v2, Lcom/google/android/gms/panorama/Panorama;->yE:Lcom/google/android/gms/common/api/Api$c;
const/4 v3, 0x0
new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V
sput-object v0, Lcom/google/android/gms/panorama/Panorama;->API:Lcom/google/android/gms/common/api/Api;
new-instance v0, Lcom/google/android/gms/internal/kg;
invoke-direct {v0}, Lcom/google/android/gms/internal/kg;-><init>()V
sput-object v0, Lcom/google/android/gms/panorama/Panorama;->PanoramaApi:Lcom/google/android/gms/panorama/PanoramaApi;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method