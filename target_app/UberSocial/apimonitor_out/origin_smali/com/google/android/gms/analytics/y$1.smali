.class Lcom/google/android/gms/analytics/y$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/y;-><init>(Lcom/google/android/gms/analytics/ap;Landroid/content/Context;Ljava/lang/String;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/y;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/y$1;->a:Lcom/google/android/gms/analytics/y;

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
