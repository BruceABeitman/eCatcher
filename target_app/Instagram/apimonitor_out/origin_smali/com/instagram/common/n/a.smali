.class public final Lcom/instagram/common/n/a;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# instance fields
.field private final a:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/common/n/a;->a:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/common/n/b;

    invoke-direct {v0, p0, p1}, Lcom/instagram/common/n/b;-><init>(Lcom/instagram/common/n/a;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/n/a;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/instagram/common/n/a;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
