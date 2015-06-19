.class public Lcom/google/android/gms/analytics/l;
.super Lcom/google/android/gms/analytics/j;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/j;-><init>()V

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bm;->K:Lcom/google/android/gms/analytics/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V

    const-string v0, "&t"

    const-string v1, "social"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/l;
    .registers 3

    const-string v0, "&sn"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;

    return-object p0
.end method

.method public bridge synthetic a()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/analytics/j;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/analytics/l;
    .registers 3

    const-string v0, "&sa"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/android/gms/analytics/l;
    .registers 3

    const-string v0, "&st"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;

    return-object p0
.end method
