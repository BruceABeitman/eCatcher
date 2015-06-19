.class public Lcom/fsck/k9/mail/store/ImapResponseParser;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"
.field  badDateTimeFormat:Ljava/text/SimpleDateFormat;
.field  mActiveLiteral:Ljava/io/InputStream;
.field  mDateTimeFormat:Ljava/text/SimpleDateFormat;
.field  mIn:Lcom/fsck/k9/PeekableInputStream;
.method public constructor <init>(Lcom/fsck/k9/PeekableInputStream;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "dd-MMM-yyyy HH:mm:ss Z"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mDateTimeFormat:Ljava/text/SimpleDateFormat;
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "dd MMM yyyy HH:mm:ss Z"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->badDateTimeFormat:Ljava/text/SimpleDateFormat;
iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/PeekableInputStream;
return-void
.end method
.method static synthetic access$100(Lcom/fsck/k9/mail/store/ImapResponseParser;Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
.registers 2
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readTokens(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
return-void
.end method
.method private expect(C)I
.registers 8
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/PeekableInputStream;
invoke-virtual {v1}, Lcom/fsck/k9/PeekableInputStream;->read()I
move-result v0
if-eq v0, p1, :cond_34
new-instance v1, Ljava/io/IOException;
const-string v2, "Expected %04x (%c) but got %04x (%c)"
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x2
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x3
int-to-char v5, v0
invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_34
return v0
.end method
.method private parseAtom()Ljava/lang/String;
.registers 8
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
:goto_5
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/PeekableInputStream;
invoke-virtual {v2}, Lcom/fsck/k9/PeekableInputStream;->peek()I
move-result v0
const/4 v2, -0x1
if-ne v0, v2, :cond_16
new-instance v2, Ljava/io/IOException;
const-string v3, "parseAtom(): end of stream reached"
invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
:cond_16
const/16 v2, 0x28
if-eq v0, v2, :cond_3c
const/16 v2, 0x29
if-eq v0, v2, :cond_3c
const/16 v2, 0x7b
if-eq v0, v2, :cond_3c
const/16 v2, 0x20
if-eq v0, v2, :cond_3c
const/16 v2, 0x5b
if-eq v0, v2, :cond_3c
const/16 v2, 0x5d
if-eq v0, v2, :cond_3c
const/16 v2, 0x22
if-eq v0, v2, :cond_3c
if-ltz v0, :cond_38
const/16 v2, 0x1f
if-le v0, v2, :cond_3c
:cond_38
const/16 v2, 0x7f
if-ne v0, v2, :cond_64
:cond_3c
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v2
if-nez v2, :cond_5f
new-instance v2, Ljava/io/IOException;
const-string v3, "parseAtom(): (%04x %c)"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
:cond_5f
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
:cond_64
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/PeekableInputStream;
invoke-virtual {v2}, Lcom/fsck/k9/PeekableInputStream;->read()I
move-result v2
int-to-char v2, v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_5
.end method
.method private parseCommandContinuationRequest()Z
.registers 2
const/16 v0, 0x2b
invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
const/16 v0, 0x20
invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
const/4 v0, 0x1
return v0
.end method
.method private parseList()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
.registers 4
const/16 v2, 0x28
invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
new-instance v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;-><init>(Lcom/fsck/k9/mail/store/ImapResponseParser;)V
:goto_a
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseToken()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_11
:goto_10
:cond_10
return-object v0
:cond_11
instance-of v2, v1, Ljava/io/InputStream;
if-eqz v2, :cond_19
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z
goto :goto_10
:cond_19
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_10
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z
goto :goto_a
.end method
.method private parseLiteral()Ljava/io/InputStream;
.registers 4
const/16 v2, 0x7b
invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
const/16 v2, 0x7d
invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readStringUntil(C)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
const/16 v2, 0xd
invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
const/16 v2, 0xa
invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
new-instance v0, Lcom/fsck/k9/FixedLengthInputStream;
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/PeekableInputStream;
invoke-direct {v0, v2, v1}, Lcom/fsck/k9/FixedLengthInputStream;-><init>(Ljava/io/InputStream;I)V
return-object v0
.end method
.method private parseQuoted()Ljava/lang/String;
.registers 2
const/16 v0, 0x22
invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readStringUntil(C)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private parseSequence()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
.registers 4
const/16 v2, 0x5b
invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
new-instance v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;-><init>(Lcom/fsck/k9/mail/store/ImapResponseParser;)V
:goto_a
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseToken()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_11
:goto_10
:cond_10
return-object v0
:cond_11
instance-of v2, v1, Ljava/io/InputStream;
if-eqz v2, :cond_19
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z
goto :goto_10
:cond_19
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_10
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z
goto :goto_a
.end method
.method private parseTaggedResponse()Ljava/lang/String;
.registers 3
const/16 v1, 0x20
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readStringUntil(C)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private parseToken()Ljava/lang/Object;
.registers 9
const/16 v7, 0x20
const/16 v6, 0xd
const/16 v5, 0x9
const/4 v4, 0x0
const/16 v3, 0xa
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;
if-eqz v1, :cond_18
:cond_d
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->read()I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_d
iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;
:cond_18
:goto_18
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/PeekableInputStream;
invoke-virtual {v1}, Lcom/fsck/k9/PeekableInputStream;->peek()I
move-result v0
const/16 v1, 0x28
if-ne v0, v1, :cond_27
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseList()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-result-object v1
:goto_26
return-object v1
:cond_27
const/16 v1, 0x5b
if-ne v0, v1, :cond_30
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseSequence()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-result-object v1
goto :goto_26
:cond_30
const/16 v1, 0x29
if-ne v0, v1, :cond_3c
const/16 v1, 0x29
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
const-string v1, ")"
goto :goto_26
:cond_3c
const/16 v1, 0x5d
if-ne v0, v1, :cond_48
const/16 v1, 0x5d
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
const-string v1, "]"
goto :goto_26
:cond_48
const/16 v1, 0x22
if-ne v0, v1, :cond_51
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseQuoted()Ljava/lang/String;
move-result-object v1
goto :goto_26
:cond_51
const/16 v1, 0x7b
if-ne v0, v1, :cond_5e
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseLiteral()Ljava/io/InputStream;
move-result-object v1
iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;
goto :goto_26
:cond_5e
if-ne v0, v7, :cond_64
invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
goto :goto_18
:cond_64
if-ne v0, v6, :cond_6e
invoke-direct {p0, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
move-object v1, v4
goto :goto_26
:cond_6e
if-ne v0, v3, :cond_75
invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
move-object v1, v4
goto :goto_26
:cond_75
if-ne v0, v5, :cond_7b
invoke-direct {p0, v5}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
goto :goto_18
:cond_7b
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseAtom()Ljava/lang/String;
move-result-object v1
goto :goto_26
.end method
.method private parseUntaggedResponse()V
.registers 2
const/16 v0, 0x2a
invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
const/16 v0, 0x20
invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I
return-void
.end method
.method private readStringUntil(C)Ljava/lang/String;
.registers 6
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
:goto_5
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/PeekableInputStream;
invoke-virtual {v2}, Lcom/fsck/k9/PeekableInputStream;->read()I
move-result v0
const/4 v2, -0x1
if-eq v0, v2, :cond_1a
if-ne v0, p1, :cond_15
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
:cond_15
int-to-char v2, v0
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_5
:cond_1a
new-instance v2, Ljava/io/IOException;
const-string v3, "readQuotedString(): end of stream reached"
invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method private readTokens(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
.registers 4
invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->clear()V
:cond_3
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readToken()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_12
if-eqz p1, :cond_e
invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->add(Ljava/lang/Object;)Z
:cond_e
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;
if-eqz v1, :cond_3
:cond_12
if-nez v0, :cond_19
const/4 v1, 0x1
:goto_15
#setter for: Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mCompleted:Z
invoke-static {p1, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->access$002(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Z)Z
return-void
:cond_19
const/4 v1, 0x0
goto :goto_15
.end method
.method public readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
.registers 6
new-instance v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
invoke-direct {v1, p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;-><init>(Lcom/fsck/k9/mail/store/ImapResponseParser;)V
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;
if-eqz v2, :cond_15
:cond_9
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;
invoke-virtual {v2}, Ljava/io/InputStream;->read()I
move-result v2
const/4 v3, -0x1
if-ne v2, v3, :cond_9
const/4 v2, 0x0
iput-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;
:cond_15
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/PeekableInputStream;
invoke-virtual {v2}, Lcom/fsck/k9/PeekableInputStream;->peek()I
move-result v0
const/16 v2, 0x2a
if-ne v0, v2, :cond_46
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseUntaggedResponse()V
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readTokens(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
:goto_25
sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v2, :cond_45
const-string v2, "k9"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "<<< "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_45
return-object v1
:cond_46
const/16 v2, 0x2b
if-ne v0, v2, :cond_54
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseCommandContinuationRequest()Z
move-result v2
iput-boolean v2, v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mCommandContinuationRequested:Z
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readTokens(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
goto :goto_25
:cond_54
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseTaggedResponse()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readTokens(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
goto :goto_25
.end method
.method public readToken()Ljava/lang/Object;
.registers 3
:cond_0
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseToken()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_16
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_16
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_0
:cond_16
return-object v0
.end method