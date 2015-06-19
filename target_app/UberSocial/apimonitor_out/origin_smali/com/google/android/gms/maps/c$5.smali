.class Lcom/google/android/gms/maps/c$5;
.super Lcom/google/android/gms/maps/a/be;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/m;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/m;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/m;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/c$5;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$5;->a:Lcom/google/android/gms/maps/m;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/be;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/c$5;->a:Lcom/google/android/gms/maps/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/m;->a()Z

    move-result v0

    return v0
.end method
