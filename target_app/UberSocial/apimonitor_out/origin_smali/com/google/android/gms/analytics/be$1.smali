.class Lcom/google/android/gms/analytics/be$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/be;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/aq;Lcom/google/android/gms/analytics/ao;Lcom/google/android/gms/analytics/c;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/be;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/be;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/be$1;->a:Lcom/google/android/gms/analytics/be;

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
