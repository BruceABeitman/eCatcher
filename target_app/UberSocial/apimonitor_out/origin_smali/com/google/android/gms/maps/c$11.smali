.class Lcom/google/android/gms/maps/c$11;
.super Lcom/google/android/gms/maps/a/ay;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/k;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/k;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/k;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/c$11;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$11;->a:Lcom/google/android/gms/maps/k;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/a/m;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/c$11;->a:Lcom/google/android/gms/maps/k;

    new-instance v1, Lcom/google/android/gms/maps/model/l;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/l;-><init>(Lcom/google/android/gms/maps/model/a/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/k;->a(Lcom/google/android/gms/maps/model/l;)Z

    move-result v0

    return v0
.end method
