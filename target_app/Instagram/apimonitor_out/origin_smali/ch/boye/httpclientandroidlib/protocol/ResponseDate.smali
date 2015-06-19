.class public Lch/boye/httpclientandroidlib/protocol/ResponseDate;
.super Ljava/lang/Object;
.source "ResponseDate.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpResponseInterceptor;


# static fields
.field private static final DATE_GENERATOR:Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/protocol/ResponseDate;->DATE_GENERATOR:Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_29

    const-string v0, "Date"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lch/boye/httpclientandroidlib/protocol/ResponseDate;->DATE_GENERATOR:Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Date"

    invoke-interface {p1, v1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method
