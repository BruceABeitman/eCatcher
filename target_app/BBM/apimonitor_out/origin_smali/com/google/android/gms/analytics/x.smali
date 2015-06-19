.class Lcom/google/android/gms/analytics/x;
.super Ljava/lang/Object;


# instance fields
.field private tK:Ljava/lang/String;

.field private final tL:J

.field private final tM:J

.field private tN:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https:"

    iput-object v0, p0, Lcom/google/android/gms/analytics/x;->tN:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/x;->tK:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/analytics/x;->tL:J

    iput-wide p4, p0, Lcom/google/android/gms/analytics/x;->tM:J

    return-void
.end method


# virtual methods
.method E(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/x;->tK:Ljava/lang/String;

    return-void
.end method

.method F(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "http:"

    iput-object v0, p0, Lcom/google/android/gms/analytics/x;->tN:Ljava/lang/String;

    goto :goto_c
.end method

.method ch()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/x;->tK:Ljava/lang/String;

    return-object v0
.end method

.method ci()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/analytics/x;->tL:J

    return-wide v0
.end method

.method cj()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/analytics/x;->tM:J

    return-wide v0
.end method

.method ck()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/x;->tN:Ljava/lang/String;

    return-object v0
.end method
