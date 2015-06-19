.class public Lcom/fsck/k9/mail/transport/WebDavTransport;
.super Lcom/fsck/k9/mail/Transport;
.source "WebDavTransport.java"
.field public static final CONNECTION_SECURITY_NONE:I = 0x0
.field public static final CONNECTION_SECURITY_SSL_OPTIONAL:I = 0x4
.field public static final CONNECTION_SECURITY_SSL_REQUIRED:I = 0x3
.field public static final CONNECTION_SECURITY_TLS_OPTIONAL:I = 0x1
.field public static final CONNECTION_SECURITY_TLS_REQUIRED:I = 0x2
.field  host:Ljava/lang/String;
.field private mConnectionSecurity:I
.field  mIn:Lcom/fsck/k9/PeekableInputStream;
.field  mOut:Ljava/io/OutputStream;
.field private mPassword:Ljava/lang/String;
.field  mPort:I
.field  mSecure:Z
.field  mSocket:Ljava/net/Socket;
.field private mUrl:Ljava/lang/String;
.field private mUsername:Ljava/lang/String;
.field private store:Lcom/fsck/k9/mail/store/WebDavStore;
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/fsck/k9/mail/Transport;-><init>()V
new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore;
invoke-direct {v0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/fsck/k9/mail/transport/WebDavTransport;->store:Lcom/fsck/k9/mail/store/WebDavStore;
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_15
const-string v0, "k9"
const-string v1, ">>> New WebDavTransport creation complete"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_15
return-void
.end method
.method public close()V
.registers 1
return-void
.end method
.method public open()V
.registers 3
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_b
const-string v0, "k9"
const-string v1, ">>> open called on WebDavTransport "
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_b
iget-object v0, p0, Lcom/fsck/k9/mail/transport/WebDavTransport;->store:Lcom/fsck/k9/mail/store/WebDavStore;
invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
return-void
.end method
.method public sendMessage(Lcom/fsck/k9/mail/Message;)V
.registers 5
iget-object v0, p0, Lcom/fsck/k9/mail/transport/WebDavTransport;->store:Lcom/fsck/k9/mail/store/WebDavStore;
const/4 v1, 0x1
new-array v1, v1, [Lcom/fsck/k9/mail/Message;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->sendMessages([Lcom/fsck/k9/mail/Message;)V
return-void
.end method