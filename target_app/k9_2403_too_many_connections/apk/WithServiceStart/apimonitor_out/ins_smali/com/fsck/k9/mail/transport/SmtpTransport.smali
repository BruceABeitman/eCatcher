.class public Lcom/fsck/k9/mail/transport/SmtpTransport;
.super Lcom/fsck/k9/mail/Transport;
.source "SmtpTransport.java"
.field public static final CONNECTION_SECURITY_NONE:I = 0x0
.field public static final CONNECTION_SECURITY_SSL_OPTIONAL:I = 0x4
.field public static final CONNECTION_SECURITY_SSL_REQUIRED:I = 0x3
.field public static final CONNECTION_SECURITY_TLS_OPTIONAL:I = 0x1
.field public static final CONNECTION_SECURITY_TLS_REQUIRED:I = 0x2
.field  mAuthType:Ljava/lang/String;
.field  mConnectionSecurity:I
.field  mHost:Ljava/lang/String;
.field  mIn:Lcom/fsck/k9/PeekableInputStream;
.field  mOut:Ljava/io/OutputStream;
.field  mPassword:Ljava/lang/String;
.field  mPort:I
.field  mSecure:Z
.field  mSocket:Ljava/net/Socket;
.field  mUsername:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 12
const/16 v9, 0x1d1
const/4 v8, 0x0
const/16 v5, 0x19
const/4 v7, 0x2
const/4 v6, 0x1
invoke-direct {p0}, Lcom/fsck/k9/mail/Transport;-><init>()V
:try_start_a
new-instance v1, Ljava/net/URI;
invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
:try_end_f
.catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_f} :catch_55
invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v0
const-string v4, "smtp"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_5f
iput v8, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
iput v5, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I
:goto_1f
invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mHost:Ljava/lang/String;
invoke-virtual {v1}, Ljava/net/URI;->getPort()I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_32
invoke-virtual {v1}, Ljava/net/URI;->getPort()I
move-result v4
iput v4, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I
:cond_32
invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_54
invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;
move-result-object v4
const-string v5, ":"
invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
aget-object v4, v3, v8
iput-object v4, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;
array-length v4, v3
if-le v4, v6, :cond_4d
aget-object v4, v3, v6
iput-object v4, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;
:cond_4d
array-length v4, v3
if-le v4, v7, :cond_54
aget-object v4, v3, v7
iput-object v4, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mAuthType:Ljava/lang/String;
:cond_54
return-void
:catch_55
move-exception v4
move-object v2, v4
new-instance v4, Lcom/fsck/k9/mail/MessagingException;
const-string v5, "Invalid SmtpTransport URI"
invoke-direct {v4, v5, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v4
:cond_5f
const-string v4, "smtp+tls"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6c
iput v6, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
iput v5, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I
goto :goto_1f
:cond_6c
const-string v4, "smtp+tls+"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_79
iput v7, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
iput v5, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I
goto :goto_1f
:cond_79
const-string v4, "smtp+ssl+"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_87
const/4 v4, 0x3
iput v4, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
iput v9, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I
goto :goto_1f
:cond_87
const-string v4, "smtp+ssl"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_95
const/4 v4, 0x4
iput v4, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
iput v9, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I
goto :goto_1f
:cond_95
new-instance v4, Lcom/fsck/k9/mail/MessagingException;
const-string v5, "Unsupported protocol"
invoke-direct {v4, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v4
.end method
.method private checkLine(Ljava/lang/String;)V
.registers 5
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
const/4 v2, 0x1
if-ge v1, v2, :cond_f
new-instance v1, Lcom/fsck/k9/mail/MessagingException;
const-string v2, "SMTP response is 0 length"
invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v1
:cond_f
const/4 v1, 0x0
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x34
if-eq v0, v1, :cond_1c
const/16 v1, 0x35
if-ne v0, v1, :cond_22
:cond_1c
new-instance v1, Lcom/fsck/k9/mail/MessagingException;
invoke-direct {v1, p1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v1
:cond_22
return-void
.end method
.method private executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
.registers 8
const/4 v5, 0x4
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
if-eqz p1, :cond_b
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->writeLine(Ljava/lang/String;)V
:cond_b
const/4 v0, 0x0
:cond_c
invoke-direct {p0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->readLine()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->checkLine(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
if-le v3, v5, :cond_2a
invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v3, 0x3
invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x2d
if-ne v3, v4, :cond_2d
const/4 v0, 0x1
:cond_2a
:goto_2a
if-nez v0, :cond_c
return-object v2
:cond_2d
const/4 v0, 0x0
goto :goto_2a
.end method
.method private readLine()Ljava/lang/String;
.registers 7
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
:cond_5
:goto_5
iget-object v3, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mIn:Lcom/fsck/k9/PeekableInputStream;
invoke-virtual {v3}, Lcom/fsck/k9/PeekableInputStream;->read()I
move-result v0
const/4 v3, -0x1
if-eq v0, v3, :cond_18
int-to-char v3, v0
const/16 v4, 0xd
if-eq v3, v4, :cond_5
int-to-char v3, v0
const/16 v4, 0xa
if-ne v3, v4, :cond_39
:cond_18
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v3, :cond_38
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "SMTP <<< "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_38
return-object v1
:cond_39
int-to-char v3, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_5
.end method
.method private saslAuthCramMD5(Ljava/lang/String;Ljava/lang/String;)V
.registers 26
const-string v20, "AUTH CRAM-MD5"
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v17
invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I
move-result v20
const/16 v21, 0x1
move/from16 v0, v20
move/from16 v1, v21
if-eq v0, v1, :cond_1e
new-instance v20, Lcom/fsck/k9/mail/AuthenticationFailedException;
const-string v21, "Unable to negotiate CRAM-MD5"
invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V
throw v20
:cond_1e
const/16 v20, 0x0
move-object/from16 v0, v17
move/from16 v1, v20
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
const-string v20, "US-ASCII"
move-object v0, v7
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v20
invoke-static/range {v20 .. v20}, Lcom/fsck/k9/codec/binary/Base64;->decodeBase64([B)[B
move-result-object v13
const/16 v20, 0x40
move/from16 v0, v20
new-array v0, v0, [B
move-object v10, v0
const/16 v20, 0x40
move/from16 v0, v20
new-array v0, v0, [B
move-object v15, v0
const-string v20, "US-ASCII"
move-object/from16 v0, p2
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v19
:try_start_4f
const-string v20, "MD5"
invoke-static/range {v20 .. v20}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
:try_end_54
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_4f .. :try_end_54} :catch_ab
move-result-object v11
move-object/from16 v0, v19
array-length v0, v0
move/from16 v20, v0
const/16 v21, 0x40
move/from16 v0, v20
move/from16 v1, v21
if-le v0, v1, :cond_69
move-object v0, v11
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v19
:cond_69
const/16 v20, 0x0
const/16 v21, 0x0
move-object/from16 v0, v19
array-length v0, v0
move/from16 v22, v0
move-object/from16 v0, v19
move/from16 v1, v20
move-object v2, v10
move/from16 v3, v21
move/from16 v4, v22
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/16 v20, 0x0
const/16 v21, 0x0
move-object/from16 v0, v19
array-length v0, v0
move/from16 v22, v0
move-object/from16 v0, v19
move/from16 v1, v20
move-object v2, v15
move/from16 v3, v21
move/from16 v4, v22
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v9, 0x0
:goto_94
move-object v0, v10
array-length v0, v0
move/from16 v20, v0
move v0, v9
move/from16 v1, v20
if-ge v0, v1, :cond_b6
aget-byte v20, v10, v9
xor-int/lit8 v20, v20, 0x36
move/from16 v0, v20
int-to-byte v0, v0
move/from16 v20, v0
aput-byte v20, v10, v9
add-int/lit8 v9, v9, 0x1
goto :goto_94
:catch_ab
move-exception v20
move-object/from16 v14, v20
new-instance v20, Lcom/fsck/k9/mail/AuthenticationFailedException;
const-string v21, "MD5 Not Available."
invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V
throw v20
:cond_b6
const/4 v9, 0x0
:goto_b7
move-object v0, v15
array-length v0, v0
move/from16 v20, v0
move v0, v9
move/from16 v1, v20
if-ge v0, v1, :cond_ce
aget-byte v20, v15, v9
xor-int/lit8 v20, v20, 0x5c
move/from16 v0, v20
int-to-byte v0, v0
move/from16 v20, v0
aput-byte v20, v15, v9
add-int/lit8 v9, v9, 0x1
goto :goto_b7
:cond_ce
invoke-virtual {v11, v10}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v11, v13}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v8
invoke-virtual {v11, v15}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v11, v8}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v18
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, " "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
new-instance v21, Ljava/lang/String;
invoke-static/range {v18 .. v18}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C
move-result-object v22
invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([C)V
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
const-string v20, "US-ASCII"
move-object/from16 v0, v16
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v20
invoke-static/range {v20 .. v20}, Lcom/fsck/k9/codec/binary/Base64;->encodeBase64([B)[B
move-result-object v5
new-instance v6, Ljava/lang/String;
const-string v20, "US-ASCII"
move-object v0, v6
move-object v1, v5
move-object/from16 v2, v20
invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_start_119
move-object/from16 v0, p0
move-object v1, v6
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
:try_end_11f
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_119 .. :try_end_11f} :catch_120
return-void
:catch_120
move-exception v12
new-instance v20, Lcom/fsck/k9/mail/AuthenticationFailedException;
const-string v21, "Unable to negotiate MD5 CRAM"
invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V
throw v20
.end method
.method private saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v3, 0x1
:try_start_1
const-string v1, "AUTH LOGIN"
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
new-instance v1, Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-static {v2}, Lcom/fsck/k9/codec/binary/Base64;->encodeBase64([B)[B
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
new-instance v1, Ljava/lang/String;
invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-static {v2}, Lcom/fsck/k9/codec/binary/Base64;->encodeBase64([B)[B
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
:try_end_26
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_26} :catch_27
return-void
:catch_27
move-exception v1
move-object v0, v1
invoke-virtual {v0}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v3, :cond_62
invoke-virtual {v0}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v2, 0x33
if-ne v1, v2, :cond_62
new-instance v1, Lcom/fsck/k9/mail/AuthenticationFailedException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "AUTH LOGIN failed ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V
throw v1
:cond_62
throw v0
.end method
.method private saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const/4 v4, 0x1
const-string v5, "\u0000"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "\u0000"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\u0000"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v0
new-instance v2, Lcom/fsck/k9/codec/binary/Base64;
invoke-direct {v2}, Lcom/fsck/k9/codec/binary/Base64;-><init>()V
invoke-virtual {v2, v0}, Lcom/fsck/k9/codec/binary/Base64;->encode([B)[B
move-result-object v0
:try_start_2d
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "AUTH PLAIN "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
:try_end_48
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2d .. :try_end_48} :catch_49
return-void
:catch_49
move-exception v2
move-object v1, v2
invoke-virtual {v1}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-le v2, v4, :cond_84
invoke-virtual {v1}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v3, 0x33
if-ne v2, v3, :cond_84
new-instance v2, Lcom/fsck/k9/mail/AuthenticationFailedException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "AUTH PLAIN failed ("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V
throw v2
:cond_84
throw v1
.end method
.method private writeLine(Ljava/lang/String;)V
.registers 5
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_1c
const-string v0, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "SMTP >>> "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c
iget-object v0, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
iget-object v0, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;
const/16 v1, 0xd
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;
const/16 v1, 0xa
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
return-void
.end method
.method public close()V
.registers 3
const/4 v1, 0x0
:try_start_1
const-string v0, "QUIT"
invoke-direct {p0, v0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
:try_start_6
:goto_6
:try_end_6
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_22
iget-object v0, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mIn:Lcom/fsck/k9/PeekableInputStream;
invoke-virtual {v0}, Lcom/fsck/k9/PeekableInputStream;->close()V
:try_start_b
:goto_b
:try_end_b
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_20
iget-object v0, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:try_start_10
:try_end_10
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1e
:goto_10
iget-object v0, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_1c
:goto_15
iput-object v1, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mIn:Lcom/fsck/k9/PeekableInputStream;
iput-object v1, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;
iput-object v1, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
return-void
:catch_1c
move-exception v0
goto :goto_15
:catch_1e
move-exception v0
goto :goto_10
:catch_20
move-exception v0
goto :goto_b
:catch_22
move-exception v0
goto :goto_6
.end method
.method public open()V
.registers 23
:try_start_0
new-instance v15, Ljava/net/InetSocketAddress;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mHost:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I
move/from16 v18, v0
move-object v0, v15
move-object/from16 v1, v17
move/from16 v2, v18
invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
move-object/from16 v0, p0
iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
move/from16 v17, v0
const/16 v18, 0x3
move/from16 v0, v17
move/from16 v1, v18
if-eq v0, v1, :cond_32
move-object/from16 v0, p0
iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
move/from16 v17, v0
const/16 v18, 0x4
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_247
:cond_32
const-string v17, "TLS"
invoke-static/range {v17 .. v17}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v16
move-object/from16 v0, p0
iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
move/from16 v17, v0
const/16 v18, 0x3
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_241
const/16 v17, 0x1
move/from16 v14, v17
:goto_4a
const/16 v17, 0x0
const/16 v18, 0x1
move/from16 v0, v18
new-array v0, v0, [Ljavax/net/ssl/TrustManager;
move-object/from16 v18, v0
const/16 v19, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mHost:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v20
move v1, v14
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;
move-result-object v20
aput-object v20, v18, v19
new-instance v19, Ljava/security/SecureRandom;
invoke-direct/range {v19 .. v19}, Ljava/security/SecureRandom;-><init>()V
invoke-virtual/range {v16 .. v19}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
invoke-virtual/range {v16 .. v16}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
move-object/from16 v17, v0
const/16 v18, 0x2710
move-object/from16 v0, v17
move-object v1, v15
move/from16 v2, v18
invoke-static {v0, v1, v2}, Ldroidbox/java/net/Socket;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
const/16 v17, 0x1
move/from16 v0, v17
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSecure:Z
:goto_93
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
move-object/from16 v17, v0
const v18, 0x493e0
invoke-virtual/range {v17 .. v18}, Ljava/net/Socket;->setSoTimeout(I)V
new-instance v17, Lcom/fsck/k9/PeekableInputStream;
new-instance v18, Ljava/io/BufferedInputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v19
const/16 v20, 0x400
invoke-direct/range {v18 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
invoke-direct/range {v17 .. v18}, Lcom/fsck/k9/PeekableInputStream;-><init>(Ljava/io/InputStream;)V
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mIn:Lcom/fsck/k9/PeekableInputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;
const/16 v17, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
const-string v11, "localhost.localdomain"
:try_end_d6
.catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_d6} :catch_264
.catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_d6} :catch_286
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_d6} :catch_2b2
:try_start_d6
invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
move-result-object v10
invoke-virtual {v10}, Ljava/net/InetAddress;->isLoopbackAddress()Z
move-result v17
if-nez v17, :cond_e4
invoke-virtual {v10}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
:try_end_e3
.catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e3} :catch_276
.catch Ljavax/net/ssl/SSLException; {:try_start_d6 .. :try_end_e3} :catch_264
.catch Ljava/security/GeneralSecurityException; {:try_start_d6 .. :try_end_e3} :catch_286
.catch Ljava/io/IOException; {:try_start_d6 .. :try_end_e3} :catch_2b2
move-result-object v11
:cond_e4
:goto_e4
:try_start_e4
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "EHLO "
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
move-object v1, v11
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v13
move-object/from16 v0, p0
iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
move/from16 v17, v0
const/16 v18, 0x1
move/from16 v0, v17
move/from16 v1, v18
if-eq v0, v1, :cond_11e
move-object/from16 v0, p0
iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
move/from16 v17, v0
const/16 v18, 0x2
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_1e1
:cond_11e
const-string v17, "STARTTLS"
move-object v0, v13
move-object/from16 v1, v17
invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_29c
const-string v17, "STARTTLS"
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
const-string v17, "TLS"
invoke-static/range {v17 .. v17}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v16
move-object/from16 v0, p0
iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
move/from16 v17, v0
const/16 v18, 0x2
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_296
const/16 v17, 0x1
move/from16 v14, v17
:goto_14a
const/16 v17, 0x0
const/16 v18, 0x1
move/from16 v0, v18
new-array v0, v0, [Ljavax/net/ssl/TrustManager;
move-object/from16 v18, v0
const/16 v19, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mHost:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v20
move v1, v14
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;
move-result-object v20
aput-object v20, v18, v19
new-instance v19, Ljava/security/SecureRandom;
invoke-direct/range {v19 .. v19}, Ljava/security/SecureRandom;-><init>()V
invoke-virtual/range {v16 .. v19}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
invoke-virtual/range {v16 .. v16}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mHost:Ljava/lang/String;
move-object/from16 v19, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I
move/from16 v20, v0
const/16 v21, 0x1
invoke-virtual/range {v17 .. v21}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
new-instance v17, Lcom/fsck/k9/PeekableInputStream;
new-instance v18, Ljava/io/BufferedInputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v19
const/16 v20, 0x400
invoke-direct/range {v18 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
invoke-direct/range {v17 .. v18}, Lcom/fsck/k9/PeekableInputStream;-><init>(Ljava/io/InputStream;)V
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mIn:Lcom/fsck/k9/PeekableInputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;
const/16 v17, 0x1
move/from16 v0, v17
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSecure:Z
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "EHLO "
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
move-object v1, v11
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v13
:cond_1e1
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v3, 0x0
invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:cond_1e8
:goto_1e8
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v17
if-eqz v17, :cond_2c2
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v12
check-cast v12, Ljava/lang/String;
const-string v17, ".*AUTH.*LOGIN.*$"
move-object v0, v12
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v17
const/16 v18, 0x1
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_206
const/4 v4, 0x1
:cond_206
const-string v17, ".*AUTH.*PLAIN.*$"
move-object v0, v12
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v17
const/16 v18, 0x1
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_218
const/4 v5, 0x1
:cond_218
const-string v17, ".*AUTH.*CRAM-MD5.*$"
move-object v0, v12
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v17
const/16 v18, 0x1
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_1e8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mAuthType:Ljava/lang/String;
move-object/from16 v17, v0
if-eqz v17, :cond_1e8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mAuthType:Ljava/lang/String;
move-object/from16 v17, v0
const-string v18, "CRAM_MD5"
invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_1e8
const/4 v3, 0x1
goto :goto_1e8
:cond_241
const/16 v17, 0x0
move/from16 v14, v17
goto/16 :goto_4a
:cond_247
new-instance v17, Ljava/net/Socket;
invoke-direct/range {v17 .. v17}, Ljava/net/Socket;-><init>()V
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;
move-object/from16 v17, v0
const/16 v18, 0x2710
move-object/from16 v0, v17
move-object v1, v15
move/from16 v2, v18
invoke-static {v0, v1, v2}, Ldroidbox/java/net/Socket;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
:try_end_262
.catch Ljavax/net/ssl/SSLException; {:try_start_e4 .. :try_end_262} :catch_264
.catch Ljava/security/GeneralSecurityException; {:try_start_e4 .. :try_end_262} :catch_286
.catch Ljava/io/IOException; {:try_start_e4 .. :try_end_262} :catch_2b2
goto/16 :goto_93
:catch_264
move-exception v17
move-object/from16 v6, v17
new-instance v17, Lcom/fsck/k9/mail/CertificateValidationException;
invoke-virtual {v6}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v17
move-object/from16 v1, v18
move-object v2, v6
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v17
:catch_276
move-exception v17
move-object/from16 v6, v17
:try_start_279
sget-boolean v17, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v17, :cond_e4
const-string v17, "k9"
const-string v18, "Unable to look up localhost"
invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_end_284
.catch Ljavax/net/ssl/SSLException; {:try_start_279 .. :try_end_284} :catch_264
.catch Ljava/security/GeneralSecurityException; {:try_start_279 .. :try_end_284} :catch_286
.catch Ljava/io/IOException; {:try_start_279 .. :try_end_284} :catch_2b2
goto/16 :goto_e4
:catch_286
move-exception v17
move-object/from16 v7, v17
new-instance v17, Lcom/fsck/k9/mail/MessagingException;
const-string v18, "Unable to open connection to SMTP server due to security error."
move-object/from16 v0, v17
move-object/from16 v1, v18
move-object v2, v7
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v17
:cond_296
const/16 v17, 0x0
move/from16 v14, v17
goto/16 :goto_14a
:cond_29c
:try_start_29c
move-object/from16 v0, p0
iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I
move/from16 v17, v0
const/16 v18, 0x2
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_1e1
new-instance v17, Lcom/fsck/k9/mail/MessagingException;
const-string v18, "TLS not supported but required"
invoke-direct/range {v17 .. v18}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v17
:try_end_2b2
.catch Ljavax/net/ssl/SSLException; {:try_start_29c .. :try_end_2b2} :catch_264
.catch Ljava/security/GeneralSecurityException; {:try_start_29c .. :try_end_2b2} :catch_286
.catch Ljava/io/IOException; {:try_start_29c .. :try_end_2b2} :catch_2b2
:catch_2b2
move-exception v17
move-object/from16 v9, v17
new-instance v17, Lcom/fsck/k9/mail/MessagingException;
const-string v18, "Unable to open connection to SMTP server."
move-object/from16 v0, v17
move-object/from16 v1, v18
move-object v2, v9
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v17
:try_start_2c2
:cond_2c2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;
move-object/from16 v17, v0
if-eqz v17, :cond_301
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
move-result v17
if-lez v17, :cond_301
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;
move-object/from16 v17, v0
if-eqz v17, :cond_301
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
move-result v17
if-lez v17, :cond_301
if-eqz v3, :cond_302
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;
move-object/from16 v18, v0
move-object/from16 v0, p0
move-object/from16 v1, v17
move-object/from16 v2, v18
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/transport/SmtpTransport;->saslAuthCramMD5(Ljava/lang/String;Ljava/lang/String;)V
:cond_301
:goto_301
return-void
:cond_302
if-eqz v5, :cond_31a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;
move-object/from16 v18, v0
move-object/from16 v0, p0
move-object/from16 v1, v17
move-object/from16 v2, v18
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/transport/SmtpTransport;->saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_301
:cond_31a
if-eqz v4, :cond_332
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;
move-object/from16 v18, v0
move-object/from16 v0, p0
move-object/from16 v1, v17
move-object/from16 v2, v18
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/transport/SmtpTransport;->saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_301
:cond_332
new-instance v17, Lcom/fsck/k9/mail/MessagingException;
const-string v18, "No valid authentication mechanism found."
invoke-direct/range {v17 .. v18}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v17
:try_end_33a
.catch Ljavax/net/ssl/SSLException; {:try_start_2c2 .. :try_end_33a} :catch_264
.catch Ljava/security/GeneralSecurityException; {:try_start_2c2 .. :try_end_33a} :catch_286
.catch Ljava/io/IOException; {:try_start_2c2 .. :try_end_33a} :catch_2b2
.end method
.method public sendMessage(Lcom/fsck/k9/mail/Message;)V
.registers 14
const-string v8, "RCPT TO: <"
const-string v8, ">"
invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->close()V
invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->open()V
invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;
move-result-object v3
const/4 v7, 0x0
:try_start_f
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "MAIL FROM: <"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const/4 v9, 0x0
aget-object v9, v3, v9
invoke-virtual {v9}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ">"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {p0, v8}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;
invoke-virtual {p1, v8}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;
move-result-object v1
array-length v5, v1
const/4 v4, 0x0
:goto_3a
if-ge v4, v5, :cond_61
aget-object v0, v1, v4
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "RCPT TO: <"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ">"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {p0, v8}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
add-int/lit8 v4, v4, 0x1
goto :goto_3a
:cond_61
sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;
invoke-virtual {p1, v8}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;
move-result-object v1
array-length v5, v1
const/4 v4, 0x0
:goto_69
if-ge v4, v5, :cond_90
aget-object v0, v1, v4
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "RCPT TO: <"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ">"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {p0, v8}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
add-int/lit8 v4, v4, 0x1
goto :goto_69
:cond_90
sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;
invoke-virtual {p1, v8}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;
move-result-object v1
array-length v5, v1
const/4 v4, 0x0
:goto_98
if-ge v4, v5, :cond_bf
aget-object v0, v1, v4
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "RCPT TO: <"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ">"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {p0, v8}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
add-int/lit8 v4, v4, 0x1
goto :goto_98
:cond_bf
sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;
const/4 v9, 0x0
invoke-virtual {p1, v8, v9}, Lcom/fsck/k9/mail/Message;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
const-string v8, "DATA"
invoke-direct {p0, v8}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
new-instance v8, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;
new-instance v9, Ljava/io/BufferedOutputStream;
iget-object v10, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;
const/16 v11, 0x400
invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
invoke-direct {v8, v9}, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {p1, v8}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V
const/4 v7, 0x1
const-string v8, "\r\n."
invoke-direct {p0, v8}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
:try_end_e1
.catchall {:try_start_f .. :try_end_e1} :catchall_f2
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_e1} :catch_e5
invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->close()V
return-void
:catch_e5
move-exception v8
move-object v2, v8
:try_start_e7
new-instance v6, Lcom/fsck/k9/mail/MessagingException;
const-string v8, "Unable to send message"
invoke-direct {v6, v8, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {v6, v7}, Lcom/fsck/k9/mail/MessagingException;->setPermanentFailure(Z)V
throw v6
:try_end_f2
.catchall {:try_start_e7 .. :try_end_f2} :catchall_f2
:catchall_f2
move-exception v8
invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->close()V
throw v8
.end method