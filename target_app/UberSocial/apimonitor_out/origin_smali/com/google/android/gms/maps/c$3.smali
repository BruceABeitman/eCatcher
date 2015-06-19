.class Lcom/google/android/gms/maps/c$3;
.super Lcom/google/android/gms/maps/a/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/e;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/e;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/e;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/c$3;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$3;->a:Lcom/google/android/gms/maps/e;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/a/m;)Lcom/google/android/gms/c/d;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/c$3;->a:Lcom/google/android/gms/maps/e;

    new-instance v1, Lcom/google/android/gms/maps/model/l;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/l;-><init>(Lcom/google/android/gms/maps/model/a/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/e;->a(Lcom/google/android/gms/maps/model/l;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/maps/model/a/m;)Lcom/google/android/gms/c/d;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/c$3;->a:Lcom/google/android/gms/maps/e;

    new-instance v1, Lcom/google/android/gms/maps/model/l;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/l;-><init>(Lcom/google/android/gms/maps/model/a/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/e;->b(Lcom/google/android/gms/maps/model/l;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v0

    return-object v0
.end method
