.class Lcom/google/android/gms/maps/c$8;
.super Lcom/google/android/gms/maps/a/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/f;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/f;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/c$8;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$8;->a:Lcom/google/android/gms/maps/f;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/maps/c$8;->a:Lcom/google/android/gms/maps/f;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/f;->a(Lcom/google/android/gms/maps/model/CameraPosition;)V

    return-void
.end method
