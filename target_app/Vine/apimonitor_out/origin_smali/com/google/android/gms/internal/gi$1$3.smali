.class Lcom/google/android/gms/internal/gi$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gi$1;->b(Lcom/google/android/gms/internal/gf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Cb:Lcom/google/android/gms/internal/gi$1;

.field final synthetic Cd:Lcom/google/android/gms/internal/gf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gi$1;Lcom/google/android/gms/internal/gf;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/gi$1$3;->Cb:Lcom/google/android/gms/internal/gi$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/gi$1$3;->Cd:Lcom/google/android/gms/internal/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1$3;->Cb:Lcom/google/android/gms/internal/gi$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    iget-object v1, p0, Lcom/google/android/gms/internal/gi$1$3;->Cd:Lcom/google/android/gms/internal/gf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/internal/gf;)V

    return-void
.end method
