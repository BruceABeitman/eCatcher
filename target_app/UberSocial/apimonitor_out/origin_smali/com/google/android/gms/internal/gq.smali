.class public final Lcom/google/android/gms/internal/gq;
.super Lcom/google/android/gms/internal/hf;


# instance fields
.field private a:Lcom/google/android/gms/internal/gl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gl;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/hf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gq;->a:Lcom/google/android/gms/internal/gl;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->a:Lcom/google/android/gms/internal/gl;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->a:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gl;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gq;->a:Lcom/google/android/gms/internal/gl;

    return-void
.end method
