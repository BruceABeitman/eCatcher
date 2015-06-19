.class public Lcom/sun/mail/dsn/message_deliverystatus;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljavax/activation/DataContentHandler;
.field  ourDataFlavor:Ljavax/activation/ActivationDataFlavor;
.method public constructor <init>()V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljavax/activation/ActivationDataFlavor;
const-class v1, Lcom/sun/mail/dsn/DeliveryStatus;
const-string v2, "message/delivery-status"
const-string v3, "Delivery Status"
invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/sun/mail/dsn/message_deliverystatus;->ourDataFlavor:Ljavax/activation/ActivationDataFlavor;
return-void
.end method
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
.registers 6
:try_start_0
new-instance v0, Lcom/sun/mail/dsn/DeliveryStatus;
invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;
move-result-object v1
invoke-direct {v0, v1}, Lcom/sun/mail/dsn/DeliveryStatus;-><init>(Ljava/io/InputStream;)V
:try_end_9
.catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_9} :catch_a
return-object v0
:catch_a
move-exception v0
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Exception creating DeliveryStatus in message/devliery-status DataContentHandler: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public getTransferData(Lc/a/a/a;Ljavax/activation/DataSource;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/sun/mail/dsn/message_deliverystatus;->ourDataFlavor:Ljavax/activation/ActivationDataFlavor;
invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lc/a/a/a;)Z
move-result v0
if-eqz v0, :cond_d
invoke-virtual {p0, p2}, Lcom/sun/mail/dsn/message_deliverystatus;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public getTransferDataFlavors()[Lc/a/a/a;
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Lc/a/a/a;
const/4 v1, 0x0
iget-object v2, p0, Lcom/sun/mail/dsn/message_deliverystatus;->ourDataFlavor:Ljavax/activation/ActivationDataFlavor;
aput-object v2, v0, v1
return-object v0
.end method
.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
.registers 6
instance-of v0, p1, Lcom/sun/mail/dsn/DeliveryStatus;
if-eqz v0, :cond_15
check-cast p1, Lcom/sun/mail/dsn/DeliveryStatus;
:try_start_6
invoke-virtual {p1, p3}, Lcom/sun/mail/dsn/DeliveryStatus;->writeTo(Ljava/io/OutputStream;)V
:try_end_9
.catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_9} :catch_a
return-void
:catch_a
move-exception v0
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_15
new-instance v0, Ljava/io/IOException;
const-string v1, "unsupported object"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method