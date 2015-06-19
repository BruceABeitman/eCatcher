.class public Lorg/scribe/exceptions/OAuthConnectionException;
.super Lorg/scribe/exceptions/OAuthException;
.source "OAuthConnectionException.java"


# static fields
.field private static final MSG:Ljava/lang/String; = "There was a problem while creating a connection to the remote service."


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "There was a problem while creating a connection to the remote service."

    invoke-direct {p0, v0, p1}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
