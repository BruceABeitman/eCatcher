.class public Lorg/apache/james/mime4j/field/address/NamedMailbox;
.super Lorg/apache/james/mime4j/field/address/Mailbox;
.source "NamedMailbox.java"
.field private name:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p2, p3}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lorg/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p2, p3, p4}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lorg/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V
.registers 6
invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/field/address/DomainList;
move-result-object v0
invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/Mailbox;->getLocalPart()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/Mailbox;->getDomain()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v1, v2}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lorg/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;
return-void
.end method
.method public getAddressString(Z)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;
if-nez v1, :cond_1c
const-string v1, ""
:goto_b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-super {p0, p1}, Lorg/apache/james/mime4j/field/address/Mailbox;->getAddressString(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_1c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_b
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;
return-object v0
.end method