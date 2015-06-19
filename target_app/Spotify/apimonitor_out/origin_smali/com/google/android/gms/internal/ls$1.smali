.class final Lcom/google/android/gms/internal/ls$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ls;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ls;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ls$1;->a:Lcom/google/android/gms/internal/ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ls$1;->a:Lcom/google/android/gms/internal/ls;

    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lu;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/ls$1;->a:Lcom/google/android/gms/internal/ls;

    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/ls$1;->a:Lcom/google/android/gms/internal/ls;

    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/ls$1;->a:Lcom/google/android/gms/internal/ls;

    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->a()V

    :cond_2b
    return-void
.end method

.method public final onLowMemory()V
    .registers 1

    return-void
.end method
