.class Lcom/google/android/gms/analytics/bd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/bd;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/bd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/bd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/bd$1;->a:Lcom/google/android/gms/analytics/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/bd$1;->a:Lcom/google/android/gms/analytics/bd;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bd$1;->a:Lcom/google/android/gms/analytics/bd;

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->a(Lcom/google/android/gms/analytics/bd;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/bd;->a(ZZ)V

    return-void
.end method