.class final Lcom/google/android/gms/maps/p;
.super Lcom/google/android/gms/maps/a/x;


# instance fields
.field private final a:Lcom/google/android/gms/maps/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/d;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/x;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/d;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/d;

    invoke-interface {v0}, Lcom/google/android/gms/maps/d;->a()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/d;

    invoke-interface {v0}, Lcom/google/android/gms/maps/d;->b()V

    return-void
.end method
