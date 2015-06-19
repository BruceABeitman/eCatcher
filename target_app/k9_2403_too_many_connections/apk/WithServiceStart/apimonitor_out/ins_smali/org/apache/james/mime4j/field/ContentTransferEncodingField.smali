.class public Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
.super Lorg/apache/james/mime4j/field/Field;
.source "ContentTransferEncodingField.java"
.field public static final ENC_7BIT:Ljava/lang/String; = "7bit"
.field public static final ENC_8BIT:Ljava/lang/String; = "8bit"
.field public static final ENC_BASE64:Ljava/lang/String; = "base64"
.field public static final ENC_BINARY:Ljava/lang/String; = "binary"
.field public static final ENC_QUOTED_PRINTABLE:Ljava/lang/String; = "quoted-printable"
.field private encoding:Ljava/lang/String;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object p4, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->encoding:Ljava/lang/String;
return-void
.end method
.method public static getEncoding(Lorg/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;
.registers 2
if-eqz p0, :cond_11
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_11
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;
move-result-object v0
:goto_10
return-object v0
:cond_11
const-string v0, "7bit"
goto :goto_10
.end method
.method public getEncoding()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->encoding:Ljava/lang/String;
return-object v0
.end method