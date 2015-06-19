.class final Lcom/google/android/gms/internal/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ao;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/c$4;->a:Lcom/google/android/gms/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/er;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/er;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pingType"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "unloadPing"

    const-string v1, "pingType"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/internal/c$4;->a:Lcom/google/android/gms/internal/c;

    iget-object v0, p0, Lcom/google/android/gms/internal/c$4;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->b(Lcom/google/android/gms/internal/c;)Lcom/google/android/gms/internal/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/e;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unregistered GMSG handlers for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$4;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/internal/c;->c(Lcom/google/android/gms/internal/c;)Lcom/google/android/gms/internal/lz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method
