.class Lcom/google/android/gms/maps/c$1;
.super Lcom/google/android/gms/maps/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/r;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/r;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/r;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/c$1;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$1;->a:Lcom/google/android/gms/maps/r;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/c$1;->a:Lcom/google/android/gms/maps/r;

    invoke-interface {v0}, Lcom/google/android/gms/maps/r;->a()V

    return-void
.end method

.method public a(Lcom/google/android/gms/maps/a/al;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/c$1;->a:Lcom/google/android/gms/maps/r;

    new-instance v1, Lcom/google/android/gms/maps/c$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$1$1;-><init>(Lcom/google/android/gms/maps/c$1;Lcom/google/android/gms/maps/a/al;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/r;->a(Lcom/google/android/gms/maps/s;)V

    return-void
.end method
