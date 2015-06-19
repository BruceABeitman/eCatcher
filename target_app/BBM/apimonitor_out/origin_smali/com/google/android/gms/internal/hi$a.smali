.class final Lcom/google/android/gms/internal/hi$a;
.super Lcom/google/android/gms/internal/eh$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/eh",
        "<",
        "Lcom/google/android/gms/internal/hg;",
        ">.b<",
        "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final Lt:[Ljava/lang/String;

.field final synthetic Lu:Lcom/google/android/gms/internal/hi;

.field private final yJ:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;I[Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/hi$a;->Lu:Lcom/google/android/gms/internal/hi;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/google/android/gms/location/LocationStatusCodes;->bl(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/hi$a;->yJ:I

    iput-object p4, p0, Lcom/google/android/gms/internal/hi$a;->Lt:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .registers 4

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/hi$a;->yJ:I

    iget-object v1, p0, Lcom/google/android/gms/internal/hi$a;->Lt:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;->onAddGeofencesResult(I[Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    return-void
.end method

.method protected final cP()V
    .registers 1

    return-void
.end method
