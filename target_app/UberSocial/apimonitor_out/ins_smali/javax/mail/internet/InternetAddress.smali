.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "SourceFile"
.implements Ljava/lang/Cloneable;
.field private static final rfc822phrase:Ljava/lang/String; = null
.field private static final serialVersionUID:J = -0x6830565bb828acb7L
.field private static final specialsNoDot:Ljava/lang/String; = "()<>,;:\\\"[]@"
.field private static final specialsNoDotNoAt:Ljava/lang/String; = "()<>,;:\\\"[]"
.field protected address:Ljava/lang/String;
.field protected encodedPersonal:Ljava/lang/String;
.field protected personal:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x0
const-string v0, "()<>@,;:\\\"\t .[]"
const/16 v1, 0x20
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v0
const/16 v1, 0x9
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v0
sput-object v0, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljavax/mail/Address;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljavax/mail/Address;-><init>()V
invoke-static {p1, v3}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
move-result-object v0
array-length v1, v0
if-eq v1, v3, :cond_14
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v1, "Illegal address"
invoke-direct {v0, v1, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_14
aget-object v1, v0, v2
iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
aget-object v1, v0, v2
iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
aget-object v0, v0, v2
iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljavax/mail/Address;-><init>()V
iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
invoke-virtual {p0, p2, p3}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Z)V
.registers 5
const/4 v1, 0x1
invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
if-eqz p2, :cond_b
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V
:cond_b
return-void
.end method
.method private static checkAddress(Ljava/lang/String;ZZ)V
.registers 7
const/16 v3, 0x40
const/4 v0, 0x0
const/16 v1, 0x22
invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-ltz v1, :cond_c
:cond_b
return-void
:cond_c
if-eqz p1, :cond_16
:goto_e
const-string v1, ",:"
invoke-static {p0, v1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
move-result v1
if-gez v1, :cond_26
:cond_16
:goto_16
invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I
move-result v2
if-ltz v2, :cond_6c
if-ne v2, v0, :cond_42
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v1, "Missing local name"
invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_26
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
if-eq v0, v3, :cond_34
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v1, "Illegal route-addr"
invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_34
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v2, 0x3a
if-ne v0, v2, :cond_3f
add-int/lit8 v0, v1, 0x1
goto :goto_16
:cond_3f
add-int/lit8 v0, v1, 0x1
goto :goto_e
:cond_42
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ne v2, v1, :cond_52
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v1, "Missing domain"
invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_52
invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
add-int/lit8 v0, v2, 0x1
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:goto_5c
const-string v2, " \t\n\r"
invoke-static {p0, v2}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
move-result v2
if-ltz v2, :cond_79
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v1, "Illegal whitespace in address"
invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_6c
if-eqz p2, :cond_76
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v1, "Missing final \'@domain\'"
invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_76
const/4 v0, 0x0
move-object v1, p0
goto :goto_5c
:cond_79
const-string v2, "()<>,;:\\\"[]@"
invoke-static {v1, v2}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_89
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v1, "Illegal character in local name"
invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_89
if-eqz v0, :cond_b
const/16 v1, 0x5b
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-gez v1, :cond_b
const-string v1, "()<>,;:\\\"[]@"
invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-ltz v0, :cond_b
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v1, "Illegal character in domain"
invoke-direct {v0, v1, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
throw v0
.end method
.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
.registers 6
const/4 v0, 0x0
if-nez p0, :cond_47
:try_start_3
const-string v1, "user.name"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
move-result-object v1
invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
move-result-object v1
move-object v3, v2
move-object v2, v1
move-object v1, v0
:cond_14
:goto_14
if-nez v1, :cond_90
if-eqz v3, :cond_90
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
if-eqz v4, :cond_90
if-eqz v2, :cond_90
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v4
if-eqz v4, :cond_90
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "@"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
move-object v2, v1
:goto_3e
if-eqz v2, :cond_46
new-instance v1, Ljavax/mail/internet/InternetAddress;
invoke-direct {v1, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
move-object v0, v1
:goto_46
:cond_46
return-object v0
:cond_47
const-string v1, "mail.from"
invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_92
const-string v2, "mail.user"
invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_5d
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_63
:cond_5d
const-string v2, "user.name"
invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
:cond_63
if-eqz v3, :cond_6b
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_71
:cond_6b
const-string v2, "user.name"
invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
:cond_71
const-string v2, "mail.host"
invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_7f
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v4
if-nez v4, :cond_14
:cond_7f
invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
move-result-object v4
if-eqz v4, :cond_14
invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
:try_end_88
.catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_88} :catch_8e
.catch Ljavax/mail/internet/AddressException; {:try_start_3 .. :try_end_88} :catch_8c
.catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_88} :catch_8a
move-result-object v2
goto :goto_14
:catch_8a
move-exception v1
goto :goto_46
:catch_8c
move-exception v1
goto :goto_46
:catch_8e
move-exception v1
goto :goto_46
:cond_90
move-object v2, v1
goto :goto_3e
:cond_92
move-object v2, v0
move-object v3, v0
goto :goto_14
.end method
.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
.registers 7
const/4 v1, -0x1
:try_start_1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
move v0, p2
:goto_6
if-lt v0, v2, :cond_a
move v0, v1
:goto_9
:cond_9
return v0
:cond_a
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I
:try_end_11
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_11} :catch_17
move-result v3
if-gez v3, :cond_9
add-int/lit8 v0, v0, 0x1
goto :goto_6
:catch_17
move-exception v0
move v0, v1
goto :goto_9
.end method
.method private isSimple()Z
.registers 3
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
if-eqz v0, :cond_10
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
const-string v1, "()<>,;:\\\"[]"
invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-ltz v0, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
const/4 v0, 0x1
goto :goto_f
.end method
.method private static lengthOfFirstSegment(Ljava/lang/String;)I
.registers 3
const-string v0, "\r\n"
invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_a
:goto_9
return v0
:cond_a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
goto :goto_9
.end method
.method private static lengthOfLastSegment(Ljava/lang/String;I)I
.registers 4
const-string v0, "\r\n"
invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_12
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
sub-int v0, v1, v0
add-int/lit8 v0, v0, -0x2
:goto_11
return v0
:cond_12
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
add-int/2addr v0, p1
goto :goto_11
.end method
.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
.registers 2
const/4 v0, 0x1
invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
move-result-object v0
return-object v0
.end method
.method public static parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
move-result-object v0
return-object v0
.end method
.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
.registers 17
const/4 v0, -0x1
const/4 v3, -0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v9
const/4 v7, 0x0
const/4 v6, 0x0
const/4 v5, 0x0
new-instance v10, Ljava/util/Vector;
invoke-direct {v10}, Ljava/util/Vector;-><init>()V
const/4 v2, -0x1
const/4 v1, 0x0
move v4, v2
:goto_11
if-lt v1, v9, :cond_53
if-ltz v4, :cond_49
const/4 v7, -0x1
if-ne v2, v7, :cond_244
:goto_18
invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
if-nez v5, :cond_26
if-nez p1, :cond_26
if-eqz p2, :cond_224
:cond_26
if-nez p1, :cond_2a
if-nez p2, :cond_2e
:cond_2a
const/4 v2, 0x0
invoke-static {v1, v6, v2}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V
:cond_2e
new-instance v2, Ljavax/mail/internet/InternetAddress;
invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V
invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V
if-ltz v0, :cond_46
invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, v2, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
:cond_46
invoke-virtual {v10, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_49
invoke-virtual {v10}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Ljavax/mail/internet/InternetAddress;
invoke-virtual {v10, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-object v0
:cond_53
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v8
sparse-switch v8, :sswitch_data_266
const/4 v8, -0x1
if-ne v4, v8, :cond_247
move v4, v0
move v0, v5
move v5, v1
move v12, v6
move v6, v2
move v2, v7
move v7, v1
move v1, v12
:goto_65
add-int/lit8 v5, v5, 0x1
move v12, v0
move v0, v4
move v4, v7
move v7, v2
move v2, v6
move v6, v1
move v1, v5
move v5, v12
goto :goto_11
:sswitch_70
const/4 v5, 0x1
if-ltz v4, :cond_263
const/4 v8, -0x1
if-ne v2, v8, :cond_263
move v8, v1
:goto_77
const/4 v2, -0x1
if-ne v0, v2, :cond_7c
add-int/lit8 v0, v1, 0x1
:cond_7c
add-int/lit8 v2, v1, 0x1
const/4 v1, 0x1
:goto_7f
if-ge v2, v9, :cond_83
if-gtz v1, :cond_8d
:cond_83
if-lez v1, :cond_a0
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v1, "Missing \')\'"
invoke-direct {v0, v1, p0, v2}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v0
:cond_8d
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v11
sparse-switch v11, :sswitch_data_29c
:goto_94
add-int/lit8 v2, v2, 0x1
goto :goto_7f
:sswitch_97
add-int/lit8 v2, v2, 0x1
goto :goto_94
:sswitch_9a
add-int/lit8 v1, v1, 0x1
goto :goto_94
:sswitch_9d
add-int/lit8 v1, v1, -0x1
goto :goto_94
:cond_a0
add-int/lit8 v1, v2, -0x1
const/4 v2, -0x1
if-ne v3, v2, :cond_25a
move v2, v7
move v3, v1
move v7, v4
move v4, v0
move v0, v5
move v5, v1
move v1, v6
move v6, v8
goto :goto_65
:sswitch_ae
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v2, "Missing \'(\'"
invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v0
:sswitch_b6
const/4 v5, 0x1
if-eqz v6, :cond_c1
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v2, "Extra route-addr"
invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v0
:cond_c1
if-nez v7, :cond_256
if-ltz v4, :cond_253
move v0, v1
:goto_c6
add-int/lit8 v2, v1, 0x1
move v12, v4
move v4, v2
move v2, v12
:goto_cb
const/4 v3, 0x0
add-int/lit8 v1, v1, 0x1
move v12, v3
move v3, v1
move v1, v12
:goto_d1
if-lt v3, v9, :cond_df
:cond_d3
if-lt v3, v9, :cond_fd
if-eqz v1, :cond_f5
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v1, "Missing \'\"\'"
invoke-direct {v0, v1, p0, v3}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v0
:cond_df
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v6
sparse-switch v6, :sswitch_data_2aa
:goto_e6
add-int/lit8 v3, v3, 0x1
goto :goto_d1
:sswitch_e9
add-int/lit8 v3, v3, 0x1
goto :goto_e6
:sswitch_ec
if-eqz v1, :cond_f0
const/4 v1, 0x0
goto :goto_e6
:cond_f0
const/4 v1, 0x1
goto :goto_e6
:sswitch_f2
if-eqz v1, :cond_d3
goto :goto_e6
:cond_f5
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v1, "Missing \'>\'"
invoke-direct {v0, v1, p0, v3}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v0
:cond_fd
const/4 v1, 0x1
move v6, v3
move v12, v7
move v7, v4
move v4, v2
move v2, v12
move v13, v3
move v3, v0
move v0, v5
move v5, v13
goto/16 :goto_65
:sswitch_109
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v2, "Missing \'<\'"
invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v0
:sswitch_111
const/4 v5, 0x1
const/4 v8, -0x1
if-ne v4, v8, :cond_116
move v4, v1
:cond_116
add-int/lit8 v1, v1, 0x1
:goto_118
if-lt v1, v9, :cond_124
:sswitch_11a
if-lt v1, v9, :cond_247
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v2, "Missing \'\"\'"
invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v0
:cond_124
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v8
sparse-switch v8, :sswitch_data_2b8
:goto_12b
add-int/lit8 v1, v1, 0x1
goto :goto_118
:sswitch_12e
add-int/lit8 v1, v1, 0x1
goto :goto_12b
:sswitch_131
const/4 v5, 0x1
add-int/lit8 v1, v1, 0x1
:goto_134
if-lt v1, v9, :cond_140
:pswitch_136
if-lt v1, v9, :cond_247
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v2, "Missing \']\'"
invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v0
:cond_140
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v8
packed-switch v8, :pswitch_data_2c2
:goto_147
add-int/lit8 v1, v1, 0x1
goto :goto_134
:pswitch_14a
add-int/lit8 v1, v1, 0x1
goto :goto_147
:sswitch_14d
const/4 v8, -0x1
if-ne v4, v8, :cond_15d
const/4 v4, 0x0
const/4 v2, 0x0
const/4 v5, -0x1
move v6, v5
move v12, v4
move v4, v0
move v0, v2
move v2, v7
move v7, v5
move v5, v1
move v1, v12
goto/16 :goto_65
:cond_15d
if-eqz v7, :cond_16a
const/4 v6, 0x0
move v12, v5
move v5, v1
move v1, v6
move v6, v2
move v2, v7
move v7, v4
move v4, v0
move v0, v12
goto/16 :goto_65
:cond_16a
const/4 v8, -0x1
if-ne v2, v8, :cond_16e
move v2, v1
:cond_16e
invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
if-nez v5, :cond_17c
if-nez p1, :cond_17c
if-eqz p2, :cond_1ae
:cond_17c
if-nez p1, :cond_180
if-nez p2, :cond_184
:cond_180
const/4 v4, 0x0
invoke-static {v2, v6, v4}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V
:cond_184
new-instance v4, Ljavax/mail/internet/InternetAddress;
invoke-direct {v4}, Ljavax/mail/internet/InternetAddress;-><init>()V
invoke-virtual {v4, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V
if-ltz v0, :cond_19e
invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, v4, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
const/4 v3, -0x1
move v0, v3
:cond_19e
invoke-virtual {v10, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_1a1
const/4 v4, 0x0
const/4 v2, 0x0
const/4 v5, -0x1
move v6, v5
move v12, v4
move v4, v0
move v0, v2
move v2, v7
move v7, v5
move v5, v1
move v1, v12
goto/16 :goto_65
:cond_1ae
new-instance v4, Ljava/util/StringTokenizer;
invoke-direct {v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V
:goto_1b3
invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
move-result v2
if-eqz v2, :cond_1a1
invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v2
const/4 v5, 0x0
const/4 v6, 0x0
invoke-static {v2, v5, v6}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V
new-instance v5, Ljavax/mail/internet/InternetAddress;
invoke-direct {v5}, Ljavax/mail/internet/InternetAddress;-><init>()V
invoke-virtual {v5, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V
invoke-virtual {v10, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_1b3
:sswitch_1ce
const/4 v5, 0x1
if-eqz v7, :cond_1d9
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v2, "Nested group"
invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v0
:cond_1d9
const/4 v7, 0x1
const/4 v8, -0x1
if-ne v4, v8, :cond_247
move v4, v0
move v0, v5
move v5, v1
move v12, v6
move v6, v2
move v2, v7
move v7, v1
move v1, v12
goto/16 :goto_65
:sswitch_1e7
const/4 v2, -0x1
if-ne v4, v2, :cond_251
move v2, v1
:goto_1eb
if-nez v7, :cond_1f5
new-instance v0, Ljavax/mail/internet/AddressException;
const-string v2, "Illegal semicolon, not in group"
invoke-direct {v0, v2, p0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v0
:cond_1f5
const/4 v4, 0x0
const/4 v6, -0x1
if-ne v2, v6, :cond_1fa
move v2, v1
:cond_1fa
new-instance v6, Ljavax/mail/internet/InternetAddress;
invoke-direct {v6}, Ljavax/mail/internet/InternetAddress;-><init>()V
add-int/lit8 v7, v1, 0x1
invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v6, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V
invoke-virtual {v10, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
const/4 v2, 0x0
const/4 v6, -0x1
move v7, v6
move v12, v2
move v2, v4
move v4, v0
move v0, v5
move v5, v1
move v1, v12
goto/16 :goto_65
:sswitch_21a
move v12, v5
move v5, v1
move v1, v6
move v6, v2
move v2, v7
move v7, v4
move v4, v0
move v0, v12
goto/16 :goto_65
:cond_224
new-instance v0, Ljava/util/StringTokenizer;
invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V
:goto_229
invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
move-result v1
if-eqz v1, :cond_49
invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V
new-instance v2, Ljavax/mail/internet/InternetAddress;
invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V
invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V
invoke-virtual {v10, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_229
:cond_244
move v1, v2
goto/16 :goto_18
:cond_247
move v12, v5
move v5, v1
move v1, v6
move v6, v2
move v2, v7
move v7, v4
move v4, v0
move v0, v12
goto/16 :goto_65
:cond_251
move v2, v4
goto :goto_1eb
:cond_253
move v0, v3
goto/16 :goto_c6
:cond_256
move v2, v0
move v0, v3
goto/16 :goto_cb
:cond_25a
move v2, v7
move v7, v4
move v4, v0
move v0, v5
move v5, v1
move v1, v6
move v6, v8
goto/16 :goto_65
:cond_263
move v8, v2
goto/16 :goto_77
:sswitch_data_266
.sparse-switch
0x9 -> :sswitch_21a
0xa -> :sswitch_21a
0xd -> :sswitch_21a
0x20 -> :sswitch_21a
0x22 -> :sswitch_111
0x28 -> :sswitch_70
0x29 -> :sswitch_ae
0x2c -> :sswitch_14d
0x3a -> :sswitch_1ce
0x3b -> :sswitch_1e7
0x3c -> :sswitch_b6
0x3e -> :sswitch_109
0x5b -> :sswitch_131
.end sparse-switch
:sswitch_data_29c
.sparse-switch
0x28 -> :sswitch_9a
0x29 -> :sswitch_9d
0x5c -> :sswitch_97
.end sparse-switch
:sswitch_data_2aa
.sparse-switch
0x22 -> :sswitch_ec
0x3e -> :sswitch_f2
0x5c -> :sswitch_e9
.end sparse-switch
:sswitch_data_2b8
.sparse-switch
0x22 -> :sswitch_11a
0x5c -> :sswitch_12e
.end sparse-switch
:pswitch_data_2c2
.packed-switch 0x5c
:pswitch_14a
:pswitch_136
.end packed-switch
.end method
.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
.registers 3
const/4 v0, 0x1
invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
move-result-object v0
return-object v0
.end method
.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/16 v7, 0x5c
const/4 v1, 0x0
const/16 v6, 0x22
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
move v2, v1
move v0, v1
:goto_b
if-lt v2, v3, :cond_26
if-eqz v0, :cond_25
new-instance v0, Ljava/lang/StringBuffer;
add-int/lit8 v1, v3, 0x2
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
:goto_25
:cond_25
return-object p0
:cond_26
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v4
if-eq v4, v6, :cond_2e
if-ne v4, v7, :cond_54
:cond_2e
new-instance v2, Ljava/lang/StringBuffer;
add-int/lit8 v0, v3, 0x3
invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V
invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v0, v1
:goto_39
if-lt v0, v3, :cond_43
invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_25
:cond_43
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
if-eq v1, v6, :cond_4b
if-ne v1, v7, :cond_4e
:cond_4b
invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_4e
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_39
:cond_54
const/16 v5, 0x20
if-ge v4, v5, :cond_64
const/16 v5, 0xd
if-eq v4, v5, :cond_64
const/16 v5, 0xa
if-eq v4, v5, :cond_64
const/16 v5, 0x9
if-ne v4, v5, :cond_70
:cond_64
const/16 v5, 0x7f
if-ge v4, v5, :cond_70
sget-object v5, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;
invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I
move-result v4
if-ltz v4, :cond_71
:cond_70
const/4 v0, 0x1
:cond_71
add-int/lit8 v2, v2, 0x1
goto :goto_b
.end method
.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
.registers 7
if-eqz p0, :cond_5
array-length v0, p0
if-nez v0, :cond_7
:cond_5
const/4 v0, 0x0
:goto_6
return-object v0
:cond_7
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_d
array-length v2, p0
if-lt v0, v2, :cond_15
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_6
:cond_15
if-eqz v0, :cond_1e
const-string v2, ", "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 p1, p1, 0x2
:cond_1e
aget-object v2, p0, v0
invoke-virtual {v2}, Ljavax/mail/Address;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I
move-result v3
add-int/2addr v3, p1
const/16 v4, 0x4c
if-le v3, v4, :cond_34
const-string v3, "\r\n\t"
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/16 p1, 0x8
:cond_34
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I
move-result p1
add-int/lit8 v0, v0, 0x1
goto :goto_d
.end method
.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/16 v4, 0x5c
const-string v0, "\""
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_37
const-string v0, "\""
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_37
const/4 v0, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_37
new-instance v2, Ljava/lang/StringBuffer;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V
const/4 v0, 0x0
:goto_2d
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-lt v0, v1, :cond_38
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
:cond_37
return-object p0
:cond_38
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
if-ne v1, v4, :cond_52
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_52
add-int/lit8 v1, v0, 0x1
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
:goto_4c
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v0, v1, 0x1
goto :goto_2d
:cond_52
move v5, v1
move v1, v0
move v0, v5
goto :goto_4c
.end method
.method public clone()Ljava/lang/Object;
.registers 3
const/4 v1, 0x0
:try_start_1
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/internet/InternetAddress;
:goto_7
:try_end_7
.catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_8
return-object v0
:catch_8
move-exception v0
move-object v0, v1
goto :goto_7
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
instance-of v2, p1, Ljavax/mail/internet/InternetAddress;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
check-cast p1, Ljavax/mail/internet/InternetAddress;
invoke-virtual {p1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
if-ne v2, v3, :cond_13
move v0, v1
goto :goto_6
:cond_13
iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
if-eqz v3, :cond_6
iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_6
move v0, v1
goto :goto_6
.end method
.method public getAddress()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
return-object v0
.end method
.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
.registers 5
const/4 v0, 0x0
invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;
move-result-object v1
const-string v2, ";"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_e
:goto_d
:cond_d
return-object v0
:cond_e
const/16 v2, 0x3a
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-ltz v2, :cond_d
add-int/lit8 v0, v2, 0x1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
move-result-object v0
goto :goto_d
.end method
.method public getPersonal()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
if-eqz v0, :cond_1a
:try_start_b
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
:try_end_15
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16
goto :goto_6
:catch_16
move-exception v0
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
goto :goto_6
:cond_1a
const/4 v0, 0x0
goto :goto_6
.end method
.method public getType()Ljava/lang/String;
.registers 2
const-string v0, "rfc822"
return-object v0
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_5
.end method
.method public isGroup()Z
.registers 3
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
if-eqz v0, :cond_1a
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
const/16 v1, 0x3a
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-lez v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method public setAddress(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
return-void
.end method
.method public setPersonal(Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
if-eqz p1, :cond_b
invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
:goto_a
return-void
:cond_b
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
goto :goto_a
.end method
.method public setPersonal(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
if-eqz p1, :cond_c
invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
:goto_b
return-void
:cond_c
iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
goto :goto_b
.end method
.method public toString()Ljava/lang/String;
.registers 3
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
if-nez v0, :cond_10
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
if-eqz v0, :cond_10
:try_start_8
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
:cond_10
:goto_10
:try_end_10
.catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_10} :catch_61
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
if-eqz v0, :cond_3a
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, " <"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ">"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_39
return-object v0
:cond_3a
invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z
move-result v0
if-nez v0, :cond_46
invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z
move-result v0
if-eqz v0, :cond_49
:cond_46
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
goto :goto_39
:cond_49
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "<"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ">"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_39
:catch_61
move-exception v0
goto :goto_10
.end method
.method public toUnicodeString()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2a
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v0, " <"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ">"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_29
return-object v0
:cond_2a
invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z
move-result v0
if-nez v0, :cond_36
invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z
move-result v0
if-eqz v0, :cond_39
:cond_36
iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
goto :goto_29
:cond_39
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "<"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ">"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_29
.end method
.method public validate()V
.registers 3
const/4 v1, 0x1
invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V
return-void
.end method