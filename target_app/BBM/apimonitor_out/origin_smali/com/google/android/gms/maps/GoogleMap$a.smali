.class final Lcom/google/android/gms/maps/GoogleMap$a;
.super Lcom/google/android/gms/maps/internal/b$a;


# instance fields
.field private final Pb:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/b$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$a;->Pb:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$a;->Pb:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;->onCancel()V

    return-void
.end method

.method public final onFinish()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$a;->Pb:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;->onFinish()V

    return-void
.end method
