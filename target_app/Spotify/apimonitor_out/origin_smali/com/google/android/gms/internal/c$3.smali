.class final Lcom/google/android/gms/internal/c$3;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/c$3;->a:Lcom/google/android/gms/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/er;Ljava/util/Map;)V
    .registers 4
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

    iget-object v0, p0, Lcom/google/android/gms/internal/c$3;->a:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->c()V

    return-void
.end method
