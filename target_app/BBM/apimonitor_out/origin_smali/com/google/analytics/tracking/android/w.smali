.class final Lcom/google/analytics/tracking/android/w;
.super Ljava/lang/Object;
.source "GAServiceManager.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/g;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/v;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/v;)V
    .registers 2

    iput-object p1, p0, Lcom/google/analytics/tracking/android/w;->a:Lcom/google/analytics/tracking/android/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->a:Lcom/google/analytics/tracking/android/v;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/w;->a:Lcom/google/analytics/tracking/android/v;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/v;->a(Lcom/google/analytics/tracking/android/v;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/analytics/tracking/android/v;->a(ZZ)V

    return-void
.end method
