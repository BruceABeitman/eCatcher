.class public Lcom/google/android/gms/location/ActivityRecognitionResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/a;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;"
        }
    .end annotation
.end field

.field b:J

.field c:J

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognitionResult;->CREATOR:Lcom/google/android/gms/location/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;JJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;JJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:I

    iput-object p1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    iput-wide p2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    return-void
.end method

.method public static a(Landroid/content/Intent;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static b(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    goto :goto_7
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/location/DetectedActivity;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    return-wide v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivityRecognitionResult [probableActivities="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/location/a;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;Landroid/os/Parcel;)V

    return-void
.end method
