.class public final Lcom/google/android/gms/analytics/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/analytics/a;


# direct methods
.method public static a()V
    .registers 0

    invoke-static {}, Lcom/google/android/gms/analytics/d;->c()Lcom/google/android/gms/analytics/b;

    return-void
.end method

.method public static b()V
    .registers 0

    invoke-static {}, Lcom/google/android/gms/analytics/d;->c()Lcom/google/android/gms/analytics/b;

    return-void
.end method

.method private static c()Lcom/google/android/gms/analytics/b;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/google/android/gms/analytics/a;->a()Lcom/google/android/gms/analytics/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/a;

    :cond_a
    sget-object v0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/a;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/a;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/a;->b()Lcom/google/android/gms/analytics/b;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
