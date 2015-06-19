.class Lcom/google/android/gms/maps/c$12;
.super Lcom/google/android/gms/maps/a/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/l;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/l;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/l;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/c$12;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$12;->a:Lcom/google/android/gms/maps/l;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/a/m;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/c$12;->a:Lcom/google/android/gms/maps/l;

    new-instance v1, Lcom/google/android/gms/maps/model/l;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/l;-><init>(Lcom/google/android/gms/maps/model/a/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/l;->a(Lcom/google/android/gms/maps/model/l;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/maps/model/a/m;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/c$12;->a:Lcom/google/android/gms/maps/l;

    new-instance v1, Lcom/google/android/gms/maps/model/l;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/l;-><init>(Lcom/google/android/gms/maps/model/a/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/l;->c(Lcom/google/android/gms/maps/model/l;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/maps/model/a/m;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/c$12;->a:Lcom/google/android/gms/maps/l;

    new-instance v1, Lcom/google/android/gms/maps/model/l;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/l;-><init>(Lcom/google/android/gms/maps/model/a/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/l;->b(Lcom/google/android/gms/maps/model/l;)V

    return-void
.end method
