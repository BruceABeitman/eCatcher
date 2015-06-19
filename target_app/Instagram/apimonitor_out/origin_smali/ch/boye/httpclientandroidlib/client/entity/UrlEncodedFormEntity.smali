.class public Lch/boye/httpclientandroidlib/client/entity/UrlEncodedFormEntity;
.super Lch/boye/httpclientandroidlib/entity/StringEntity;
.source "UrlEncodedFormEntity.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lch/boye/httpclientandroidlib/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1c

    :goto_10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    return-void

    :cond_1c
    const-string p2, "ISO-8859-1"

    goto :goto_10
.end method
