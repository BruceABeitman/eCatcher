.class public final Lcom/google/android/gms/appindexing/AppIndex;
.super Ljava/lang/Object;
.field public static final APP_INDEX_API:Lcom/google/android/gms/common/api/Api;
.field public static final AppIndexApi:Lcom/google/android/gms/appindexing/AppIndexApi;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/fg;->xH:Lcom/google/android/gms/common/api/Api;
sput-object v0, Lcom/google/android/gms/appindexing/AppIndex;->APP_INDEX_API:Lcom/google/android/gms/common/api/Api;
new-instance v0, Lcom/google/android/gms/internal/fz;
invoke-direct {v0}, Lcom/google/android/gms/internal/fz;-><init>()V
sput-object v0, Lcom/google/android/gms/appindexing/AppIndex;->AppIndexApi:Lcom/google/android/gms/appindexing/AppIndexApi;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method