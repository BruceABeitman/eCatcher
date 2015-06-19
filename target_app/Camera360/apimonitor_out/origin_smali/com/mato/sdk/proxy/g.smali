.class final Lcom/mato/sdk/proxy/g;
.super Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_30

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x71

    :goto_16
    const-string/jumbo v1, "MAA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the signal is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mato/sdk/utils/g;->b(I)V

    :goto_2f
    return-void

    :cond_30
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    goto :goto_16

    :cond_35
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_3a

    move-result v0

    goto :goto_16

    :catch_3a
    move-exception v0

    goto :goto_2f
.end method
