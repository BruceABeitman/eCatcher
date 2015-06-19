.class Lcom/google/android/gms/analytics/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/s;-><init>(Lcom/google/android/gms/analytics/r;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/r;

.field final synthetic b:Lcom/google/android/gms/analytics/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/r;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/s$1;->b:Lcom/google/android/gms/analytics/s;

    iput-object p2, p0, Lcom/google/android/gms/analytics/s$1;->a:Lcom/google/android/gms/analytics/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
