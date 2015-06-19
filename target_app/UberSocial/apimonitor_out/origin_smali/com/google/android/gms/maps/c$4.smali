.class Lcom/google/android/gms/maps/c$4;
.super Lcom/google/android/gms/maps/a/bh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/n;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/n;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/n;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/c$4;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$4;->a:Lcom/google/android/gms/maps/n;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/bh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/d;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/maps/c$4;->a:Lcom/google/android/gms/maps/n;

    invoke-static {p1}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/n;->a(Landroid/location/Location;)V

    return-void
.end method
