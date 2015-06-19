.class Lcom/google/android/gms/maps/c$6;
.super Lcom/google/android/gms/maps/a/as;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/i;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/i;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/i;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/c$6;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$6;->a:Lcom/google/android/gms/maps/i;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/as;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/c$6;->a:Lcom/google/android/gms/maps/i;

    invoke-interface {v0}, Lcom/google/android/gms/maps/i;->a()V

    return-void
.end method
