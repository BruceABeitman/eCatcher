.class public Lcom/google/android/gms/location/ActivityRecognition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/ActivityRecognition$a;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi; = null

.field public static final CLIENT_NAME:Ljava/lang/String; = "activity_recognition"

.field private static final yE:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/jh;",
            ">;"
        }
    .end annotation
.end field

.field private static final yF:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/jh;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->yE:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/location/ActivityRecognition$1;

    invoke-direct {v0}, Lcom/google/android/gms/location/ActivityRecognition$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->yF:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/location/ActivityRecognition;->yF:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/location/ActivityRecognition;->yE:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/jb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jb;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic iQ()Lcom/google/android/gms/common/api/Api$c;
    .registers 1

    sget-object v0, Lcom/google/android/gms/location/ActivityRecognition;->yE:Lcom/google/android/gms/common/api/Api$c;

    return-object v0
.end method
