.class public Lcom/sun/mail/imap/protocol/IMAPProtocol;
.super Lcom/sun/mail/iap/Protocol;
.source "SourceFile"
.field private static final CRLF:[B
.field private static final DONE:[B
.field private authenticated:Z
.field private authmechs:Ljava/util/List;
.field private ba:Lcom/sun/mail/iap/ByteArray;
.field private capabilities:Ljava/util/Map;
.field private connected:Z
.field private idleTag:Ljava/lang/String;
.field private name:Ljava/lang/String;
.field private rev1:Z
.field private saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;
.field private searchCharsets:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x2
new-array v0, v0, [B
fill-array-data v0, :array_12
sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B
const/4 v0, 0x6
new-array v0, v0, [B
fill-array-data v0, :array_18
sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B
return-void
nop
:array_12
.array-data 0x1
0xdt
0xat
.end array-data
nop
:array_18
.array-data 0x1
0x44t
0x4ft
0x4et
0x45t
0xdt
0xat
.end array-data
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
.registers 16
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "mail."
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
move-object v0, p0
move-object v1, p2
move v2, p3
move v3, p4
move-object v4, p5
move-object v5, p6
move v7, p7
invoke-direct/range {v0 .. v7}, Lcom/sun/mail/iap/Protocol;-><init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;
:try_start_25
iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;
if-nez v0, :cond_2e
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V
:cond_2e
const-string v0, "IMAP4rev1"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_39
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z
:cond_39
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "UTF-8"
aput-object v2, v0, v1
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;
const/4 v1, 0x1
invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z
:try_end_55
.catchall {:try_start_25 .. :try_end_55} :catchall_5d
iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z
if-nez v0, :cond_5c
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
:cond_5c
return-void
:catchall_5d
move-exception v0
iget-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z
if-nez v1, :cond_65
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
:cond_65
throw v0
.end method
.method private copy(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "COPY"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method
.method private createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;
.registers 10
const/16 v7, 0x20
const/4 v1, 0x0
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
const-string v0, "("
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {p1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;
move-result-object v5
const/4 v0, 0x1
move v2, v0
move v0, v1
:goto_14
array-length v3, v5
if-lt v0, v3, :cond_29
invoke-virtual {p1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;
move-result-object v3
move v0, v1
:goto_1c
array-length v5, v3
if-lt v0, v5, :cond_61
const-string v0, ")"
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_29
aget-object v3, v5, v0
sget-object v6, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;
if-ne v3, v6, :cond_3a
const-string v3, "\\Answered"
:goto_31
if-eqz v2, :cond_5d
move v2, v1
:goto_34
invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_37
add-int/lit8 v0, v0, 0x1
goto :goto_14
:cond_3a
sget-object v6, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;
if-ne v3, v6, :cond_41
const-string v3, "\\Deleted"
goto :goto_31
:cond_41
sget-object v6, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;
if-ne v3, v6, :cond_48
const-string v3, "\\Draft"
goto :goto_31
:cond_48
sget-object v6, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;
if-ne v3, v6, :cond_4f
const-string v3, "\\Flagged"
goto :goto_31
:cond_4f
sget-object v6, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;
if-ne v3, v6, :cond_56
const-string v3, "\\Recent"
goto :goto_31
:cond_56
sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;
if-ne v3, v6, :cond_37
const-string v3, "\\Seen"
goto :goto_31
:cond_5d
invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_34
:cond_61
if-eqz v2, :cond_6c
move v2, v1
:goto_64
aget-object v5, v3, v0
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_6c
invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_64
.end method
.method private doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
.registers 13
const/4 v1, 0x0
invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p3}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/sun/mail/iap/Argument;
invoke-direct {v3}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v3, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
invoke-virtual {p0, p1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v4
move-object v0, v1
check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;
array-length v2, v4
add-int/lit8 v2, v2, -0x1
aget-object v5, v4, v2
invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v2
if-eqz v2, :cond_40
new-instance v6, Ljava/util/Vector;
const/4 v2, 0x1
invoke-direct {v6, v2}, Ljava/util/Vector;-><init>(I)V
const/4 v2, 0x0
array-length v7, v4
move v3, v2
:goto_2f
if-lt v3, v7, :cond_47
invoke-virtual {v6}, Ljava/util/Vector;->size()I
move-result v1
if-lez v1, :cond_40
invoke-virtual {v6}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Lcom/sun/mail/imap/protocol/ListInfo;
invoke-virtual {v6, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
:cond_40
invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-object v0
:cond_47
aget-object v2, v4, v3
instance-of v2, v2, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v2, :cond_51
:goto_4d
:cond_4d
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_2f
:cond_51
aget-object v2, v4, v3
check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;
invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_4d
new-instance v8, Lcom/sun/mail/imap/protocol/ListInfo;
invoke-direct {v8, v2}, Lcom/sun/mail/imap/protocol/ListInfo;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
aput-object v1, v4, v3
goto :goto_4d
.end method
.method private fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
.registers 7
const/4 v2, 0x0
if-eqz p3, :cond_27
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "UID FETCH "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
:goto_26
return-object v0
:cond_27
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "FETCH "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
goto :goto_26
.end method
.method private getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;
.registers 7
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v1
if-nez v1, :cond_8
:cond_7
:goto_7
return-object v0
:cond_8
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B
move-result v1
if-lez v1, :cond_12
const/16 v2, 0x5b
if-ne v1, v2, :cond_8
:cond_12
if-eqz v1, :cond_7
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;
move-result-object v1
const-string v2, "APPENDUID"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J
move-result-wide v1
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J
move-result-wide v3
new-instance v0, Lcom/sun/mail/imap/AppendUID;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V
goto :goto_7
.end method
.method private issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
.registers 14
const/4 v3, 0x0
const/4 v1, 0x0
if-nez p3, :cond_3c
move-object v0, v1
:goto_5
invoke-static {p2, v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
if-nez p3, :cond_41
const-string v2, "SEARCH"
invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
move-object v2, v0
:goto_15
array-length v0, v2
add-int/lit8 v0, v0, -0x1
aget-object v5, v2, v0
move-object v0, v1
check-cast v0, [I
invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v4
if-eqz v4, :cond_35
new-instance v6, Ljava/util/Vector;
invoke-direct {v6}, Ljava/util/Vector;-><init>()V
array-length v7, v2
move v4, v3
:goto_2a
if-lt v4, v7, :cond_56
invoke-virtual {v6}, Ljava/util/Vector;->size()I
move-result v4
new-array v1, v4, [I
:goto_32
if-lt v3, v4, :cond_7f
move-object v0, v1
:cond_35
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-object v0
:cond_3c
invoke-static {p3}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_5
:cond_41
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "SEARCH CHARSET "
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
move-object v2, v0
goto :goto_15
:cond_56
aget-object v0, v2, v4
instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v0, :cond_60
:goto_5c
:cond_5c
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_2a
:cond_60
aget-object v0, v2, v4
check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v8, "SEARCH"
invoke-virtual {v0, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_5c
:goto_6c
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I
move-result v8
const/4 v9, -0x1
if-ne v8, v9, :cond_76
aput-object v1, v2, v4
goto :goto_5c
:cond_76
new-instance v9, Ljava/lang/Integer;
invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v6, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_6c
:cond_7f
invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
aput v0, v1, v3
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_32
.end method
.method private parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;
.registers 10
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;
move-result-object v0
new-instance v6, Ljavax/mail/Quota;
invoke-direct {v6, v0}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B
move-result v0
const/16 v1, 0x28
if-eq v0, v1, :cond_1c
new-instance v0, Lcom/sun/mail/iap/ParsingException;
const-string v1, "parse error in QUOTA"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
new-instance v7, Ljava/util/Vector;
invoke-direct {v7}, Ljava/util/Vector;-><init>()V
:goto_21
:cond_21
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B
move-result v0
const/16 v1, 0x29
if-ne v0, v1, :cond_3a
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B
invoke-virtual {v7}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Ljavax/mail/Quota$Resource;
iput-object v0, v6, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;
iget-object v0, v6, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;
invoke-virtual {v7, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-object v6
:cond_3a
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_21
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J
move-result-wide v2
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J
move-result-wide v4
new-instance v0, Ljavax/mail/Quota$Resource;
invoke-direct/range {v0 .. v5}, Ljavax/mail/Quota$Resource;-><init>(Ljava/lang/String;JJ)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_21
.end method
.method private search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I
.registers 6
const/4 v2, 0x0
invoke-static {p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x0
:try_start_8
invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
:try_end_b
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_d
move-result-object v0
:goto_c
return-object v0
:catch_d
move-exception v0
:cond_e
const/4 v0, 0x0
:goto_f
iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;
array-length v1, v1
if-lt v0, v1, :cond_1c
new-instance v0, Ljavax/mail/search/SearchException;
const-string v1, "Search failed"
invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;
aget-object v1, v1, v0
if-nez v1, :cond_25
:goto_22
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_25
:try_start_25
iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;
aget-object v1, v1, v0
invoke-direct {p0, p1, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
:try_end_2c
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_25 .. :try_end_2c} :catch_2e
.catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_38
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_25 .. :try_end_2c} :catch_34
.catch Ljavax/mail/search/SearchException; {:try_start_25 .. :try_end_2c} :catch_36
move-result-object v0
goto :goto_c
:catch_2e
move-exception v1
iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;
aput-object v2, v1, v0
goto :goto_22
:catch_34
move-exception v0
throw v0
:catch_36
move-exception v0
throw v0
:catch_38
move-exception v1
goto :goto_22
.end method
.method private storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V
.registers 7
const/4 v2, 0x0
if-eqz p3, :cond_30
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "STORE "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " +FLAGS "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-direct {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
:goto_24
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aget-object v0, v0, v1
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-void
:cond_30
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "STORE "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " -FLAGS "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-direct {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
goto :goto_24
.end method
.method public append(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;
return-void
.end method
.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/imap/AppendUID;
.registers 11
const/4 v5, 0x1
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;
move-result-object v0
return-object v0
.end method
.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;
.registers 9
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_28
sget-object v0, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;
invoke-virtual {p2, v0}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z
move-result v0
if-eqz v0, :cond_21
new-instance v0, Ljavax/mail/Flags;
invoke-direct {v0, p2}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V
sget-object v2, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;
invoke-virtual {v0, v2}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags$Flag;)V
move-object p2, v0
:cond_21
invoke-direct {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
:cond_28
if-eqz p3, :cond_31
invoke-static {p3}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
:cond_31
invoke-virtual {v1, p4}, Lcom/sun/mail/iap/Argument;->writeBytes(Lcom/sun/mail/iap/Literal;)V
const-string v0, "APPEND"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aget-object v1, v0, v1
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
if-eqz p5, :cond_51
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aget-object v0, v0, v1
invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;
move-result-object v0
:goto_50
return-object v0
:cond_51
const/4 v0, 0x0
goto :goto_50
.end method
.method public declared-synchronized authlogin(Ljava/lang/String;Ljava/lang/String;)V
.registers 14
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v3, 0x1
monitor-enter p0
:try_start_4
new-instance v7, Ljava/util/Vector;
invoke-direct {v7}, Ljava/util/Vector;-><init>()V
:try_end_9
.catchall {:try_start_4 .. :try_end_9} :catchall_9e
:try_start_9
const-string v0, "AUTHENTICATE LOGIN"
const/4 v4, 0x0
invoke-virtual {p0, v0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
:try_end_f
.catchall {:try_start_9 .. :try_end_f} :catchall_9e
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_3f
move-result-object v0
move-object v6, v0
move v0, v2
:try_start_12
:goto_12
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;
move-result-object v8
new-instance v9, Ljava/io/ByteArrayOutputStream;
invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v10, Lcom/sun/mail/util/BASE64EncoderStream;
const v4, 0x7fffffff
invoke-direct {v10, v9, v4}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V
move v4, v0
move-object v0, v1
move v1, v3
:goto_26
if-eqz v4, :cond_48
invoke-virtual {v7}, Ljava/util/Vector;->size()I
move-result v1
new-array v1, v1, [Lcom/sun/mail/iap/Response;
invoke-virtual {v7, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
:try_end_3d
.catchall {:try_start_12 .. :try_end_3d} :catchall_9e
monitor-exit p0
return-void
:catch_3f
move-exception v0
:try_start_40
invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
:try_end_43
.catchall {:try_start_40 .. :try_end_43} :catchall_9e
move-result-object v0
move-object v6, v1
move-object v1, v0
move v0, v3
goto :goto_12
:cond_48
:try_start_48
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;
move-result-object v5
invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isContinuation()Z
move-result v0
if-eqz v0, :cond_76
if-eqz v1, :cond_74
move-object v0, p1
move v1, v2
:goto_56
invoke-static {v0}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B
invoke-virtual {v9, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V
move-object v0, v5
goto :goto_26
:cond_74
move-object v0, p2
goto :goto_56
:cond_76
invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isTagged()Z
move-result v0
if-eqz v0, :cond_89
invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_89
move v4, v3
move-object v0, v5
goto :goto_26
:cond_89
invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isBYE()Z
move-result v0
if-eqz v0, :cond_92
move v4, v3
move-object v0, v5
goto :goto_26
:cond_92
invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:try_end_95
.catchall {:try_start_48 .. :try_end_95} :catchall_9e
.catch Ljava/lang/Exception; {:try_start_48 .. :try_end_95} :catch_97
move-object v0, v5
goto :goto_26
:catch_97
move-exception v0
:try_start_98
invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
:try_end_9b
.catchall {:try_start_98 .. :try_end_9b} :catchall_9e
move-result-object v0
move v4, v3
goto :goto_26
:catchall_9e
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 14
const/4 v2, 0x0
const/4 v1, 0x1
monitor-enter p0
:try_start_3
new-instance v4, Ljava/util/Vector;
invoke-direct {v4}, Ljava/util/Vector;-><init>()V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_b6
const/4 v0, 0x0
:try_start_9
const-string v3, "AUTHENTICATE PLAIN"
const/4 v5, 0x0
invoke-virtual {p0, v3, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
:try_end_f
.catchall {:try_start_9 .. :try_end_f} :catchall_b6
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_3a
move-result-object v3
:try_start_10
:goto_10
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;
move-result-object v5
new-instance v6, Ljava/io/ByteArrayOutputStream;
invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v7, Lcom/sun/mail/util/BASE64EncoderStream;
const v8, 0x7fffffff
invoke-direct {v7, v6, v8}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V
:goto_21
if-eqz v0, :cond_43
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Lcom/sun/mail/iap/Response;
invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
:try_end_38
.catchall {:try_start_10 .. :try_end_38} :catchall_b6
monitor-exit p0
return-void
:catch_3a
move-exception v0
:try_start_3b
invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
:try_end_3e
.catchall {:try_start_3b .. :try_end_3e} :catchall_b6
move-result-object v0
move-object v3, v2
move-object v2, v0
move v0, v1
goto :goto_10
:try_start_43
:cond_43
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;
move-result-object v2
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z
move-result v8
if-eqz v8, :cond_95
const-string v8, "\u0000"
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v9, "\u0000"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\u0000"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B
move-result-object v8
invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
sget-object v8, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B
invoke-virtual {v6, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V
invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v8
invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V
:try_end_8c
.catchall {:try_start_43 .. :try_end_8c} :catchall_b6
.catch Ljava/lang/Exception; {:try_start_43 .. :try_end_8c} :catch_8d
goto :goto_21
:catch_8d
move-exception v0
:try_start_8e
invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
:try_end_91
.catchall {:try_start_8e .. :try_end_91} :catchall_b6
move-result-object v0
move-object v2, v0
move v0, v1
goto :goto_21
:try_start_95
:cond_95
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isTagged()Z
move-result v8
if-eqz v8, :cond_a8
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_a8
move v0, v1
goto/16 :goto_21
:cond_a8
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isBYE()Z
move-result v8
if-eqz v8, :cond_b1
move v0, v1
goto/16 :goto_21
:cond_b1
invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:try_end_b4
.catchall {:try_start_95 .. :try_end_b4} :catchall_b6
.catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b4} :catch_8d
goto/16 :goto_21
:catchall_b6
move-exception v0
monitor-exit p0
throw v0
.end method
.method public capability()V
.registers 6
const-string v0, "CAPABILITY"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v2
array-length v0, v2
add-int/lit8 v0, v0, -0x1
aget-object v0, v2, v0
invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v0
if-nez v0, :cond_21
new-instance v0, Lcom/sun/mail/iap/ProtocolException;
array-length v1, v2
add-int/lit8 v1, v1, -0x1
aget-object v1, v2, v1
invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
new-instance v0, Ljava/util/HashMap;
const/16 v1, 0xa
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x5
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;
const/4 v0, 0x0
array-length v3, v2
move v1, v0
:goto_35
if-lt v1, v3, :cond_38
return-void
:cond_38
aget-object v0, v2, v1
instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v0, :cond_42
:goto_3e
:cond_3e
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_35
:cond_42
aget-object v0, v2, v1
check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v4, "CAPABILITY"
invoke-virtual {v0, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_3e
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V
goto :goto_3e
.end method
.method public check()V
.registers 3
const-string v0, "CHECK"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method
.method public close()V
.registers 3
const-string v0, "CLOSE"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method
.method public copy(IILjava/lang/String;)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public create(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "CREATE"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method
.method public delete(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "DELETE"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method
.method public deleteACL(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const-string v0, "ACL"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "ACL not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "DELETEACL"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aget-object v1, v0, v1
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-void
.end method
.method public disconnect()V
.registers 2
invoke-super {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
return-void
.end method
.method public examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
.registers 5
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "EXAMINE"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
new-instance v1, Lcom/sun/mail/imap/protocol/MailboxInfo;
invoke-direct {v1, v0}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V
const/4 v2, 0x1
iput v2, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v2, v0
add-int/lit8 v2, v2, -0x1
aget-object v0, v0, v2
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-object v1
.end method
.method public expunge()V
.registers 3
const-string v0, "EXPUNGE"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method
.method public fetch(IILjava/lang/String;)[Lcom/sun/mail/iap/Response;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
move-result-object v0
return-object v0
.end method
.method public fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
.registers 5
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
move-result-object v0
return-object v0
.end method
.method public fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;
.registers 5
invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
move-result-object v0
return-object v0
.end method
.method public fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;
move-result-object v0
return-object v0
.end method
.method public fetchBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
.registers 12
const/4 v5, 0x0
const/4 v6, 0x0
move-object v0, p0
move v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
move-result-object v0
return-object v0
.end method
.method public fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
.registers 13
const/4 v5, 0x0
move-object v0, p0
move v1, p1
move-object v2, p2
move v3, p3
move v4, p4
move-object v6, p5
invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
move-result-object v0
return-object v0
.end method
.method protected fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
.registers 11
const/4 v1, 0x0
iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;
new-instance v2, Ljava/lang/StringBuilder;
if-eqz p5, :cond_53
const-string v0, "BODY.PEEK["
:goto_9
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-nez p2, :cond_56
const-string v0, "]<"
:goto_14
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ">"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v2, v0
add-int/lit8 v2, v2, -0x1
aget-object v2, v0, v2
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v3
if-eqz v3, :cond_6a
const-class v1, Lcom/sun/mail/imap/protocol/BODY;
invoke-static {v0, p1, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/protocol/BODY;
:goto_52
return-object v0
:cond_53
const-string v0, "BODY["
goto :goto_9
:cond_56
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "]<"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_6a
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isNO()Z
move-result v0
if-eqz v0, :cond_72
move-object v0, v1
goto :goto_52
:cond_72
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
move-object v0, v1
goto :goto_52
.end method
.method protected fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;
.registers 8
const/4 v1, 0x0
if-eqz p3, :cond_45
new-instance v2, Ljava/lang/StringBuilder;
const-string v0, "BODY.PEEK["
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-nez p2, :cond_31
const-string v0, "]"
:goto_e
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
move-result-object v0
:goto_1a
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v2, v0
add-int/lit8 v2, v2, -0x1
aget-object v2, v0, v2
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v3
if-eqz v3, :cond_71
const-class v1, Lcom/sun/mail/imap/protocol/BODY;
invoke-static {v0, p1, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/protocol/BODY;
:goto_30
return-object v0
:cond_31
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "]"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_e
:cond_45
new-instance v2, Ljava/lang/StringBuilder;
const-string v0, "BODY["
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-nez p2, :cond_5d
const-string v0, "]"
:goto_50
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
move-result-object v0
goto :goto_1a
:cond_5d
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "]"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_50
:cond_71
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isNO()Z
move-result v0
if-eqz v0, :cond_79
move-object v0, v1
goto :goto_30
:cond_79
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
move-object v0, v1
goto :goto_30
.end method
.method public fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
.registers 6
const/4 v0, 0x0
const-string v1, "BODYSTRUCTURE"
invoke-virtual {p0, p1, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v2, v1
add-int/lit8 v2, v2, -0x1
aget-object v2, v1, v2
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v3
if-eqz v3, :cond_1e
const-class v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
invoke-static {v1, p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
:goto_1d
:cond_1d
return-object v0
:cond_1e
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isNO()Z
move-result v1
if-nez v1, :cond_1d
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
goto :goto_1d
.end method
.method public fetchFlags(I)Ljavax/mail/Flags;
.registers 8
const/4 v3, 0x0
const-string v0, "FLAGS"
invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
move-result-object v4
const/4 v0, 0x0
array-length v5, v4
move v2, v0
move-object v1, v3
:goto_b
if-lt v2, v5, :cond_1a
move-object v0, v1
:goto_e
invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v1, v4
add-int/lit8 v1, v1, -0x1
aget-object v1, v4, v1
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-object v0
:cond_1a
aget-object v0, v4, v2
if-eqz v0, :cond_45
aget-object v0, v4, v2
instance-of v0, v0, Lcom/sun/mail/imap/protocol/FetchResponse;
if-eqz v0, :cond_45
aget-object v0, v4, v2
check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I
move-result v0
if-eq v0, p1, :cond_34
move-object v0, v1
:goto_2f
:cond_2f
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_b
:cond_34
aget-object v0, v4, v2
check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;
const-class v1, Ljavax/mail/Flags;
invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
move-result-object v0
check-cast v0, Ljavax/mail/Flags;
if-eqz v0, :cond_2f
aput-object v3, v4, v2
goto :goto_e
:cond_45
move-object v0, v1
goto :goto_2f
.end method
.method public fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;
.registers 7
const/4 v1, 0x0
if-nez p2, :cond_20
const-string v0, "RFC822"
:goto_5
invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v2, v0
add-int/lit8 v2, v2, -0x1
aget-object v2, v0, v2
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v3
if-eqz v3, :cond_30
const-class v1, Lcom/sun/mail/imap/protocol/RFC822DATA;
invoke-static {v0, p1, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/protocol/RFC822DATA;
:goto_1f
return-object v0
:cond_20
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "RFC822."
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5
:cond_30
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isNO()Z
move-result v0
if-eqz v0, :cond_38
move-object v0, v1
goto :goto_1f
:cond_38
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
move-object v0, v1
goto :goto_1f
.end method
.method public fetchSequenceNumber(J)Lcom/sun/mail/imap/protocol/UID;
.registers 10
const/4 v1, 0x0
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
const-string v2, "UID"
const/4 v3, 0x1
invoke-direct {p0, v0, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
move-result-object v3
const/4 v0, 0x0
array-length v4, v3
move v2, v0
move-object v0, v1
:goto_10
if-lt v2, v4, :cond_1e
:cond_12
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v1, v3
add-int/lit8 v1, v1, -0x1
aget-object v1, v3, v1
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-object v0
:cond_1e
aget-object v5, v3, v2
if-eqz v5, :cond_28
aget-object v5, v3, v2
instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;
if-nez v5, :cond_2b
:cond_28
:goto_28
add-int/lit8 v2, v2, 0x1
goto :goto_10
:cond_2b
aget-object v0, v3, v2
check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;
const-class v5, Lcom/sun/mail/imap/protocol/UID;
invoke-virtual {v0, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/protocol/UID;
if-eqz v0, :cond_28
iget-wide v5, v0, Lcom/sun/mail/imap/protocol/UID;->uid:J
cmp-long v5, v5, p1
if-eqz v5, :cond_12
move-object v0, v1
goto :goto_28
.end method
.method public fetchSequenceNumbers(JJ)[Lcom/sun/mail/imap/protocol/UID;
.registers 11
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-wide/16 v2, -0x1
cmp-long v0, p3, v2
if-nez v0, :cond_49
const-string v0, "*"
:goto_1b
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "UID"
const/4 v2, 0x1
invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
move-result-object v2
new-instance v3, Ljava/util/Vector;
invoke-direct {v3}, Ljava/util/Vector;-><init>()V
const/4 v0, 0x0
array-length v4, v2
move v1, v0
:goto_32
if-lt v1, v4, :cond_4e
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v0, v2
add-int/lit8 v0, v0, -0x1
aget-object v0, v2, v0
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
invoke-virtual {v3}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Lcom/sun/mail/imap/protocol/UID;
invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-object v0
:cond_49
invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
goto :goto_1b
:cond_4e
aget-object v0, v2, v1
if-eqz v0, :cond_58
aget-object v0, v2, v1
instance-of v0, v0, Lcom/sun/mail/imap/protocol/FetchResponse;
if-nez v0, :cond_5c
:cond_58
:goto_58
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_32
:cond_5c
aget-object v0, v2, v1
check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;
const-class v5, Lcom/sun/mail/imap/protocol/UID;
invoke-virtual {v0, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/protocol/UID;
if-eqz v0, :cond_58
invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_58
.end method
.method public fetchSequenceNumbers([J)[Lcom/sun/mail/imap/protocol/UID;
.registers 8
const/4 v1, 0x0
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
move v0, v1
:goto_7
array-length v3, p1
if-lt v0, v3, :cond_32
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
const-string v2, "UID"
const/4 v3, 0x1
invoke-direct {p0, v0, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
move-result-object v2
new-instance v3, Ljava/util/Vector;
invoke-direct {v3}, Ljava/util/Vector;-><init>()V
array-length v4, v2
:goto_1b
if-lt v1, v4, :cond_45
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v0, v2
add-int/lit8 v0, v0, -0x1
aget-object v0, v2, v0
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
invoke-virtual {v3}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Lcom/sun/mail/imap/protocol/UID;
invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-object v0
:cond_32
if-lez v0, :cond_39
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_39
aget-wide v3, p1, v0
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_45
aget-object v0, v2, v1
if-eqz v0, :cond_4f
aget-object v0, v2, v1
instance-of v0, v0, Lcom/sun/mail/imap/protocol/FetchResponse;
if-nez v0, :cond_52
:goto_4f
:cond_4f
add-int/lit8 v1, v1, 0x1
goto :goto_1b
:cond_52
aget-object v0, v2, v1
check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;
const-class v5, Lcom/sun/mail/imap/protocol/UID;
invoke-virtual {v0, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/protocol/UID;
if-eqz v0, :cond_4f
invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_4f
.end method
.method public fetchUID(I)Lcom/sun/mail/imap/protocol/UID;
.registers 6
const/4 v0, 0x0
const-string v1, "UID"
invoke-virtual {p0, p1, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v2, v1
add-int/lit8 v2, v2, -0x1
aget-object v2, v1, v2
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v3
if-eqz v3, :cond_1e
const-class v0, Lcom/sun/mail/imap/protocol/UID;
invoke-static {v1, p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/protocol/UID;
:goto_1d
:cond_1d
return-object v0
:cond_1e
invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isNO()Z
move-result v1
if-nez v1, :cond_1d
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
goto :goto_1d
.end method
.method public getACL(Ljava/lang/String;)[Lcom/sun/mail/imap/ACL;
.registers 12
const-string v0, "ACL"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "ACL not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "GETACL"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v2
array-length v0, v2
add-int/lit8 v0, v0, -0x1
aget-object v3, v2, v0
new-instance v4, Ljava/util/Vector;
invoke-direct {v4}, Ljava/util/Vector;-><init>()V
invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v0
if-eqz v0, :cond_37
const/4 v0, 0x0
array-length v5, v2
move v1, v0
:goto_35
if-lt v1, v5, :cond_47
:cond_37
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Lcom/sun/mail/imap/ACL;
invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-object v0
:cond_47
aget-object v0, v2, v1
instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v0, :cond_51
:cond_4d
:goto_4d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_35
:cond_51
aget-object v0, v2, v1
check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v6, "ACL"
invoke-virtual {v0, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_4d
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;
:goto_60
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;
move-result-object v6
if-nez v6, :cond_6a
:cond_66
const/4 v0, 0x0
aput-object v0, v2, v1
goto :goto_4d
:cond_6a
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_66
new-instance v8, Lcom/sun/mail/imap/ACL;
new-instance v9, Lcom/sun/mail/imap/Rights;
invoke-direct {v9, v7}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V
invoke-direct {v8, v6, v9}, Lcom/sun/mail/imap/ACL;-><init>(Ljava/lang/String;Lcom/sun/mail/imap/Rights;)V
invoke-virtual {v4, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_60
.end method
.method public getCapabilities()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;
return-object v0
.end method
.method  getIMAPOutputStream()Ljava/io/OutputStream;
.registers 2
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
return-object v0
.end method
.method public getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
.registers 9
const-string v0, "QUOTA"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "QUOTA not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v1, "GETQUOTA"
invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v2
new-instance v3, Ljava/util/Vector;
invoke-direct {v3}, Ljava/util/Vector;-><init>()V
array-length v0, v2
add-int/lit8 v0, v0, -0x1
aget-object v4, v2, v0
invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v0
if-eqz v0, :cond_33
const/4 v0, 0x0
array-length v5, v2
move v1, v0
:goto_31
if-lt v1, v5, :cond_43
:cond_33
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
invoke-virtual {v3}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Ljavax/mail/Quota;
invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-object v0
:cond_43
aget-object v0, v2, v1
instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v0, :cond_4d
:cond_49
:goto_49
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_31
:cond_4d
aget-object v0, v2, v1
check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v6, "QUOTA"
invoke-virtual {v0, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_49
invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
const/4 v0, 0x0
aput-object v0, v2, v1
goto :goto_49
.end method
.method public getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;
.registers 12
const/4 v9, 0x0
const/4 v1, 0x0
const-string v0, "QUOTA"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_12
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "GETQUOTAROOT not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v2, Lcom/sun/mail/iap/Argument;
invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v2, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "GETQUOTAROOT"
invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v3
array-length v0, v3
add-int/lit8 v0, v0, -0x1
aget-object v4, v3, v0
new-instance v5, Ljava/util/Hashtable;
invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V
invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v0
if-eqz v0, :cond_38
array-length v6, v3
move v2, v1
:goto_36
if-lt v2, v6, :cond_4f
:cond_38
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
invoke-virtual {v5}, Ljava/util/Hashtable;->size()I
move-result v0
new-array v2, v0, [Ljavax/mail/Quota;
invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;
move-result-object v3
:goto_48
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_9a
return-object v2
:cond_4f
aget-object v0, v3, v2
instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v0, :cond_59
:goto_55
:cond_55
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_36
:cond_59
aget-object v0, v3, v2
check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v7, "QUOTAROOT"
invoke-virtual {v0, v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_7a
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;
:goto_68
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;
move-result-object v7
if-nez v7, :cond_71
aput-object v9, v3, v2
goto :goto_55
:cond_71
new-instance v8, Ljavax/mail/Quota;
invoke-direct {v8, v7}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_68
:cond_7a
const-string v7, "QUOTA"
invoke-virtual {v0, v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_55
invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;
move-result-object v7
iget-object v0, v7, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;
invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/Quota;
if-eqz v0, :cond_92
iget-object v0, v0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;
:cond_92
iget-object v0, v7, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;
invoke-virtual {v5, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
aput-object v9, v3, v2
goto :goto_55
:cond_9a
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/Quota;
aput-object v0, v2, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_48
.end method
.method protected getResponseBuffer()Lcom/sun/mail/iap/ByteArray;
.registers 3
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;
return-object v0
.end method
.method public hasCapability(Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public idleAbort()V
.registers 3
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
:try_start_4
sget-object v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
:goto_c
:try_end_c
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_d
return-void
:catch_d
move-exception v0
goto :goto_c
.end method
.method public declared-synchronized idleStart()V
.registers 3
monitor-enter p0
:try_start_1
const-string v0, "IDLE"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_14
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "IDLE not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_11
:catchall_11
move-exception v0
monitor-exit p0
throw v0
:cond_14
:try_start_14
const-string v0, "IDLE"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;
:try_end_20
.catchall {:try_start_14 .. :try_end_20} :catchall_11
.catch Lcom/sun/mail/iap/LiteralException; {:try_start_14 .. :try_end_20} :catch_2c
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_32
move-result-object v0
:goto_21
:try_start_21
invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isContinuation()Z
move-result v1
if-nez v1, :cond_2a
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
:cond_2a
:try_end_2a
.catchall {:try_start_21 .. :try_end_2a} :catchall_11
monitor-exit p0
return-void
:catch_2c
move-exception v0
:try_start_2d
invoke-virtual {v0}, Lcom/sun/mail/iap/LiteralException;->getResponse()Lcom/sun/mail/iap/Response;
move-result-object v0
goto :goto_21
:catch_32
move-exception v0
invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
:try_end_36
.catchall {:try_start_2d .. :try_end_36} :catchall_11
move-result-object v0
goto :goto_21
.end method
.method public isAuthenticated()Z
.registers 2
iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
return v0
.end method
.method public isREV1()Z
.registers 2
iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z
return v0
.end method
.method public list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
.registers 4
const-string v0, "LIST"
invoke-direct {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
move-result-object v0
return-object v0
.end method
.method public listRights(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
.registers 11
const-string v0, "ACL"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "ACL not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "LISTRIGHTS"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v2
array-length v0, v2
add-int/lit8 v0, v0, -0x1
aget-object v3, v2, v0
new-instance v4, Ljava/util/Vector;
invoke-direct {v4}, Ljava/util/Vector;-><init>()V
invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v0
if-eqz v0, :cond_3a
const/4 v0, 0x0
array-length v5, v2
move v1, v0
:goto_38
if-lt v1, v5, :cond_4a
:cond_3a
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Lcom/sun/mail/imap/Rights;
invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-object v0
:cond_4a
aget-object v0, v2, v1
instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v0, :cond_54
:goto_50
:cond_50
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_38
:cond_54
aget-object v0, v2, v1
check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v6, "LISTRIGHTS"
invoke-virtual {v0, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_50
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;
:goto_66
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;
move-result-object v6
if-nez v6, :cond_70
const/4 v0, 0x0
aput-object v0, v2, v1
goto :goto_50
:cond_70
new-instance v7, Lcom/sun/mail/imap/Rights;
invoke-direct {v7, v6}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_66
.end method
.method public login(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v1, "LOGIN"
invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aget-object v1, v0, v1
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aget-object v0, v0, v1
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
return-void
.end method
.method public logout()V
.registers 3
const-string v0, "LOGOUT"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
return-void
.end method
.method public lsub(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
.registers 4
const-string v0, "LSUB"
invoke-direct {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
move-result-object v0
return-object v0
.end method
.method public myRights(Ljava/lang/String;)Lcom/sun/mail/imap/Rights;
.registers 10
const/4 v2, 0x0
const-string v0, "ACL"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_11
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "ACL not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "MYRIGHTS"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v4
array-length v0, v4
add-int/lit8 v0, v0, -0x1
aget-object v5, v4, v0
invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v0
if-eqz v0, :cond_65
const/4 v0, 0x0
array-length v6, v4
move v3, v0
move-object v1, v2
:goto_32
if-lt v3, v6, :cond_3b
:goto_34
invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-object v1
:cond_3b
aget-object v0, v4, v3
instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v0, :cond_45
:goto_41
:cond_41
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_32
:cond_45
aget-object v0, v4, v3
check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v7, "MYRIGHTS"
invoke-virtual {v0, v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_41
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;
move-result-object v7
if-nez v1, :cond_63
new-instance v0, Lcom/sun/mail/imap/Rights;
invoke-direct {v0, v7}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V
:goto_5f
aput-object v2, v4, v3
move-object v1, v0
goto :goto_41
:cond_63
move-object v0, v1
goto :goto_5f
:cond_65
move-object v1, v2
goto :goto_34
.end method
.method public namespace()Lcom/sun/mail/imap/protocol/Namespaces;
.registers 9
const/4 v2, 0x0
const-string v0, "NAMESPACE"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_11
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "NAMESPACE not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
const-string v0, "NAMESPACE"
invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v4
array-length v0, v4
add-int/lit8 v0, v0, -0x1
aget-object v5, v4, v0
invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v0
if-eqz v0, :cond_53
const/4 v0, 0x0
array-length v6, v4
move v3, v0
move-object v1, v2
:goto_26
if-lt v3, v6, :cond_2f
:goto_28
invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-object v1
:cond_2f
aget-object v0, v4, v3
instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v0, :cond_39
:goto_35
:cond_35
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_26
:cond_39
aget-object v0, v4, v3
check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v7, "NAMESPACE"
invoke-virtual {v0, v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_35
if-nez v1, :cond_51
new-instance v1, Lcom/sun/mail/imap/protocol/Namespaces;
invoke-direct {v1, v0}, Lcom/sun/mail/imap/protocol/Namespaces;-><init>(Lcom/sun/mail/iap/Response;)V
move-object v0, v1
:goto_4d
aput-object v2, v4, v3
move-object v1, v0
goto :goto_35
:cond_51
move-object v0, v1
goto :goto_4d
:cond_53
move-object v1, v2
goto :goto_28
.end method
.method public noop()V
.registers 3
iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;
const-string v1, "IMAP DEBUG: IMAPProtocol noop"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_b
const-string v0, "NOOP"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method
.method protected parseCapabilities(Lcom/sun/mail/iap/Response;)V
.registers 9
const/16 v6, 0x5d
const/4 v2, 0x0
const/4 v5, 0x5
:cond_4
:goto_4
invoke-virtual {p1, v6}, Lcom/sun/mail/iap/Response;->readAtom(C)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_b
:cond_a
return-void
:cond_b
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_1b
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B
move-result v0
if-eq v0, v6, :cond_a
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipToken()V
goto :goto_4
:cond_1b
iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v1, 0x1
const-string v3, "AUTH="
move v4, v2
invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v1
if-eqz v1, :cond_4
iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;
invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z
if-eqz v1, :cond_4
iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "IMAP DEBUG: AUTH: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_4
.end method
.method public peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;
move-result-object v0
return-object v0
.end method
.method public peekBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
.registers 12
const/4 v5, 0x1
const/4 v6, 0x0
move-object v0, p0
move v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
move-result-object v0
return-object v0
.end method
.method public peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
.registers 13
const/4 v5, 0x1
move-object v0, p0
move v1, p1
move-object v2, p2
move v3, p3
move v4, p4
move-object v6, p5
invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
move-result-object v0
return-object v0
.end method
.method protected processGreeting(Lcom/sun/mail/iap/Response;)V
.registers 4
invoke-super {p0, p1}, Lcom/sun/mail/iap/Protocol;->processGreeting(Lcom/sun/mail/iap/Response;)V
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v0
if-eqz v0, :cond_d
invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V
:goto_c
return-void
:cond_d
move-object v0, p1
check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v1, "PREAUTH"
invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1f
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V
goto :goto_c
:cond_1f
new-instance v0, Lcom/sun/mail/iap/ConnectionException;
invoke-direct {v0, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V
throw v0
.end method
.method public processIdleResponse(Lcom/sun/mail/iap/Response;)Z
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
new-array v0, v1, [Lcom/sun/mail/iap/Response;
aput-object p1, v0, v2
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z
move-result v0
if-eqz v0, :cond_30
move v0, v1
:goto_10
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isTagged()Z
move-result v3
if-eqz v3, :cond_23
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_23
move v0, v1
:cond_23
if-eqz v0, :cond_28
const/4 v3, 0x0
iput-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
:cond_28
invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
if-eqz v0, :cond_2e
:goto_2d
return v2
:cond_2e
move v2, v1
goto :goto_2d
:cond_30
move v0, v2
goto :goto_10
.end method
.method public proxyauth(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v1, "PROXYAUTH"
invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method
.method public declared-synchronized readIdleResponse()Lcom/sun/mail/iap/Response;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_19
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_6
monitor-exit p0
return-object v0
:try_start_8
:cond_8
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;
:try_end_b
.catchall {:try_start_8 .. :try_end_b} :catchall_19
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_d
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_b} :catch_13
move-result-object v0
goto :goto_6
:catch_d
move-exception v0
:try_start_e
invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
move-result-object v0
goto :goto_6
:catch_13
move-exception v0
invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
:try_end_17
.catchall {:try_start_e .. :try_end_17} :catchall_19
move-result-object v0
goto :goto_6
:catchall_19
move-exception v0
monitor-exit p0
throw v0
.end method
.method public readResponse()Lcom/sun/mail/iap/Response;
.registers 2
invoke-static {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readResponse(Lcom/sun/mail/iap/Protocol;)Lcom/sun/mail/imap/protocol/IMAPResponse;
move-result-object v0
return-object v0
.end method
.method public rename(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/sun/mail/iap/Argument;
invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v2, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "RENAME"
invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method
.method public sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 13
const/4 v6, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;
if-nez v0, :cond_5c
:try_start_6
const-string v0, "com.sun.mail.imap.protocol.IMAPSaslAuthenticator"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const/4 v2, 0x6
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Lcom/sun/mail/imap/protocol/IMAPProtocol;
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x2
const-class v4, Ljava/util/Properties;
aput-object v4, v2, v3
const/4 v3, 0x3
sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
const/4 v3, 0x4
const-class v4, Ljava/io/PrintStream;
aput-object v4, v2, v3
const/4 v3, 0x5
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v2
const/4 v0, 0x6
new-array v3, v0, [Ljava/lang/Object;
const/4 v0, 0x0
aput-object p0, v3, v0
const/4 v0, 0x1
iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;
aput-object v4, v3, v0
const/4 v0, 0x2
iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;
aput-object v4, v3, v0
const/4 v4, 0x3
iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z
if-eqz v0, :cond_87
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
:goto_48
aput-object v0, v3, v4
const/4 v0, 0x4
iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;
aput-object v4, v3, v0
const/4 v0, 0x5
iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->host:Ljava/lang/String;
aput-object v4, v3, v0
invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/protocol/SaslAuthenticator;
iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;
:try_end_5c
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5c} :catch_8a
:cond_5c
if-eqz p1, :cond_b6
array-length v0, p1
if-lez v0, :cond_b6
new-instance v2, Ljava/util/ArrayList;
array-length v0, p1
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
move v0, v1
:goto_68
array-length v1, p1
if-lt v0, v1, :cond_a4
move-object v0, v2
:goto_6c
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
new-array v1, v1, [Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
check-cast v1, [Ljava/lang/String;
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-interface/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/SaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_86
iput-boolean v6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
:cond_86
:goto_86
return-void
:cond_87
:try_start_87
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
:try_end_89
.catch Ljava/lang/Exception; {:try_start_87 .. :try_end_89} :catch_8a
goto :goto_48
:catch_8a
move-exception v0
iget-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z
if-eqz v1, :cond_86
iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "IMAP DEBUG: Can\'t load SASL authenticator: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_86
:cond_a4
iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;
aget-object v3, p1, v0
invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_b3
aget-object v1, p1, v0
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_b3
add-int/lit8 v0, v0, 0x1
goto :goto_68
:cond_b6
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;
goto :goto_6c
.end method
.method public search(Ljavax/mail/search/SearchTerm;)[I
.registers 3
const-string v0, "ALL"
invoke-direct {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I
move-result-object v0
return-object v0
.end method
.method public search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I
.registers 4
invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I
move-result-object v0
return-object v0
.end method
.method public select(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
.registers 6
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "SELECT"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
new-instance v1, Lcom/sun/mail/imap/protocol/MailboxInfo;
invoke-direct {v1, v0}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
array-length v2, v0
add-int/lit8 v2, v2, -0x1
aget-object v0, v0, v2
invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v2
if-eqz v2, :cond_35
invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "READ-ONLY"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_39
const/4 v2, 0x1
iput v2, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I
:cond_35
:goto_35
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-object v1
:cond_39
const/4 v2, 0x2
iput v2, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I
goto :goto_35
.end method
.method public setACL(Ljava/lang/String;CLcom/sun/mail/imap/ACL;)V
.registers 8
const-string v0, "ACL"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "ACL not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getRights()Lcom/sun/mail/imap/Rights;
move-result-object v0
invoke-virtual {v0}, Lcom/sun/mail/imap/Rights;->toString()Ljava/lang/String;
move-result-object v0
const/16 v2, 0x2b
if-eq p2, v2, :cond_33
const/16 v2, 0x2d
if-ne p2, v2, :cond_44
:cond_33
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_44
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v0, "SETACL"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aget-object v1, v0, v1
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-void
.end method
.method protected setCapabilities(Lcom/sun/mail/iap/Response;)V
.registers 4
:cond_0
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B
move-result v0
if-lez v0, :cond_a
const/16 v1, 0x5b
if-ne v0, v1, :cond_0
:cond_a
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;
move-result-object v0
const-string v1, "CAPABILITY"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_c
new-instance v0, Ljava/util/HashMap;
const/16 v1, 0xa
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x5
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V
goto :goto_c
.end method
.method public setQuota(Ljavax/mail/Quota;)V
.registers 7
const-string v0, "QUOTA"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "QUOTA not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
iget-object v0, p1, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
new-instance v2, Lcom/sun/mail/iap/Argument;
invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V
iget-object v0, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;
if-eqz v0, :cond_29
const/4 v0, 0x0
:goto_24
iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;
array-length v3, v3
if-lt v0, v3, :cond_3e
:cond_29
invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V
const-string v0, "SETQUOTA"
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v0
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aget-object v1, v0, v1
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-void
:cond_3e
iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;
aget-object v3, v3, v0
iget-object v3, v3, Ljavax/mail/Quota$Resource;->name:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;
aget-object v3, v3, v0
iget-wide v3, v3, Ljavax/mail/Quota$Resource;->limit:J
invoke-virtual {v2, v3, v4}, Lcom/sun/mail/iap/Argument;->writeNumber(J)V
add-int/lit8 v0, v0, 0x1
goto :goto_24
.end method
.method public startTLS()V
.registers 4
:try_start_0
const-string v0, "STARTTLS"
invoke-super {p0, v0}, Lcom/sun/mail/iap/Protocol;->startTLS(Ljava/lang/String;)V
:goto_5
:try_end_5
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_5} :catch_6
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_8
return-void
:catch_6
move-exception v0
throw v0
:catch_8
move-exception v0
const/4 v1, 0x1
new-array v1, v1, [Lcom/sun/mail/iap/Response;
const/4 v2, 0x0
invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
move-result-object v0
aput-object v0, v1, v2
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
goto :goto_5
.end method
.method public status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
.registers 11
const/4 v2, 0x0
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z
move-result v1
if-nez v1, :cond_18
const-string v1, "IMAP4SUNVERSION"
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_18
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "STATUS not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v3, Lcom/sun/mail/iap/Argument;
invoke-direct {v3}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {v3, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
new-instance v4, Lcom/sun/mail/iap/Argument;
invoke-direct {v4}, Lcom/sun/mail/iap/Argument;-><init>()V
if-nez p2, :cond_2d
sget-object p2, Lcom/sun/mail/imap/protocol/Status;->standardItems:[Ljava/lang/String;
:cond_2d
array-length v5, p2
move v1, v0
:goto_2f
if-lt v1, v5, :cond_51
invoke-virtual {v3, v4}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V
const-string v1, "STATUS"
invoke-virtual {p0, v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
move-result-object v4
array-length v1, v4
add-int/lit8 v1, v1, -0x1
aget-object v5, v4, v1
invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v1
if-eqz v1, :cond_85
array-length v6, v4
move v3, v0
move-object v1, v2
:goto_48
if-lt v3, v6, :cond_59
:goto_4a
invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
return-object v1
:cond_51
aget-object v6, p2, v1
invoke-virtual {v4, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
add-int/lit8 v1, v1, 0x1
goto :goto_2f
:cond_59
aget-object v0, v4, v3
instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v0, :cond_63
:goto_5f
:cond_5f
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_48
:cond_63
aget-object v0, v4, v3
check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v7, "STATUS"
invoke-virtual {v0, v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_5f
if-nez v1, :cond_7b
new-instance v1, Lcom/sun/mail/imap/protocol/Status;
invoke-direct {v1, v0}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V
move-object v0, v1
:goto_77
aput-object v2, v4, v3
move-object v1, v0
goto :goto_5f
:cond_7b
new-instance v7, Lcom/sun/mail/imap/protocol/Status;
invoke-direct {v7, v0}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V
invoke-static {v1, v7}, Lcom/sun/mail/imap/protocol/Status;->add(Lcom/sun/mail/imap/protocol/Status;Lcom/sun/mail/imap/protocol/Status;)V
move-object v0, v1
goto :goto_77
:cond_85
move-object v1, v2
goto :goto_4a
.end method
.method public storeFlags(IILjavax/mail/Flags;Z)V
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V
return-void
.end method
.method public storeFlags(ILjavax/mail/Flags;Z)V
.registers 5
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V
return-void
.end method
.method public storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
.registers 5
invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V
return-void
.end method
.method public subscribe(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v1, "SUBSCRIBE"
invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method
.method protected supportsNonSyncLiterals()Z
.registers 2
const-string v0, "LITERAL+"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V
.registers 4
const-string v0, "UIDPLUS"
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Lcom/sun/mail/iap/BadCommandException;
const-string v1, "UID EXPUNGE not supported"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "UID EXPUNGE "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Lcom/sun/mail/imap/protocol/UIDSet;->toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method
.method public unsubscribe(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
const-string v1, "UNSUBSCRIBE"
invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
return-void
.end method