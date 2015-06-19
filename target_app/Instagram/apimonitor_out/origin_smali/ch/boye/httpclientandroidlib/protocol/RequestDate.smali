.class public Lch/boye/httpclientandroidlib/protocol/RequestDate;
.super Ljava/lang/Object;
.source "RequestDate.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;


# static fields
.field private static final DATE_GENERATOR:Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/protocol/RequestDate;->DATE_GENERATOR:Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_21

    const-string v0, "Date"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lch/boye/httpclientandroidlib/protocol/RequestDate;->DATE_GENERATOR:Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/HttpDateGenerator;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Date"

    invoke-interface {p1, v1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method
