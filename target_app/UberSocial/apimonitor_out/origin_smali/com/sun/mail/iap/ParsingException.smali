.class public Lcom/sun/mail/iap/ParsingException;
.super Lcom/sun/mail/iap/ProtocolException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x6ba345e6a3110ee7L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sun/mail/iap/ProtocolException;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Lcom/sun/mail/iap/Response;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    return-void
.end method
