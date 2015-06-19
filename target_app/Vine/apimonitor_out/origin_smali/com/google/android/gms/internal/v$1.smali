.class Lcom/google/android/gms/internal/v$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kF:Lcom/google/android/gms/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/v;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/v$1;->kF:Lcom/google/android/gms/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/v$1;->kF:Lcom/google/android/gms/internal/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/v;)Lcom/google/android/gms/internal/v$c;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/v$1;->kF:Lcom/google/android/gms/internal/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/v;)Lcom/google/android/gms/internal/v$c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/v$1;->kF:Lcom/google/android/gms/internal/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/v;)Lcom/google/android/gms/internal/v$c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;

    iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/v$1;->kF:Lcom/google/android/gms/internal/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/v;)Lcom/google/android/gms/internal/v$c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/v$c;->kS:Lcom/google/android/gms/internal/eg;

    iget-object v0, v0, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bS()V

    :cond_2b
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method
