.class public Lorg/scribe/services/CommonsEncoder;
.super Lorg/scribe/services/Base64Encoder;
.source "CommonsEncoder.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/scribe/services/Base64Encoder;-><init>()V
return-void
.end method
.method public static isPresent()Z
.registers 2
:try_start_0
const-string v1, "org.apache.commons.codec.binary.Base64"
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_5
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7
const/4 v1, 0x1
:goto_6
return v1
:catch_7
move-exception v0
const/4 v1, 0x0
goto :goto_6
.end method
.method public encode([B)Ljava/lang/String;
.registers 6
:try_start_0
new-instance v1, Ljava/lang/String;
invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B
move-result-object v2
const-string v3, "UTF-8"
invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c
return-object v1
:catch_c
move-exception v0
new-instance v1, Lorg/scribe/exceptions/OAuthSignatureException;
const-string v2, "Can\'t perform base64 encoding"
invoke-direct {v1, v2, v0}, Lorg/scribe/exceptions/OAuthSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method public getType()Ljava/lang/String;
.registers 2
const-string v0, "CommonsCodec"
return-object v0
.end method