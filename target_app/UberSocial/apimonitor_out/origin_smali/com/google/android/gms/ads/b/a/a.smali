.class public final Lcom/google/android/gms/ads/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_d

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_a
    iput-object v0, p0, Lcom/google/android/gms/ads/b/a/a;->a:Landroid/os/Bundle;

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/b/a/a;->a:Landroid/os/Bundle;

    return-object v0
.end method
