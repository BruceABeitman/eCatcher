.class public final Lcom/google/analytics/tracking/android/at;
.super Ljava/lang/Object;
.source "MapBuilder.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/at;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;
    .registers 5

    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->a:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/at;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/at;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
