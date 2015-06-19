.class public Lorg/scribe/services/DatatypeConverterEncoder;
.super Lorg/scribe/services/Base64Encoder;
.source "DatatypeConverterEncoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/scribe/services/Base64Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method public encode([B)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "DatatypeConverter"

    return-object v0
.end method
