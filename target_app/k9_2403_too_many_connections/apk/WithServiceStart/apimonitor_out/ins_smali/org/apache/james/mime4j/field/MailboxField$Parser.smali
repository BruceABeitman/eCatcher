.class public Lorg/apache/james/mime4j/field/MailboxField$Parser;
.super Ljava/lang/Object;
.source "MailboxField.java"
.implements Lorg/apache/james/mime4j/field/FieldParser;
.field private static log:Lorg/apache/commons/logging/Log;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lorg/apache/james/mime4j/field/MailboxField$Parser;
invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
move-result-object v0
sput-object v0, Lorg/apache/james/mime4j/field/MailboxField$Parser;->log:Lorg/apache/commons/logging/Log;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
.registers 12
const/4 v4, 0x0
const/4 v5, 0x0
:try_start_2
invoke-static {p2}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressList;->flatten()Lorg/apache/james/mime4j/field/address/MailboxList;
move-result-object v7
invoke-virtual {v7}, Lorg/apache/james/mime4j/field/address/MailboxList;->size()I
move-result v0
if-lez v0, :cond_15
const/4 v0, 0x0
invoke-virtual {v7, v0}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;
:try_end_14
.catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_2 .. :try_end_14} :catch_1e
move-result-object v4
:cond_15
:goto_15
new-instance v0, Lorg/apache/james/mime4j/field/MailboxField;
move-object v1, p1
move-object v2, p2
move-object v3, p3
invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/MailboxField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;Lorg/apache/james/mime4j/field/address/parser/ParseException;)V
return-object v0
:catch_1e
move-exception v0
move-object v6, v0
sget-object v0, Lorg/apache/james/mime4j/field/MailboxField$Parser;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_4e
sget-object v0, Lorg/apache/james/mime4j/field/MailboxField$Parser;->log:Lorg/apache/commons/logging/Log;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Parsing value \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\': "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
:cond_4e
move-object v5, v6
goto :goto_15
.end method