.class public Lcom/sun/mail/iap/ConnectionException;
.super Lcom/sun/mail/iap/ProtocolException;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x4fcb2db4e6c2e197L
.field private transient p:Lcom/sun/mail/iap/Protocol;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/sun/mail/iap/ProtocolException;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V
.registers 3
invoke-direct {p0, p2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Lcom/sun/mail/iap/Response;)V
iput-object p1, p0, Lcom/sun/mail/iap/ConnectionException;->p:Lcom/sun/mail/iap/Protocol;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public getProtocol()Lcom/sun/mail/iap/Protocol;
.registers 2
iget-object v0, p0, Lcom/sun/mail/iap/ConnectionException;->p:Lcom/sun/mail/iap/Protocol;
return-object v0
.end method