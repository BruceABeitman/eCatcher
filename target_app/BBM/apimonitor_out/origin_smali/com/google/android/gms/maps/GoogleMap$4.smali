.class Lcom/google/android/gms/maps/GoogleMap$4;
.super Lcom/google/android/gms/maps/internal/o$a;


# instance fields
.field final synthetic ON:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic OS:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$4;->ON:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$4;->OS:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/gms/dynamic/b;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap$4;->OS:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$4;->OS:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void
.end method
