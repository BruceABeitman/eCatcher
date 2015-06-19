.class  Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
.super Ljava/lang/Object;
.source "ImapStore.java"
.field protected capabilities:Ljava/util/Set;
.field private mIn:Lcom/fsck/k9/PeekableInputStream;
.field private mNextCommandTag:I
.field private mOut:Ljava/io/OutputStream;
.field private mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;
.field private mSocket:Ljava/net/Socket;
.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;
.method constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;
return-void
.end method
.method static synthetic access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
return-void
.end method
.method static synthetic access$100(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Z
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->isOpen()Z
move-result v0
return v0
.end method
.method static synthetic access$1000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Ljava/io/OutputStream;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
return-object v0
.end method
.method static synthetic access$1100(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$2000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendContinuation(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$300(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method static synthetic access$800(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
move-result-object v0
return-object v0
.end method
.method private close()V
.registers 3
const/4 v1, 0x0
:try_start_1
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/PeekableInputStream;
invoke-virtual {v0}, Lcom/fsck/k9/PeekableInputStream;->close()V
:try_start_6
:goto_6
:try_end_6
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1b
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:goto_b
:try_start_b
:try_end_b
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_19
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:goto_10
:try_end_10
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_17
iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/PeekableInputStream;
iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
return-void
:catch_17
move-exception v0
goto :goto_10
:catch_19
move-exception v0
goto :goto_b
:catch_1b
move-exception v0
goto :goto_6
.end method
.method private escapeString(Ljava/lang/String;)Ljava/lang/String;
.registers 5
if-nez p1, :cond_4
const/4 v1, 0x0
:goto_3
return-object v1
:cond_4
const-string v1, "\\\\"
const-string v2, "\\\\\\\\"
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "\""
const-string v2, "\\\\\""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
move-object v1, v0
goto :goto_3
.end method
.method private executeSimpleCommand(Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;
.registers 15
const/4 v9, 0x1
const-string v10, " for "
const-string v8, "k9"
move-object v0, p1
if-eqz p2, :cond_e
sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z
if-nez v6, :cond_e
const-string v0, "*sensitive*"
:cond_e
sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v6, :cond_38
const-string v6, "k9"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Sending IMAP command "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " on connection "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_38
invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v5
sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v6, :cond_70
const-string v6, "k9"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Sent IMAP command "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " with tag "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " for "
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_70
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
:cond_75
iget-object v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;
invoke-virtual {v6}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
move-result-object v3
sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v6, :cond_9f
const-string v6, "k9"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "<<<"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_9f
iget-object v6, v3, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
if-eqz v6, :cond_159
iget-object v6, v3, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_159
const-string v6, "k9"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "After sending tag "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, ", got tag response from previous command "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " for "
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_df
:cond_df
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_112
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
iget-object v6, v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
if-nez v6, :cond_10e
invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I
move-result v6
const/4 v7, 0x2
if-lt v6, v7, :cond_10e
const-string v6, "EXISTS"
invoke-virtual {v1, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_df
const-string v6, "EXPUNGE"
invoke-virtual {v1, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_df
:cond_10e
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
goto :goto_df
:cond_112
const/4 v6, 0x0
iput-object v6, v3, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
:goto_115
iget-object v6, v3, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
if-eqz v6, :cond_75
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I
move-result v6
if-lt v6, v9, :cond_12c
const/4 v6, 0x0
invoke-virtual {v3, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v6
const-string v7, "OK"
invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_162
:cond_12c
new-instance v6, Lcom/fsck/k9/mail/store/ImapStore$ImapException;
iget-object v7, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Command: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "; response: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getAlertText()Ljava/lang/String;
move-result-object v9
invoke-direct {v6, v7, v8, v9}, Lcom/fsck/k9/mail/store/ImapStore$ImapException;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V
throw v6
:cond_159
if-eqz p3, :cond_15e
invoke-interface {p3, v3}, Lcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;->handleAsyncUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
:cond_15e
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_115
:cond_162
return-object v4
.end method
.method private getLogId()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "conn"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private isOpen()Z
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/PeekableInputStream;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z
move-result v0
if-nez v0, :cond_1e
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method private readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
.registers 6
:try_start_0
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;
invoke-virtual {v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
move-result-object v1
sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v2, :cond_2a
const-string v2, "k9"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "<<<"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2a
:try_end_2a
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b
return-object v1
:catch_2b
move-exception v2
move-object v0, v2
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
throw v0
.end method
.method private sendContinuation(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
const/16 v1, 0xd
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
const/16 v1, 0xa
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_40
const-string v0, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ">>> "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_40
return-void
.end method
.method protected authCramMD5()V
.registers 29
:try_start_0
const-string v24, "AUTHENTICATE CRAM-MD5"
const/16 v25, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v22
const/16 v24, 0x400
move/from16 v0, v24
new-array v0, v0, [B
move-object v8, v0
const/4 v6, 0x0
const/4 v10, 0x0
:goto_17
move-object v0, v8
array-length v0, v0
move/from16 v24, v0
move v0, v10
move/from16 v1, v24
if-ge v0, v1, :cond_3c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/PeekableInputStream;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Lcom/fsck/k9/PeekableInputStream;->read()I
move-result v24
move/from16 v0, v24
int-to-byte v0, v0
move/from16 v24, v0
aput-byte v24, v8, v10
aget-byte v24, v8, v10
const/16 v25, 0xa
move/from16 v0, v24
move/from16 v1, v25
if-ne v0, v1, :cond_51
move v6, v10
:cond_3c
if-nez v6, :cond_54
new-instance v24, Lcom/fsck/k9/mail/AuthenticationFailedException;
const-string v25, "Error negotiating CRAM-MD5: nonce too long."
invoke-direct/range {v24 .. v25}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V
throw v24
:try_end_46
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_46} :catch_46
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_46} :catch_2a2
:catch_46
move-exception v24
move-object/from16 v11, v24
new-instance v24, Lcom/fsck/k9/mail/AuthenticationFailedException;
const-string v25, "CRAM-MD5 Auth Failed."
invoke-direct/range {v24 .. v25}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V
throw v24
:cond_51
add-int/lit8 v10, v10, 0x1
goto :goto_17
:cond_54
const/16 v24, 0x2
sub-int v24, v6, v24
:try_start_58
move/from16 v0, v24
new-array v0, v0, [B
move-object v7, v0
const/16 v24, 0x1
const/16 v25, 0x0
const/16 v26, 0x2
sub-int v26, v6, v26
move-object v0, v8
move/from16 v1, v24
move-object v2, v7
move/from16 v3, v25
move/from16 v4, v26
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v7}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B
move-result-object v14
sget-boolean v24, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v24, :cond_c0
const-string v24, "k9"
new-instance v25, Ljava/lang/StringBuilder;
invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V
const-string v26, "Got nonce: "
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
new-instance v26, Ljava/lang/String;
const-string v27, "US-ASCII"
move-object/from16 v0, v26
move-object v1, v7
move-object/from16 v2, v27
invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v24, "k9"
new-instance v25, Ljava/lang/StringBuilder;
invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V
const-string v26, "Plaintext nonce: "
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
new-instance v26, Ljava/lang/String;
const-string v27, "US-ASCII"
move-object/from16 v0, v26
move-object v1, v14
move-object/from16 v2, v27
invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_c0
const/16 v24, 0x40
move/from16 v0, v24
new-array v0, v0, [B
move-object v12, v0
const/16 v24, 0x40
move/from16 v0, v24
new-array v0, v0, [B
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v24, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mPassword:Ljava/lang/String;
invoke-static/range {v24 .. v24}, Lcom/fsck/k9/mail/store/ImapStore;->access$1700(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v24
const-string v25, "US-ASCII"
invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v21
const-string v24, "MD5"
invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v13
move-object/from16 v0, v21
array-length v0, v0
move/from16 v24, v0
const/16 v25, 0x40
move/from16 v0, v24
move/from16 v1, v25
if-le v0, v1, :cond_f9
move-object v0, v13
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v21
:cond_f9
const/16 v24, 0x0
const/16 v25, 0x0
move-object/from16 v0, v21
array-length v0, v0
move/from16 v26, v0
move-object/from16 v0, v21
move/from16 v1, v24
move-object v2, v12
move/from16 v3, v25
move/from16 v4, v26
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/16 v24, 0x0
const/16 v25, 0x0
move-object/from16 v0, v21
array-length v0, v0
move/from16 v26, v0
move-object/from16 v0, v21
move/from16 v1, v24
move-object/from16 v2, v16
move/from16 v3, v25
move/from16 v4, v26
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v10, 0x0
:goto_125
move-object v0, v12
array-length v0, v0
move/from16 v24, v0
move v0, v10
move/from16 v1, v24
if-ge v0, v1, :cond_13c
aget-byte v24, v12, v10
xor-int/lit8 v24, v24, 0x36
move/from16 v0, v24
int-to-byte v0, v0
move/from16 v24, v0
aput-byte v24, v12, v10
add-int/lit8 v10, v10, 0x1
goto :goto_125
:cond_13c
const/4 v10, 0x0
:goto_13d
move-object/from16 v0, v16
array-length v0, v0
move/from16 v24, v0
move v0, v10
move/from16 v1, v24
if-ge v0, v1, :cond_155
aget-byte v24, v16, v10
xor-int/lit8 v24, v24, 0x5c
move/from16 v0, v24
int-to-byte v0, v0
move/from16 v24, v0
aput-byte v24, v16, v10
add-int/lit8 v10, v10, 0x1
goto :goto_13d
:cond_155
invoke-virtual {v13, v12}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v13, v14}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v9
move-object v0, v13
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v13, v9}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v20
new-instance v24, Ljava/lang/StringBuilder;
invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mUsername:Ljava/lang/String;
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1600(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v25
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
const-string v25, " "
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
new-instance v25, Ljava/lang/String;
invoke-static/range {v20 .. v20}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C
move-result-object v26
invoke-direct/range {v25 .. v26}, Ljava/lang/String;-><init>([C)V
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
const-string v24, "US-ASCII"
move-object/from16 v0, v17
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v24
invoke-static/range {v24 .. v24}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B
move-result-object v5
sget-boolean v24, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v24, :cond_204
const-string v24, "k9"
new-instance v25, Ljava/lang/StringBuilder;
invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V
const-string v26, "Username == "
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v26, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mUsername:Ljava/lang/String;
invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/store/ImapStore;->access$1600(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v26
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v24, "k9"
new-instance v25, Ljava/lang/StringBuilder;
invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V
const-string v26, "plainCRAM: "
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
move-object/from16 v0, v25
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v24, "k9"
new-instance v25, Ljava/lang/StringBuilder;
invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V
const-string v26, "b64CRAM: "
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
new-instance v26, Ljava/lang/String;
const-string v27, "US-ASCII"
move-object/from16 v0, v26
move-object v1, v5
move-object/from16 v2, v27
invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_204
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
move-object/from16 v24, v0
move-object/from16 v0, v24
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
move-object/from16 v24, v0
const/16 v25, 0x2
move/from16 v0, v25
new-array v0, v0, [B
move-object/from16 v25, v0
fill-array-data v25, :array_2b2
invoke-virtual/range {v24 .. v25}, Ljava/io/OutputStream;->write([B)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->flush()V
const/16 v18, 0x0
const/4 v10, 0x0
:goto_230
move-object v0, v8
array-length v0, v0
move/from16 v24, v0
move v0, v10
move/from16 v1, v24
if-ge v0, v1, :cond_256
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/PeekableInputStream;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Lcom/fsck/k9/PeekableInputStream;->read()I
move-result v24
move/from16 v0, v24
int-to-byte v0, v0
move/from16 v24, v0
aput-byte v24, v8, v10
aget-byte v24, v8, v10
const/16 v25, 0xa
move/from16 v0, v24
move/from16 v1, v25
if-ne v0, v1, :cond_2ad
move/from16 v18, v10
:cond_256
new-instance v24, Ljava/lang/StringBuilder;
invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v24
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
const-string v25, " OK"
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
new-instance v19, Ljava/lang/String;
const/16 v24, 0x0
move-object/from16 v0, v19
move-object v1, v8
move/from16 v2, v24
move/from16 v3, v18
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V
move-object/from16 v0, v19
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v24
if-nez v24, :cond_2b0
new-instance v24, Lcom/fsck/k9/mail/AuthenticationFailedException;
new-instance v25, Ljava/lang/StringBuilder;
invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V
const-string v26, "CRAM-MD5 error: "
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
move-object/from16 v0, v25
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
invoke-direct/range {v24 .. v25}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V
throw v24
:catch_2a2
:try_end_2a2
.catch Ljava/io/IOException; {:try_start_58 .. :try_end_2a2} :catch_46
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_58 .. :try_end_2a2} :catch_2a2
move-exception v24
move-object/from16 v15, v24
new-instance v24, Lcom/fsck/k9/mail/AuthenticationFailedException;
const-string v25, "MD5 Not Available."
invoke-direct/range {v24 .. v25}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V
throw v24
:cond_2ad
add-int/lit8 v10, v10, 0x1
goto :goto_230
:cond_2b0
return-void
nop
:array_2b2
.array-data 0x1
0xdt
0xat
.end array-data
.end method
.method public executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected hasCapability(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected isIdleCapable()Z
.registers 4
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_36
const-string v0, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Connection "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " has "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;
invoke-interface {v2}, Ljava/util/Set;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " capabilities"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_36
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;
const-string v1, "IDLE"
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public open()V
.registers 31
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->isOpen()Z
move-result v25
if-eqz v25, :cond_7
:goto_6
:cond_6
return-void
:cond_7
const/4 v4, 0x0
const/16 v25, 0x1
move/from16 v0, v25
move-object/from16 v1, p0
iput v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mNextCommandTag:I
:try_start_10
const-string v25, "networkaddress.cache.ttl"
const-string v26, "0"
invoke-static/range {v25 .. v26}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
:goto_17
:try_start_17
:try_end_17
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_1d3
new-instance v22, Ljava/net/InetSocketAddress;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mHost:Ljava/lang/String;
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v25
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v26, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mPort:I
invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/store/ImapStore;->access$1300(Lcom/fsck/k9/mail/store/ImapStore;)I
move-result v26
move-object/from16 v0, v22
move-object/from16 v1, v25
move/from16 v2, v26
invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
sget-boolean v25, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v25, :cond_78
const-string v25, "k9"
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v27, "Connection "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v27, " connecting to "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v27, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mHost:Ljava/lang/String;
invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v27, " @ IP addr "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_78
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1400(Lcom/fsck/k9/mail/store/ImapStore;)I
move-result v25
const/16 v26, 0x3
move/from16 v0, v25
move/from16 v1, v26
if-eq v0, v1, :cond_9c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1400(Lcom/fsck/k9/mail/store/ImapStore;)I
move-result v25
const/16 v26, 0x4
move/from16 v0, v25
move/from16 v1, v26
if-ne v0, v1, :cond_1ff
:cond_9c
const-string v25, "TLS"
invoke-static/range {v25 .. v25}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1400(Lcom/fsck/k9/mail/store/ImapStore;)I
move-result v25
const/16 v26, 0x3
move/from16 v0, v25
move/from16 v1, v26
if-ne v0, v1, :cond_1f9
const/16 v25, 0x1
move/from16 v21, v25
:goto_b8
const/16 v25, 0x0
const/16 v26, 0x1
move/from16 v0, v26
new-array v0, v0, [Ljavax/net/ssl/TrustManager;
move-object/from16 v26, v0
const/16 v27, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v28, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mHost:Ljava/lang/String;
invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$1200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v28
move-object/from16 v0, v28
move/from16 v1, v21
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;
move-result-object v28
aput-object v28, v26, v27
new-instance v27, Ljava/security/SecureRandom;
invoke-direct/range {v27 .. v27}, Ljava/security/SecureRandom;-><init>()V
move-object/from16 v0, v23
move-object/from16 v1, v25
move-object/from16 v2, v26
move-object/from16 v3, v27
invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
move-result-object v25
move-object/from16 v0, v25
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
move-object/from16 v25, v0
const/16 v26, 0x2710
move-object/from16 v0, v25
move-object/from16 v1, v22
move/from16 v2, v26
invoke-static {v0, v1, v2}, Ldroidbox/java/net/Socket;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
:goto_107
const v25, 0xea60
move-object/from16 v0, p0
move/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->setReadTimeout(I)V
new-instance v25, Lcom/fsck/k9/PeekableInputStream;
new-instance v26, Ljava/io/BufferedInputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
move-object/from16 v27, v0
invoke-virtual/range {v27 .. v27}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v27
const/16 v28, 0x400
invoke-direct/range {v26 .. v28}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
invoke-direct/range {v25 .. v26}, Lcom/fsck/k9/PeekableInputStream;-><init>(Ljava/io/InputStream;)V
move-object/from16 v0, v25
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/PeekableInputStream;
new-instance v25, Lcom/fsck/k9/mail/store/ImapResponseParser;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/PeekableInputStream;
move-object/from16 v26, v0
invoke-direct/range {v25 .. v26}, Lcom/fsck/k9/mail/store/ImapResponseParser;-><init>(Lcom/fsck/k9/PeekableInputStream;)V
move-object/from16 v0, v25
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
move-object/from16 v25, v0
invoke-virtual/range {v25 .. v25}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v25
move-object/from16 v0, v25
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;
move-object/from16 v25, v0
invoke-virtual/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
move-result-object v17
sget-boolean v25, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v25, :cond_180
const-string v25, "k9"
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v27, "<<<"
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_180
const-string v25, "CAPABILITY"
move-object/from16 v0, p0
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v20
invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I
move-result v25
const/16 v26, 0x2
move/from16 v0, v25
move/from16 v1, v26
if-eq v0, v1, :cond_22d
new-instance v25, Lcom/fsck/k9/mail/MessagingException;
const-string v26, "Invalid CAPABILITY response received"
invoke-direct/range {v25 .. v26}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v25
:try_end_19e
.catchall {:try_start_17 .. :try_end_19e} :catchall_1b0
.catch Ljavax/net/ssl/SSLException; {:try_start_17 .. :try_end_19e} :catch_19e
.catch Ljava/security/GeneralSecurityException; {:try_start_17 .. :try_end_19e} :catch_21d
.catch Ljava/net/ConnectException; {:try_start_17 .. :try_end_19e} :catch_278
:catch_19e
move-exception v25
move-object/from16 v9, v25
:try_start_1a1
new-instance v25, Lcom/fsck/k9/mail/CertificateValidationException;
invoke-virtual {v9}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;
move-result-object v26
move-object/from16 v0, v25
move-object/from16 v1, v26
move-object v2, v9
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v25
:try_end_1b0
.catchall {:try_start_1a1 .. :try_end_1b0} :catchall_1b0
:catchall_1b0
move-exception v25
if-nez v4, :cond_1d2
const-string v26, "k9"
new-instance v27, Ljava/lang/StringBuilder;
invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V
const-string v28, "Failed to login, closing connection for "
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v28
invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v27
invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
:cond_1d2
throw v25
:catch_1d3
move-exception v25
move-object/from16 v9, v25
const-string v25, "k9"
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v27, "Could not set DNS ttl to 0 for "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
move-object/from16 v0, v25
move-object/from16 v1, v26
move-object v2, v9
invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_17
:cond_1f9
const/16 v25, 0x0
move/from16 v21, v25
goto/16 :goto_b8
:try_start_1ff
:cond_1ff
new-instance v25, Ljava/net/Socket;
invoke-direct/range {v25 .. v25}, Ljava/net/Socket;-><init>()V
move-object/from16 v0, v25
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
move-object/from16 v25, v0
const/16 v26, 0x2710
move-object/from16 v0, v25
move-object/from16 v1, v22
move/from16 v2, v26
invoke-static {v0, v1, v2}, Ldroidbox/java/net/Socket;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
:try_end_21b
.catchall {:try_start_1ff .. :try_end_21b} :catchall_1b0
.catch Ljavax/net/ssl/SSLException; {:try_start_1ff .. :try_end_21b} :catch_19e
.catch Ljava/security/GeneralSecurityException; {:try_start_1ff .. :try_end_21b} :catch_21d
.catch Ljava/net/ConnectException; {:try_start_1ff .. :try_end_21b} :catch_278
goto/16 :goto_107
:catch_21d
move-exception v25
move-object/from16 v11, v25
:try_start_220
new-instance v25, Lcom/fsck/k9/mail/MessagingException;
const-string v26, "Unable to open connection to IMAP server due to security error."
move-object/from16 v0, v25
move-object/from16 v1, v26
move-object v2, v11
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v25
:try_end_22d
.catchall {:try_start_220 .. :try_end_22d} :catchall_1b0
:cond_22d
:try_start_22d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;
move-object/from16 v25, v0
invoke-interface/range {v25 .. v25}, Ljava/util/Set;->clear()V
invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v12
:cond_23a
invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
move-result v25
if-eqz v25, :cond_2cc
invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v19
check-cast v19, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
move-object/from16 v0, v19
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
move-object/from16 v25, v0
if-nez v25, :cond_23a
invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I
move-result v25
if-lez v25, :cond_23a
invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->iterator()Ljava/util/Iterator;
move-result-object v13
:goto_258
:cond_258
invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
move-result v25
if-eqz v25, :cond_23a
invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
move-object v0, v6
instance-of v0, v0, Ljava/lang/String;
move/from16 v25, v0
if-eqz v25, :cond_258
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;
move-object/from16 v25, v0
check-cast v6, Ljava/lang/String;
move-object/from16 v0, v25
move-object v1, v6
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:try_end_277
.catchall {:try_start_22d .. :try_end_277} :catchall_1b0
.catch Ljavax/net/ssl/SSLException; {:try_start_22d .. :try_end_277} :catch_19e
.catch Ljava/security/GeneralSecurityException; {:try_start_22d .. :try_end_277} :catch_21d
.catch Ljava/net/ConnectException; {:try_start_22d .. :try_end_277} :catch_278
goto :goto_258
:catch_278
move-exception v25
move-object/from16 v7, v25
:try_start_27b
invoke-virtual {v7}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;
move-result-object v8
const-string v25, "-"
move-object v0, v8
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v24
if-eqz v24, :cond_66f
move-object/from16 v0, v24
array-length v0, v0
move/from16 v25, v0
const/16 v26, 0x1
move/from16 v0, v25
move/from16 v1, v26
if-le v0, v1, :cond_66f
const/16 v25, 0x1
aget-object v25, v24, v25
if-eqz v25, :cond_66f
const-string v25, "k9"
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v27, "Stripping host/port from ConnectionException for "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
move-object/from16 v0, v25
move-object/from16 v1, v26
move-object v2, v7
invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
new-instance v25, Ljava/net/ConnectException;
const/16 v26, 0x1
aget-object v26, v24, v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v26
invoke-direct/range {v25 .. v26}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V
throw v25
:try_end_2cc
.catchall {:try_start_27b .. :try_end_2cc} :catchall_1b0
:cond_2cc
:try_start_2cc
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1400(Lcom/fsck/k9/mail/store/ImapStore;)I
move-result v25
const/16 v26, 0x1
move/from16 v0, v25
move/from16 v1, v26
if-eq v0, v1, :cond_2f0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1400(Lcom/fsck/k9/mail/store/ImapStore;)I
move-result v25
const/16 v26, 0x2
move/from16 v0, v25
move/from16 v1, v26
if-ne v0, v1, :cond_3cf
:cond_2f0
const/16 v25, 0x0
move-object/from16 v0, v20
move/from16 v1, v25
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
const-string v25, "STARTTLS"
move-object v0, v5
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->contains(Ljava/lang/Object;)Z
move-result v25
if-eqz v25, :cond_594
const-string v25, "STARTTLS"
move-object/from16 v0, p0
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
const-string v25, "TLS"
invoke-static/range {v25 .. v25}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1400(Lcom/fsck/k9/mail/store/ImapStore;)I
move-result v25
const/16 v26, 0x2
move/from16 v0, v25
move/from16 v1, v26
if-ne v0, v1, :cond_58e
const/16 v25, 0x1
move/from16 v21, v25
:goto_32c
const/16 v25, 0x0
const/16 v26, 0x1
move/from16 v0, v26
new-array v0, v0, [Ljavax/net/ssl/TrustManager;
move-object/from16 v26, v0
const/16 v27, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v28, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mHost:Ljava/lang/String;
invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$1200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v28
move-object/from16 v0, v28
move/from16 v1, v21
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;
move-result-object v28
aput-object v28, v26, v27
new-instance v27, Ljava/security/SecureRandom;
invoke-direct/range {v27 .. v27}, Ljava/security/SecureRandom;-><init>()V
move-object/from16 v0, v23
move-object/from16 v1, v25
move-object/from16 v2, v26
move-object/from16 v3, v27
invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v25
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
move-object/from16 v26, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v27, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mHost:Ljava/lang/String;
invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v27
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v28, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mPort:I
invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$1300(Lcom/fsck/k9/mail/store/ImapStore;)I
move-result v28
const/16 v29, 0x1
invoke-virtual/range {v25 .. v29}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v25
move-object/from16 v0, v25
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
move-object/from16 v25, v0
const v26, 0xea60
invoke-virtual/range {v25 .. v26}, Ljava/net/Socket;->setSoTimeout(I)V
new-instance v25, Lcom/fsck/k9/PeekableInputStream;
new-instance v26, Ljava/io/BufferedInputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
move-object/from16 v27, v0
invoke-virtual/range {v27 .. v27}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v27
const/16 v28, 0x400
invoke-direct/range {v26 .. v28}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
invoke-direct/range {v25 .. v26}, Lcom/fsck/k9/PeekableInputStream;-><init>(Ljava/io/InputStream;)V
move-object/from16 v0, v25
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/PeekableInputStream;
new-instance v25, Lcom/fsck/k9/mail/store/ImapResponseParser;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/PeekableInputStream;
move-object/from16 v26, v0
invoke-direct/range {v25 .. v26}, Lcom/fsck/k9/mail/store/ImapResponseParser;-><init>(Lcom/fsck/k9/PeekableInputStream;)V
move-object/from16 v0, v25
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
move-object/from16 v25, v0
invoke-virtual/range {v25 .. v25}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v25
move-object/from16 v0, v25
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
:cond_3cf
new-instance v25, Ljava/io/BufferedOutputStream;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
move-object/from16 v26, v0
const/16 v27, 0x400
invoke-direct/range {v25 .. v27}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
move-object/from16 v0, v25
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
:try_end_3e2
.catchall {:try_start_2cc .. :try_end_3e2} :catchall_1b0
.catch Ljavax/net/ssl/SSLException; {:try_start_2cc .. :try_end_3e2} :catch_19e
.catch Ljava/security/GeneralSecurityException; {:try_start_2cc .. :try_end_3e2} :catch_21d
.catch Ljava/net/ConnectException; {:try_start_2cc .. :try_end_3e2} :catch_278
:try_start_3e2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mAuthType:Lcom/fsck/k9/mail/store/ImapStore$AuthType;
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1500(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$AuthType;
move-result-object v25
sget-object v26, Lcom/fsck/k9/mail/store/ImapStore$AuthType;->CRAM_MD5:Lcom/fsck/k9/mail/store/ImapStore$AuthType;
move-object/from16 v0, v25
move-object/from16 v1, v26
if-ne v0, v1, :cond_5ae
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->authCramMD5()V
:goto_3f7
:cond_3f7
:try_end_3f7
.catchall {:try_start_3e2 .. :try_end_3f7} :catchall_1b0
.catch Lcom/fsck/k9/mail/store/ImapStore$ImapException; {:try_start_3e2 .. :try_end_3f7} :catch_614
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3e2 .. :try_end_3f7} :catch_626
.catch Ljavax/net/ssl/SSLException; {:try_start_3e2 .. :try_end_3f7} :catch_19e
.catch Ljava/security/GeneralSecurityException; {:try_start_3e2 .. :try_end_3f7} :catch_21d
.catch Ljava/net/ConnectException; {:try_start_3e2 .. :try_end_3f7} :catch_278
const/4 v4, 0x1
:try_start_3f8
sget-boolean v25, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v25, :cond_432
const-string v25, "k9"
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v27, "NAMESPACE = "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v27, "NAMESPACE"
move-object/from16 v0, p0
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->hasCapability(Ljava/lang/String;)Z
move-result v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v26
const-string v27, ", mPathPrefix = "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v27, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;
invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1800(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_432
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1800(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v25
if-nez v25, :cond_64c
const-string v25, "NAMESPACE"
move-object/from16 v0, p0
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->hasCapability(Ljava/lang/String;)Z
move-result v25
if-eqz v25, :cond_636
sget-boolean v25, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v25, :cond_455
const-string v25, "k9"
const-string v26, "mPathPrefix is unset and server has NAMESPACE capability"
invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_455
const-string v25, "NAMESPACE"
move-object/from16 v0, p0
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v16
invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v12
:cond_463
:goto_463
invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
move-result v25
if-eqz v25, :cond_64c
invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v19
check-cast v19, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
const/16 v25, 0x0
move-object/from16 v0, v19
move/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v25
const-string v26, "NAMESPACE"
invoke-virtual/range {v25 .. v26}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v25
if-eqz v25, :cond_463
sget-boolean v25, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v25, :cond_4af
const-string v25, "k9"
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v27, "Got NAMESPACE response "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v27, " on "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_4af
const/16 v25, 0x1
move-object/from16 v0, v19
move/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v18
if-eqz v18, :cond_463
move-object/from16 v0, v18
instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move/from16 v25, v0
if-eqz v25, :cond_463
sget-boolean v25, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v25, :cond_4e3
const-string v25, "k9"
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v27, "Got personal namespaces: "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_4e3
move-object/from16 v0, v18
check-cast v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-object v5, v0
const/16 v25, 0x0
move-object v0, v5
move/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v10
if-eqz v10, :cond_463
move-object v0, v10
instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move/from16 v25, v0
if-eqz v25, :cond_463
sget-boolean v25, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v25, :cond_519
const-string v25, "k9"
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v27, "Got first personal namespaces: "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, v26
move-object v1, v10
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_519
move-object v0, v10
check-cast v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-object v5, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
const/16 v26, 0x0
move-object v0, v5
move/from16 v1, v26
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v26
#setter for: Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;
invoke-static/range {v25 .. v26}, Lcom/fsck/k9/mail/store/ImapStore;->access$1802(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
const/16 v26, 0x1
move-object v0, v5
move/from16 v1, v26
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v26
#setter for: Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;
invoke-static/range {v25 .. v26}, Lcom/fsck/k9/mail/store/ImapStore;->access$502(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
const/16 v26, 0x0
#setter for: Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;
invoke-static/range {v25 .. v26}, Lcom/fsck/k9/mail/store/ImapStore;->access$1902(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
sget-boolean v25, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v25, :cond_463
const-string v25, "k9"
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v27, "Got path \'"
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v27, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;
invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1800(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v27, "\' and separator \'"
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v27, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;
invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v27, "\'"
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_463
:cond_58e
const/16 v25, 0x0
move/from16 v21, v25
goto/16 :goto_32c
:cond_594
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1400(Lcom/fsck/k9/mail/store/ImapStore;)I
move-result v25
const/16 v26, 0x2
move/from16 v0, v25
move/from16 v1, v26
if-ne v0, v1, :cond_3cf
new-instance v25, Lcom/fsck/k9/mail/MessagingException;
const-string v26, "TLS not supported but required"
invoke-direct/range {v25 .. v26}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v25
:try_start_5ae
:try_end_5ae
.catchall {:try_start_3f8 .. :try_end_5ae} :catchall_1b0
.catch Ljavax/net/ssl/SSLException; {:try_start_3f8 .. :try_end_5ae} :catch_19e
.catch Ljava/security/GeneralSecurityException; {:try_start_3f8 .. :try_end_5ae} :catch_21d
.catch Ljava/net/ConnectException; {:try_start_3f8 .. :try_end_5ae} :catch_278
:cond_5ae
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mAuthType:Lcom/fsck/k9/mail/store/ImapStore$AuthType;
invoke-static/range {v25 .. v25}, Lcom/fsck/k9/mail/store/ImapStore;->access$1500(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$AuthType;
move-result-object v25
sget-object v26, Lcom/fsck/k9/mail/store/ImapStore$AuthType;->PLAIN:Lcom/fsck/k9/mail/store/ImapStore$AuthType;
move-object/from16 v0, v25
move-object/from16 v1, v26
if-ne v0, v1, :cond_3f7
new-instance v25, Ljava/lang/StringBuilder;
invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V
const-string v26, "LOGIN \""
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v26, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mUsername:Ljava/lang/String;
invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/store/ImapStore;->access$1600(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v26
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->escapeString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v26
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
const-string v26, "\" \""
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v26, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mPassword:Ljava/lang/String;
invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/store/ImapStore;->access$1700(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v26
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->escapeString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v26
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
const-string v26, "\""
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
const/16 v26, 0x1
move-object/from16 v0, p0
move-object/from16 v1, v25
move/from16 v2, v26
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
:try_end_612
.catchall {:try_start_5ae .. :try_end_612} :catchall_1b0
.catch Lcom/fsck/k9/mail/store/ImapStore$ImapException; {:try_start_5ae .. :try_end_612} :catch_614
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_5ae .. :try_end_612} :catch_626
.catch Ljavax/net/ssl/SSLException; {:try_start_5ae .. :try_end_612} :catch_19e
.catch Ljava/security/GeneralSecurityException; {:try_start_5ae .. :try_end_612} :catch_21d
.catch Ljava/net/ConnectException; {:try_start_5ae .. :try_end_612} :catch_278
goto/16 :goto_3f7
:catch_614
move-exception v25
move-object/from16 v14, v25
:try_start_617
new-instance v25, Lcom/fsck/k9/mail/AuthenticationFailedException;
invoke-virtual {v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;
move-result-object v26
move-object/from16 v0, v25
move-object/from16 v1, v26
move-object v2, v14
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v25
:catch_626
move-exception v25
move-object/from16 v15, v25
new-instance v25, Lcom/fsck/k9/mail/AuthenticationFailedException;
const/16 v26, 0x0
move-object/from16 v0, v25
move-object/from16 v1, v26
move-object v2, v15
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v25
:cond_636
sget-boolean v25, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v25, :cond_641
const-string v25, "k9"
const-string v26, "mPathPrefix is unset but server does not have NAMESPACE capability"
invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_641
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v25, v0
const-string v26, ""
#setter for: Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;
invoke-static/range {v25 .. v26}, Lcom/fsck/k9/mail/store/ImapStore;->access$1802(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
:try_end_64c
.catchall {:try_start_617 .. :try_end_64c} :catchall_1b0
.catch Ljavax/net/ssl/SSLException; {:try_start_617 .. :try_end_64c} :catch_19e
.catch Ljava/security/GeneralSecurityException; {:try_start_617 .. :try_end_64c} :catch_21d
.catch Ljava/net/ConnectException; {:try_start_617 .. :try_end_64c} :catch_278
:cond_64c
if-nez v4, :cond_6
const-string v25, "k9"
new-instance v26, Ljava/lang/StringBuilder;
invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
const-string v27, "Failed to login, closing connection for "
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
goto/16 :goto_6
:try_start_66f
:cond_66f
throw v7
:try_end_670
.catchall {:try_start_66f .. :try_end_670} :catchall_1b0
.end method
.method public sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
.registers 11
const-string v5, "k9"
const-string v5, ">>> "
:try_start_4
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->open()V
iget v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mNextCommandTag:I
add-int/lit8 v6, v5, 0x1
iput v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mNextCommandTag:I
invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
const/16 v6, 0xd
invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V
iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
const/16 v6, 0xa
invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V
iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v5, :cond_70
if-eqz p2, :cond_71
sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z
if-nez v5, :cond_71
const-string v5, "k9"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, ">>> "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "[Command Hidden, Enable Sensitive Debug Logging To Show]"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_70
:goto_70
return-object v4
:cond_71
const-string v5, "k9"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, ">>> "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:try_end_91
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_91} :catch_92
.catch Lcom/fsck/k9/mail/store/ImapStore$ImapException; {:try_start_4 .. :try_end_91} :catch_98
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_91} :catch_9e
goto :goto_70
:catch_92
move-exception v5
move-object v2, v5
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
throw v2
:catch_98
move-exception v5
move-object v1, v5
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
throw v1
:catch_9e
move-exception v5
move-object v3, v5
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
throw v3
.end method
.method protected setReadTimeout(I)V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;
invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
return-void
.end method