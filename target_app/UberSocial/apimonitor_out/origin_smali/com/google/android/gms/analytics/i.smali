.class public Lcom/google/android/gms/analytics/i;
.super Lcom/google/android/gms/analytics/j;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/j;-><init>()V

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->H:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    const-string v0, "&t"

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/i;
    .registers 3

    const-string v0, "&exd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/analytics/i;
    .registers 4

    const-string v0, "&exf"

    invoke-static {p1}, Lcom/google/android/gms/analytics/ai;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;

    return-object p0
.end method

.method public bridge synthetic a()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/analytics/j;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
