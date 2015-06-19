.class public Lcom/glympse/android/hal/gms/location/DetectedActivity;
.super Ljava/lang/Object;
.source "DetectedActivity.java"


# static fields
.field public static final IN_VEHICLE:I = 0x0

.field public static final NULL:Ljava/lang/String; = "SAFE_PARCELABLE_NULL_STRING"

.field public static final ON_BICYCLE:I = 0x1

.field public static final ON_FOOT:I = 0x2

.field public static final STILL:I = 0x3

.field public static final TILTING:I = 0x5

.field public static final UNKNOWN:I = 0x4

.field private static fm:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static fn:Ljava/lang/reflect/Method;

.field private static fo:Ljava/lang/reflect/Method;


# instance fields
.field private fp:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fn:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fo:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fp:Ljava/lang/Object;

    iput-object p1, p0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fp:Ljava/lang/Object;

    return-void
.end method

.method public static init()V
    .registers 3

    :try_start_0
    const-string v0, "com.google.android.gms.location.DetectedActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fm:Ljava/lang/Class;

    const-string v1, "getType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fn:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fm:Ljava/lang/Class;

    const-string v1, "getConfidence"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fo:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c
.end method


# virtual methods
.method public getConfidence()I
    .registers 4

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fo:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fp:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_10

    move-result v0

    :goto_f
    return v0

    :catch_10
    move-exception v0

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getType()I
    .registers 4

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fn:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/DetectedActivity;->fp:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_10

    move-result v0

    :goto_f
    return v0

    :catch_10
    move-exception v0

    const/4 v0, 0x4

    goto :goto_f
.end method
