.class public Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;
.super Ljava/lang/Object;
.source "EnglishReasonPhraseCatalog.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;


# static fields
.field public static final INSTANCE:Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;

.field private static final REASON_PHRASES:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x3

    const/16 v3, 0x8

    new-instance v0, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    const/16 v0, 0xc8

    const-string v1, "OK"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xc9

    const-string v1, "Created"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xca

    const-string v1, "Accepted"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcc

    const-string v1, "No Content"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12d

    const-string v1, "Moved Permanently"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12e

    const-string v1, "Moved Temporarily"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x130

    const-string v1, "Not Modified"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x190

    const-string v1, "Bad Request"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x191

    const-string v1, "Unauthorized"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x193

    const-string v1, "Forbidden"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x194

    const-string v1, "Not Found"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f4

    const-string v1, "Internal Server Error"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f5

    const-string v1, "Not Implemented"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f6

    const-string v1, "Bad Gateway"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f7

    const-string v1, "Service Unavailable"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x64

    const-string v1, "Continue"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x133

    const-string v1, "Temporary Redirect"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x195

    const-string v1, "Method Not Allowed"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x199

    const-string v1, "Conflict"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19c

    const-string v1, "Precondition Failed"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19d

    const-string v1, "Request Too Long"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19e

    const-string v1, "Request-URI Too Long"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19f

    const-string v1, "Unsupported Media Type"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12c

    const-string v1, "Multiple Choices"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12f

    const-string v1, "See Other"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x131

    const-string v1, "Use Proxy"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x192

    const-string v1, "Payment Required"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x196

    const-string v1, "Not Acceptable"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x197

    const-string v1, "Proxy Authentication Required"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x198

    const-string v1, "Request Timeout"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x65

    const-string v1, "Switching Protocols"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcb

    const-string v1, "Non Authoritative Information"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcd

    const-string v1, "Reset Content"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xce

    const-string v1, "Partial Content"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f8

    const-string v1, "Gateway Timeout"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f9

    const-string v1, "Http Version Not Supported"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19a

    const-string v1, "Gone"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19b

    const-string v1, "Length Required"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a0

    const-string v1, "Requested Range Not Satisfiable"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a1

    const-string v1, "Expectation Failed"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x66

    const-string v1, "Processing"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcf

    const-string v1, "Multi-Status"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a6

    const-string v1, "Unprocessable Entity"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a3

    const-string v1, "Insufficient Space On Resource"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a4

    const-string v1, "Method Failure"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a7

    const-string v1, "Locked"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1fb

    const-string v1, "Insufficient Storage"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a8

    const-string v1, "Failed Dependency"

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setReason(ILjava/lang/String;)V
    .registers 5

    div-int/lit8 v0, p0, 0x64

    mul-int/lit8 v1, v0, 0x64

    sub-int v1, p0, v1

    sget-object v2, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v0, v2, v0

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method public getReason(ILjava/util/Locale;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x64

    if-lt p1, v0, :cond_8

    const/16 v0, 0x258

    if-lt p1, v0, :cond_23

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown category for status code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    div-int/lit8 v1, p1, 0x64

    mul-int/lit8 v0, v1, 0x64

    sub-int v2, p1, v0

    const/4 v0, 0x0

    sget-object v3, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v3, v3, v1

    array-length v3, v3

    if-le v3, v2, :cond_37

    sget-object v0, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    :cond_37
    return-object v0
.end method
