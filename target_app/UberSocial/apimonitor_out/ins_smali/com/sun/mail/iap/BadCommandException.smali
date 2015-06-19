.class public Lcom/sun/mail/iap/BadCommandException;
.super Lcom/sun/mail/iap/ProtocolException;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x50122c148d564b0bL
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