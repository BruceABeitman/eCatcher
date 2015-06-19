.class Lcom/google/android/gms/maps/c$10;
.super Lcom/google/android/gms/maps/a/av;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/j;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/j;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/j;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/c$10;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$10;->a:Lcom/google/android/gms/maps/j;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/av;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/maps/c$10;->a:Lcom/google/android/gms/maps/j;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/j;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
