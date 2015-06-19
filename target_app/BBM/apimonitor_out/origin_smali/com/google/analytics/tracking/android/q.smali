.class final Lcom/google/analytics/tracking/android/q;
.super Ljava/lang/Object;
.source "EasyTracker.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/l;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/p;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/analytics/tracking/android/q;->a:Lcom/google/analytics/tracking/android/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
