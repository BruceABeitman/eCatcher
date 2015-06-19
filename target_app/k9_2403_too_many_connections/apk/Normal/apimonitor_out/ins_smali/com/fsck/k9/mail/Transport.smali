.class public abstract Lcom/fsck/k9/mail/Transport;
.super Ljava/lang/Object;
.source "Transport.java"
.field protected static final SOCKET_CONNECT_TIMEOUT:I = 0x2710
.field protected static final SOCKET_READ_TIMEOUT:I = 0x493e0
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/fsck/k9/mail/Transport;
.registers 5
const-class v0, Lcom/fsck/k9/mail/Transport;
monitor-enter v0
:try_start_3
const-string v1, "smtp"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_12
new-instance v1, Lcom/fsck/k9/mail/transport/SmtpTransport;
invoke-direct {v1, p0}, Lcom/fsck/k9/mail/transport/SmtpTransport;-><init>(Ljava/lang/String;)V
:goto_10
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_20
monitor-exit v0
return-object v1
:cond_12
:try_start_12
const-string v1, "webdav"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_23
new-instance v1, Lcom/fsck/k9/mail/transport/WebDavTransport;
invoke-direct {v1, p0}, Lcom/fsck/k9/mail/transport/WebDavTransport;-><init>(Ljava/lang/String;)V
:try_end_1f
.catchall {:try_start_12 .. :try_end_1f} :catchall_20
goto :goto_10
:catchall_20
move-exception v1
monitor-exit v0
throw v1
:cond_23
:try_start_23
new-instance v1, Lcom/fsck/k9/mail/MessagingException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unable to locate an applicable Transport for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_3c
.catchall {:try_start_23 .. :try_end_3c} :catchall_20
.end method
.method public abstract close()V
.end method
.method public abstract open()V
.end method
.method public abstract sendMessage(Lcom/fsck/k9/mail/Message;)V
.end method