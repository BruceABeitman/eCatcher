.class Lcom/google/android/gms/maps/GoogleMap$3;
.super Lcom/google/android/gms/maps/internal/i$a;


# instance fields
.field final synthetic ON:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic OR:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$3;->ON:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$3;->OR:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$3;->OR:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;->onMapLoaded()V

    return-void
.end method
