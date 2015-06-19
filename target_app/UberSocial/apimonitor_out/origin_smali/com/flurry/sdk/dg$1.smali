.class Lcom/flurry/sdk/dg$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/dg;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dg;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dg;)V
    .registers 2

    iput-object p1, p0, Lcom/flurry/sdk/dg$1;->a:Lcom/flurry/sdk/dg;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/flurry/sdk/dg$1;->a:Lcom/flurry/sdk/dg;

    invoke-static {}, Lcom/flurry/sdk/dt;->a()Lcom/google/android/gms/ads/a/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/dg;Lcom/google/android/gms/ads/a/b;)Lcom/google/android/gms/ads/a/b;

    return-void
.end method
