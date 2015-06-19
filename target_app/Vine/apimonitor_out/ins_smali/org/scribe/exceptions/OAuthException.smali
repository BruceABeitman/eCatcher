.class public Lorg/scribe/exceptions/OAuthException;
.super Ljava/lang/RuntimeException;
.source "OAuthException.java"
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method