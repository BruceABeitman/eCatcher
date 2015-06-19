.class Lcom/google/android/gms/maps/c$9;
.super Lcom/google/android/gms/maps/a/ap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/h;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/h;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/h;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/c$9;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$9;->a:Lcom/google/android/gms/maps/h;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/maps/c$9;->a:Lcom/google/android/gms/maps/h;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/h;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
