.class Lcom/google/android/gms/internal/ad$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/af;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lK:Lcom/google/android/gms/internal/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ad$5;->lK:Lcom/google/android/gms/internal/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ey;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isVisible"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "1"

    const-string v1, "isVisible"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "true"

    const-string v1, "isVisible"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_25
    const/4 v0, 0x1

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ad$5;->lK:Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ad;->d(Z)V

    goto :goto_8

    :cond_34
    const/4 v0, 0x0

    goto :goto_26
.end method
