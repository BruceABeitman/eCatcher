.class public Lorg/apache/james/mime4j/field/MailboxField;
.super Lorg/apache/james/mime4j/field/Field;
.source "MailboxField.java"
.field private final mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;
.field private final parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;Lorg/apache/james/mime4j/field/address/parser/ParseException;)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object p4, p0, Lorg/apache/james/mime4j/field/MailboxField;->mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;
iput-object p5, p0, Lorg/apache/james/mime4j/field/MailboxField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;
return-void
.end method
.method public getMailbox()Lorg/apache/james/mime4j/field/address/Mailbox;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;
return-object v0
.end method
.method public getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;
return-object v0
.end method