.class public final Lcom/spotify/mobile/android/util/di;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "AD"

    const-string v2, "9.99\u20ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "AR"

    const-string v2, "36 ARS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "AU"

    const-string v2, "$11.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "AT"

    const-string v2, "\u20ac 9,99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "BE-FR"

    const-string v2, "\u20ac 9,99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "BE-NL"

    const-string v2, "\u20ac 9,99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "BO"

    const-string v2, "USD $5.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "BR"

    const-string v2, "14.90 BRL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "BG"

    const-string v2, "4.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "CA-EN"

    const-string v2, "9.99 CAD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "CA-FR"

    const-string v2, "9.99 CAD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "CL"

    const-string v2, "CLP 3099"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "CO"

    const-string v2, "COP 11499"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "CR"

    const-string v2, "USD $5.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "CY"

    const-string v2, "6.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "CZ"

    const-string v2, "5.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "DK"

    const-string v2, "kr 99,00"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "DO"

    const-string v2, "USD $5.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "EC"

    const-string v2, "USD $5.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "SV"

    const-string v2, "USD $5.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "EE"

    const-string v2, "6.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "FI"

    const-string v2, "9,99 \u20ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "FR"

    const-string v2, "9,99 \u20ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "DE"

    const-string v2, "9,99 \u20ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "GR"

    const-string v2, "6.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "GT"

    const-string v2, "USD $5.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "HN"

    const-string v2, "USD $5.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "HK-EN"

    const-string v2, "48 HKD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "HK-ZH"

    const-string v2, "48 HKD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "HU"

    const-string v2, "4,99 \u20ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "IS"

    const-string v2, "9.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "IE"

    const-string v2, "\u20ac9.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "IT"

    const-string v2, "\u20ac9,99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "LV"

    const-string v2, "6.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "LI"

    const-string v2, "12.95 CHF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "LT"

    const-string v2, "6.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "LU-FR"

    const-string v2, "9.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "LU-DE"

    const-string v2, "9.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "MY-EN"

    const-string v2, "14.9 MYR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "MY-MS"

    const-string v2, "14.9 MYR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "MT"

    const-string v2, "6.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "MX"

    const-string v2, "99 MXN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "MC"

    const-string v2, "9.99 \u20ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "NL"

    const-string v2, "\u20ac9,99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "NZ"

    const-string v2, "$12.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "NI"

    const-string v2, "USD $5.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "NO"

    const-string v2, "kr 99,00"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "PA"

    const-string v2, "USD $5.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "PY"

    const-string v2, "USD $5.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "PE"

    const-string v2, "PEN 16.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "PH"

    const-string v2, "129 PHP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "PL"

    const-string v2, "19,99 PLN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "PT"

    const-string v2, "\u20ac6.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "SG-EN"

    const-string v2, "9.9 SGD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "SK"

    const-string v2, "5.99 EUR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "ES"

    const-string v2, "9,99 \u20ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "SE"

    const-string v2, "99,00 kr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "CH-FR"

    const-string v2, "Fr. 12.95"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "CH-DE"

    const-string v2, "Fr. 12.95"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "TW"

    const-string v2, "149 NTD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "TR"

    const-string v2, "9.99 TRY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "UK"

    const-string v2, "\u00a39.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "US"

    const-string v2, "$9.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    const-string v1, "UY"

    const-string v2, "USD $5.99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/di;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7
.end method
