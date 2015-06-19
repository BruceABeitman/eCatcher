.class  Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
.super Lcom/fsck/k9/mail/Folder;
.source "WebDavStore.java"
.field private mFolderUrl:Ljava/lang/String;
.field private mIsOpen:Z
.field private mMessageCount:I
.field private mName:Ljava/lang/String;
.field private mUnreadMessageCount:I
.field private store:Lcom/fsck/k9/mail/store/WebDavStore;
.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;
.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V
.registers 14
const/4 v6, 0x0
const-string v7, "UTF-8"
const-string v9, "/"
iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
invoke-direct {p0}, Lcom/fsck/k9/mail/Folder;-><init>()V
iput-boolean v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mIsOpen:Z
iput v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mMessageCount:I
iput v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mUnreadMessageCount:I
iput-object p2, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->store:Lcom/fsck/k9/mail/store/WebDavStore;
iput-object p3, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mName:Ljava/lang/String;
invoke-static {}, Lcom/fsck/k9/mail/store/WebDavStore;->access$100()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_42
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getUrl()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "/"
invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "/"
invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
:goto_41
return-void
:cond_42
const-string v1, ""
:try_start_44
const-string v6, "/"
invoke-virtual {p3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
const-string v4, ""
const/4 v2, 0x0
array-length v0, v5
:goto_4e
if-ge v2, v0, :cond_7d
if-eqz v2, :cond_74
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "/"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
aget-object v7, v5, v2
const-string v8, "UTF-8"
invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
:goto_71
add-int/lit8 v2, v2, 0x1
goto :goto_4e
:cond_74
aget-object v6, v5, v2
const-string v7, "UTF-8"
invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_7b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_44 .. :try_end_7b} :catch_d0
move-result-object v4
goto :goto_71
:cond_7d
move-object v1, v4
:goto_7e
const-string v6, "\\+"
const-string v7, "%20"
invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v6, "INBOX"
invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_90
const-string v1, "Inbox"
:cond_90
#getter for: Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
invoke-static {p1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$200(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
#getter for: Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
invoke-static {p1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$200(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
move-result-object v6
const-string v7, "/"
invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_b9
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "/"
invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
:cond_b9
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
goto/16 :goto_41
:catch_d0
move-exception v6
move-object v3, v6
const-string v6, "k9"
const-string v7, "UnsupportedEncodingException URLEncoding folder name, skipping encoded"
invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move-object v1, p3
goto :goto_7e
.end method
.method private deleteServerMessages([Ljava/lang/String;)V
.registers 16
const/4 v3, 0x0
const/4 v5, 0x0
const-string v13, "t"
const-string v12, "Brief"
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/HashMap;
move-result-object v10
array-length v0, p1
new-array v11, v0, [Ljava/lang/String;
const/4 v8, 0x0
array-length v6, p1
:goto_f
if-ge v8, v6, :cond_51
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
aget-object v9, p1, v8
invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->generateDeleteUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_39
const-string v0, "Brief"
const-string v0, "t"
invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
const-string v2, "DELETE"
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
invoke-static/range {v0 .. v5}, Lcom/fsck/k9/mail/store/WebDavStore;->access$400(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
:goto_36
add-int/lit8 v8, v8, 0x1
goto :goto_f
:cond_39
const-string v0, "Destination"
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->generateDeleteUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Brief"
const-string v0, "t"
invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
const-string v2, "MOVE"
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
invoke-static/range {v0 .. v5}, Lcom/fsck/k9/mail/store/WebDavStore;->access$400(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
goto :goto_36
:cond_51
return-void
.end method
.method private fetchEnvelope([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
.registers 16
const/16 v12, 0xa
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
new-instance v1, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
invoke-direct {v1, v10}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
const-string v5, ""
new-array v6, v12, [Lcom/fsck/k9/mail/Message;
if-eqz p1, :cond_1c
array-length v10, p1
if-nez v10, :cond_1d
:cond_1c
return-void
:cond_1d
array-length v10, p1
if-le v10, v12, :cond_4d
array-length v10, p1
sub-int/2addr v10, v12
new-array v7, v10, [Lcom/fsck/k9/mail/Message;
const/4 v4, 0x0
array-length v0, p1
:goto_26
if-ge v4, v0, :cond_38
if-ge v4, v12, :cond_31
aget-object v10, p1, v4
aput-object v10, v6, v4
:goto_2e
add-int/lit8 v4, v4, 0x1
goto :goto_26
:cond_31
sub-int v10, v4, v12
aget-object v11, p1, v4
aput-object v11, v7, v10
goto :goto_2e
:cond_38
invoke-direct {p0, v7, p2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchEnvelope([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
:goto_3b
array-length v10, v6
new-array v8, v10, [Ljava/lang/String;
const/4 v4, 0x0
array-length v0, v6
:goto_40
if-ge v4, v0, :cond_4f
aget-object v10, v6, v4
invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v10
aput-object v10, v8, v4
add-int/lit8 v4, v4, 0x1
goto :goto_40
:cond_4d
move-object v6, p1
goto :goto_3b
:cond_4f
iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->getMessageEnvelopeXml([Ljava/lang/String;)Ljava/lang/String;
invoke-static {v10, v8}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1400(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v10, "Brief"
const-string v11, "t"
invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
iget-object v11, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
const-string v12, "SEARCH"
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
invoke-static {v10, v11, v12, v5, v3}, Lcom/fsck/k9/mail/store/WebDavStore;->access$600(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-result-object v1
invoke-virtual {v1}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getMessageEnvelopes()Ljava/util/HashMap;
move-result-object v2
array-length v0, v6
array-length v10, v6
const/4 v11, 0x1
sub-int v4, v10, v11
:goto_6f
if-ltz v4, :cond_1c
aget-object v10, v6, v4
instance-of v10, v10, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
if-nez v10, :cond_7f
new-instance v10, Lcom/fsck/k9/mail/MessagingException;
const-string v11, "WebDavStore fetch called with non-WebDavMessage"
invoke-direct {v10, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v10
:cond_7f
aget-object v9, v6, v4
check-cast v9, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
if-eqz p2, :cond_8e
aget-object v10, v6, v4
invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v10
invoke-interface {p2, v10, v4, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V
:cond_8e
invoke-virtual {v9}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;
move-result-object v10
invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;
invoke-virtual {v9, p0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setNewHeaders(Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;)V
sget-object v10, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
invoke-virtual {v9}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;
move-result-object v11
invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->getReadStatus()Z
move-result v11
invoke-virtual {v9, v10, v11}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
if-eqz p2, :cond_b5
aget-object v10, v6, v4
invoke-interface {p2, v10, v4, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
:cond_b5
add-int/lit8 v4, v4, -0x1
goto :goto_6f
.end method
.method private fetchFlags([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
.registers 16
const/16 v12, 0x14
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
new-instance v1, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
invoke-direct {v1, v10}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
const-string v4, ""
new-array v5, v12, [Lcom/fsck/k9/mail/Message;
if-eqz p1, :cond_1c
array-length v10, p1
if-nez v10, :cond_1d
:cond_1c
return-void
:cond_1d
array-length v10, p1
if-le v10, v12, :cond_4d
array-length v10, p1
sub-int/2addr v10, v12
new-array v6, v10, [Lcom/fsck/k9/mail/Message;
const/4 v3, 0x0
array-length v0, p1
:goto_26
if-ge v3, v0, :cond_38
if-ge v3, v12, :cond_31
aget-object v10, p1, v3
aput-object v10, v5, v3
:goto_2e
add-int/lit8 v3, v3, 0x1
goto :goto_26
:cond_31
sub-int v10, v3, v12
aget-object v11, p1, v3
aput-object v11, v6, v10
goto :goto_2e
:cond_38
invoke-direct {p0, v6, p2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchFlags([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
:goto_3b
array-length v10, v5
new-array v8, v10, [Ljava/lang/String;
const/4 v3, 0x0
array-length v0, v5
:goto_40
if-ge v3, v0, :cond_4f
aget-object v10, v5, v3
invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v10
aput-object v10, v8, v3
add-int/lit8 v3, v3, 0x1
goto :goto_40
:cond_4d
move-object v5, p1
goto :goto_3b
:cond_4f
iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->getMessageFlagsXml([Ljava/lang/String;)Ljava/lang/String;
invoke-static {v10, v8}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1300(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v10, "Brief"
const-string v11, "t"
invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
iget-object v11, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
const-string v12, "SEARCH"
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
invoke-static {v10, v11, v12, v4, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$600(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-result-object v1
if-nez v1, :cond_70
new-instance v10, Lcom/fsck/k9/mail/MessagingException;
const-string v11, "Data Set from request was null"
invoke-direct {v10, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v10
:cond_70
invoke-virtual {v1}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getUidToRead()Ljava/util/HashMap;
move-result-object v7
const/4 v3, 0x0
array-length v0, v5
:goto_76
if-ge v3, v0, :cond_1c
aget-object v10, v5, v3
instance-of v10, v10, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
if-nez v10, :cond_86
new-instance v10, Lcom/fsck/k9/mail/MessagingException;
const-string v11, "WebDavStore fetch called with non-WebDavMessage"
invoke-direct {v10, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v10
:cond_86
aget-object v9, v5, v3
check-cast v9, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
if-eqz p2, :cond_95
aget-object v10, v5, v3
invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v10
invoke-interface {p2, v10, v3, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V
:cond_95
sget-object v10, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
invoke-virtual {v9}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;
move-result-object v11
invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Boolean;
invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v11
invoke-virtual {v9, v10, v11}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
if-eqz p2, :cond_af
aget-object v10, v5, v3
invoke-interface {p2, v10, v3, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
:cond_af
add-int/lit8 v3, v3, 0x1
goto :goto_76
.end method
.method private fetchMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V
.registers 28
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v21, v0
invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
move-result-object v8
const/4 v10, 0x0
move-object/from16 v0, p1
array-length v0, v0
move v5, v0
:goto_f
if-ge v10, v5, :cond_2fe
const/16 v17, 0x0
aget-object v21, p1, v10
move-object/from16 v0, v21
instance-of v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
move/from16 v21, v0
if-nez v21, :cond_25
new-instance v21, Lcom/fsck/k9/mail/MessagingException;
const-string v22, "WebDavStore fetch called with non-WebDavMessage"
invoke-direct/range {v21 .. v22}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v21
:cond_25
aget-object v20, p1, v10
check-cast v20, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
if-eqz p2, :cond_38
invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;
move-result-object v21
move-object/from16 v0, p2
move-object/from16 v1, v21
move v2, v10
move v3, v5
invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V
:cond_38
invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;
move-result-object v21
const-string v22, ""
invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_b0
const/16 v21, 0x1
move/from16 v0, v21
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v21, v0
const/16 v22, 0x0
invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;
move-result-object v23
aput-object v23, v21, v22
move-object/from16 v0, p0
move-object/from16 v1, v21
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/HashMap;
move-result-object v21
invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
move-object/from16 v0, v20
move-object v1, v4
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setUrl(Ljava/lang/String;)V
const-string v21, "k9"
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
const-string v23, "Fetching messages with UID = \'"
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "\', URL = \'"
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "\'"
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;
move-result-object v21
const-string v22, ""
invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_b0
new-instance v21, Lcom/fsck/k9/mail/MessagingException;
const-string v22, "Unable to get URL for message"
invoke-direct/range {v21 .. v22}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v21
:try_start_b0
:cond_b0
const-string v21, "k9"
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
const-string v23, "Fetching message with UID = \'"
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "\', URL = \'"
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "\'"
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v9, Lorg/apache/http/client/methods/HttpGet;
new-instance v21, Ljava/net/URI;
invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;
move-result-object v22
invoke-direct/range {v21 .. v22}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
move-object v0, v9
move-object/from16 v1, v21
invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
const-string v21, "translate"
const-string v22, "f"
move-object v0, v9
move-object/from16 v1, v21
move-object/from16 v2, v22
invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v21, v0
#getter for: Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;
invoke-static/range {v21 .. v21}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1000(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
move-result-object v21
if-eqz v21, :cond_129
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v21, v0
#getter for: Lcom/fsck/k9/mail/store/WebDavStore;->mAuthenticated:Z
invoke-static/range {v21 .. v21}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1100(Lcom/fsck/k9/mail/store/WebDavStore;)Z
move-result v21
if-eqz v21, :cond_129
const-string v21, "Authorization"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v22, v0
#getter for: Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;
invoke-static/range {v22 .. v22}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1000(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
move-result-object v22
move-object v0, v9
move-object/from16 v1, v21
move-object/from16 v2, v22
invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_129
invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v15
invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v21
invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v17
invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v7
const/16 v21, 0xc8
move/from16 v0, v17
move/from16 v1, v21
if-lt v0, v1, :cond_149
const/16 v21, 0x12c
move/from16 v0, v17
move/from16 v1, v21
if-le v0, v1, :cond_1bf
:cond_149
new-instance v21, Ljava/io/IOException;
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
const-string v23, "Error during fetch: "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "\n\n"
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const/16 v23, 0x0
move-object/from16 v0, v23
move-object v1, v7
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpRequestResponse(Lorg/apache/http/HttpEntity;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v21
:catch_17d
:try_end_17d
.catch Ljava/lang/IllegalArgumentException; {:try_start_b0 .. :try_end_17d} :catch_17d
.catch Ljava/net/URISyntaxException; {:try_start_b0 .. :try_end_17d} :catch_245
.catch Ljava/io/IOException; {:try_start_b0 .. :try_end_17d} :catch_28a
move-exception v21
move-object/from16 v11, v21
const-string v21, "k9"
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
const-string v23, "IllegalArgumentException caught "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
move-object/from16 v0, v22
move-object v1, v11
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "\nTrace: "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object v1, v11
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v21, Lcom/fsck/k9/mail/MessagingException;
const-string v22, "IllegalArgumentException caught"
move-object/from16 v0, v21
move-object/from16 v1, v22
move-object v2, v11
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v21
:cond_1bf
if-eqz v7, :cond_236
const/4 v13, 0x0
:try_start_1c2
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
const-string v18, ""
const-string v16, ""
const/4 v6, 0x0
invoke-static {v7}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
move-result-object v13
const/16 v21, -0x1
move/from16 v0, p3
move/from16 v1, v21
if-eq v0, v1, :cond_230
new-instance v14, Ljava/io/BufferedReader;
new-instance v21, Ljava/io/InputStreamReader;
move-object/from16 v0, v21
move-object v1, v13
invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
const/16 v22, 0x2000
move-object v0, v14
move-object/from16 v1, v21
move/from16 v2, v22
invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
:goto_1ec
invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v18
if-eqz v18, :cond_217
move v0, v6
move/from16 v1, p3
if-ge v0, v1, :cond_217
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v21
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "\r\n"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
move-object v0, v4
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v6, v6, 0x1
goto :goto_1ec
:cond_217
invoke-virtual {v13}, Ljava/io/InputStream;->close()V
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v16
new-instance v13, Ljava/io/ByteArrayInputStream;
const-string v21, "UTF-8"
move-object/from16 v0, v16
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v21
move-object v0, v13
move-object/from16 v1, v21
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
:cond_230
move-object/from16 v0, v20
move-object v1, v13
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->parse(Ljava/io/InputStream;)V
:try_end_236
.catch Ljava/lang/IllegalArgumentException; {:try_start_1c2 .. :try_end_236} :catch_17d
.catch Ljava/net/URISyntaxException; {:try_start_1c2 .. :try_end_236} :catch_245
.catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_236} :catch_28a
:cond_236
if-eqz p2, :cond_241
move-object/from16 v0, p2
move-object/from16 v1, v20
move v2, v10
move v3, v5
invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
:cond_241
add-int/lit8 v10, v10, 0x1
goto/16 :goto_f
:catch_245
move-exception v21
move-object/from16 v19, v21
const-string v21, "k9"
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
const-string v23, "URISyntaxException caught "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
move-object/from16 v0, v22
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "\nTrace: "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v19
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v21, Lcom/fsck/k9/mail/MessagingException;
const-string v22, "URISyntaxException caught"
move-object/from16 v0, v21
move-object/from16 v1, v22
move-object/from16 v2, v19
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v21
:catch_28a
move-exception v21
move-object/from16 v12, v21
const-string v21, "k9"
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
const-string v23, "Non-success response code loading message, response code was "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
move-object/from16 v0, v22
move/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "\nURL: "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "\nError: "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "\nTrace: "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object v1, v12
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v21, Lcom/fsck/k9/mail/MessagingException;
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
const-string v23, "Failure code "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
move-object/from16 v0, v22
move/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
move-object/from16 v0, v21
move-object/from16 v1, v22
move-object v2, v12
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v21
:cond_2fe
return-void
.end method
.method private generateDeleteUrl(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const-string v3, "/"
invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v3, v2
const/4 v4, 0x1
sub-int/2addr v3, v4
aget-object v0, v2, v3
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
#getter for: Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
invoke-static {v4}, Lcom/fsck/k9/mail/store/WebDavStore;->access$200(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "Deleted%20Items/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method private getMessageCount(ZLorg/apache/http/client/CookieStore;)I
.registers 11
const/4 v4, 0x0
new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
invoke-direct {v0, v5}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
if-eqz p1, :cond_2f
const-string v2, "True"
:goto_11
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->getMessageCountXml(Ljava/lang/String;)Ljava/lang/String;
invoke-static {v5, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$500(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v5, "Brief"
const-string v6, "t"
invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
const-string v7, "SEARCH"
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
invoke-static {v5, v6, v7, v3, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$600(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-result-object v0
if-eqz v0, :cond_2e
invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getMessageCount()I
move-result v4
:cond_2e
return v4
:cond_2f
const-string v2, "False"
goto :goto_11
.end method
.method private getMessageUrls([Ljava/lang/String;)Ljava/util/HashMap;
.registers 9
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
invoke-direct {v0, v4}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->getMessageUrlsXml([Ljava/lang/String;)Ljava/lang/String;
invoke-static {v4, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$900(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v4, "Brief"
const-string v5, "t"
invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
const-string v6, "SEARCH"
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
invoke-static {v4, v5, v6, v2, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$600(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getUidToUrl()Ljava/util/HashMap;
move-result-object v3
return-object v3
.end method
.method private markServerMessagesRead([Ljava/lang/String;Z)V
.registers 14
const-string v3, ""
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/HashMap;
move-result-object v9
new-instance v7, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
invoke-direct {v7, v0}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
array-length v0, p1
new-array v10, v0, [Ljava/lang/String;
const/4 v8, 0x0
array-length v6, p1
:goto_17
if-ge v8, v6, :cond_26
aget-object v0, p1, v8
invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
aput-object v0, v10, v8
add-int/lit8 v8, v8, 0x1
goto :goto_17
:cond_26
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->getMarkMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;
invoke-static {v0, v10, p2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1600(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v3
const-string v0, "Brief"
const-string v1, "t"
invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "If-Match"
const-string v1, "*"
invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
const-string v2, "BPROPPATCH"
const/4 v5, 0x0
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
invoke-static/range {v0 .. v5}, Lcom/fsck/k9/mail/store/WebDavStore;->access$400(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
return-void
.end method
.method private moveOrCopyMessages([Lcom/fsck/k9/mail/Message;Ljava/lang/String;Z)V
.registers 20
move-object/from16 v0, p1
array-length v0, v0
move v3, v0
new-array v13, v3, [Ljava/lang/String;
const/4 v11, 0x0
move-object/from16 v0, p1
array-length v0, v0
move v9, v0
:goto_b
if-ge v11, v9, :cond_18
aget-object v3, p1, v11
invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v3
aput-object v3, v13, v11
add-int/lit8 v11, v11, 0x1
goto :goto_b
:cond_18
const-string v6, ""
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
move-object/from16 v0, p0
move-object v1, v13
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/HashMap;
move-result-object v12
array-length v3, v13
new-array v14, v3, [Ljava/lang/String;
const/4 v11, 0x0
array-length v9, v13
:goto_2b
if-ge v11, v9, :cond_4e
aget-object v3, v13, v11
invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
aput-object v3, v14, v11
aget-object v3, v14, v11
if-nez v3, :cond_4b
aget-object v3, p1, v11
instance-of v3, v3, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
if-eqz v3, :cond_4b
aget-object v15, p1, v11
check-cast v15, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
invoke-virtual {v15}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;
move-result-object v3
aput-object v3, v14, v11
:cond_4b
add-int/lit8 v11, v11, 0x1
goto :goto_2b
:cond_4e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object v3, v0
move-object v0, v3
move-object v1, v14
move/from16 v2, p3
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->getMoveOrCopyMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$300(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->store:Lcom/fsck/k9/mail/store/WebDavStore;
move-object v3, v0
move-object v0, v3
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
move-result-object v10
check-cast v10, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
const-string v3, "Destination"
iget-object v4, v10, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "Brief"
const-string v4, "t"
invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "If-Match"
const-string v4, "*"
invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-eqz p3, :cond_ba
const-string v3, "BMOVE"
move-object v5, v3
:goto_83
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Moving "
invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p1
array-length v0, v0
move v8, v0
invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v8, " messages to "
invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v8, v10, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object v3, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
move-object v4, v0
const/4 v8, 0x0
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
invoke-static/range {v3 .. v8}, Lcom/fsck/k9/mail/store/WebDavStore;->access$400(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
return-void
:cond_ba
const-string v3, "BCOPY"
move-object v5, v3
goto :goto_83
.end method
.method public appendMessages([Lcom/fsck/k9/mail/Message;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->appendWebDavMessages([Lcom/fsck/k9/mail/Message;)[Lcom/fsck/k9/mail/Message;
return-void
.end method
.method public appendWebDavMessages([Lcom/fsck/k9/mail/Message;)[Lcom/fsck/k9/mail/Message;
.registers 27
move-object/from16 v0, p1
array-length v0, v0
move/from16 v22, v0
move/from16 v0, v22
new-array v0, v0, [Lcom/fsck/k9/mail/Message;
move-object/from16 v19, v0
const/4 v10, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
move-result-object v7
move-object/from16 v4, p1
array-length v12, v4
const/4 v9, 0x0
move v11, v10
:goto_1b
if-ge v9, v12, :cond_1e6
aget-object v14, v4, v9
:try_start_1f
invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;
:try_end_22
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1f .. :try_end_22} :catch_17b
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_16a
move-result-object v21
:goto_23
:try_start_23
new-instance v16, Ljava/io/ByteArrayOutputStream;
invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getSize()I
move-result v22
move-object/from16 v0, v16
move/from16 v1, v22
invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
:goto_30
:try_start_30
:try_end_30
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_23 .. :try_end_30} :catch_19b
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_30} :catch_16a
sget-object v22, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
move-object/from16 v0, p0
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
new-instance v22, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;
new-instance v23, Ljava/io/BufferedOutputStream;
const/16 v24, 0x400
move-object/from16 v0, v23
move-object/from16 v1, v16
move/from16 v2, v24
invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
invoke-direct/range {v22 .. v23}, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V
move-object v0, v14
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V
new-instance v5, Lorg/apache/http/entity/StringEntity;
invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
move-result-object v22
const-string v23, "UTF-8"
move-object v0, v5
move-object/from16 v1, v22
move-object/from16 v2, v23
invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-string v22, "message/rfc822"
move-object v0, v5
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
move-object v15, v0
const-string v22, "/"
move-object v0, v15
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v22
if-nez v22, :cond_8f
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v22
move-object v1, v15
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
const-string v23, "/"
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
:cond_8f
new-instance v22, Ljava/lang/StringBuilder;
invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v22
move-object v1, v15
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v23
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, ".eml"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-static/range {v23 .. v23}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
const-string v22, "k9"
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "Uploading message to "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
move-object/from16 v24, v0
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v8, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v22, v0
move-object v0, v8
move-object/from16 v1, v22
move-object v2, v15
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V
const-string v22, "PUT"
move-object v0, v8
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setMethod(Ljava/lang/String;)V
invoke-virtual {v8, v5}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setEntity(Lorg/apache/http/HttpEntity;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/store/WebDavStore;->getAuthString()Ljava/lang/String;
move-result-object v13
if-eqz v13, :cond_10b
const-string v22, "Authorization"
move-object v0, v8
move-object/from16 v1, v22
move-object v2, v13
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_10b
invoke-virtual {v7, v8}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v17
invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v22
invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v20
const/16 v22, 0xc8
move/from16 v0, v20
move/from16 v1, v22
if-lt v0, v1, :cond_127
const/16 v22, 0x12c
move/from16 v0, v20
move/from16 v1, v22
if-le v0, v1, :cond_1c0
:cond_127
new-instance v22, Ljava/io/IOException;
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "Sending Message: Error while trying to append message to "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object v1, v15
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, " "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "\n\n"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v24
move-object v0, v5
move-object/from16 v1, v24
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpRequestResponse(Lorg/apache/http/HttpEntity;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v22
:catch_16a
:try_end_16a
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_16a} :catch_16a
move-exception v22
move-object/from16 v6, v22
move v10, v11
:goto_16e
new-instance v22, Lcom/fsck/k9/mail/MessagingException;
const-string v23, "Unable to append"
move-object/from16 v0, v22
move-object/from16 v1, v23
move-object v2, v6
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v22
:catch_17b
move-exception v6
:try_start_17c
const-string v22, "k9"
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "MessagingException while retrieving Subject: "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object v1, v6
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v21, ""
goto/16 :goto_23
:catch_19b
move-exception v22
move-object/from16 v6, v22
const-string v22, "k9"
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "MessagingException while getting size of message: "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object v1, v6
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v16, Ljava/io/ByteArrayOutputStream;
invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V
goto/16 :goto_30
:cond_1c0
new-instance v18, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v22, v0
invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v23
move-object/from16 v0, v18
move-object/from16 v1, v22
move-object/from16 v2, v23
move-object/from16 v3, p0
invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
move-object/from16 v0, v18
move-object v1, v15
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setUrl(Ljava/lang/String;)V
:try_end_1dd
.catch Ljava/lang/Exception; {:try_start_17c .. :try_end_1dd} :catch_16a
add-int/lit8 v10, v11, 0x1
:try_start_1df
aput-object v18, v19, v11
:try_end_1e1
.catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e1} :catch_1e7
add-int/lit8 v9, v9, 0x1
move v11, v10
goto/16 :goto_1b
:cond_1e6
return-object v19
:catch_1e7
move-exception v22
move-object/from16 v6, v22
goto :goto_16e
.end method
.method public close()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mMessageCount:I
iput v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mUnreadMessageCount:I
iput-boolean v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mIsOpen:Z
return-void
.end method
.method public copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
.registers 5
invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->moveOrCopyMessages([Lcom/fsck/k9/mail/Message;Ljava/lang/String;Z)V
return-void
.end method
.method public create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public delete(Z)V
.registers 4
new-instance v0, Ljava/lang/Error;
const-string v1, "WebDavFolder.delete() not implemeneted"
invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->moveOrCopyMessages([Lcom/fsck/k9/mail/Message;Ljava/lang/String;Z)V
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public exists()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
.registers 5
if-eqz p1, :cond_5
array-length v0, p1
if-nez v0, :cond_6
:goto_5
:cond_5
return-void
:cond_6
sget-object v0, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;
invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
invoke-direct {p0, p1, p3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchEnvelope([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
:cond_11
sget-object v0, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;
invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
invoke-direct {p0, p1, p3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchFlags([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
:cond_1c
sget-object v0, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;
invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_29
const/16 v0, 0x2a1
invoke-direct {p0, p1, p3, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V
:cond_29
sget-object v0, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;
invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
const/4 v0, -0x1
invoke-direct {p0, p1, p3, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V
goto :goto_5
.end method
.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
.registers 4
new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
invoke-direct {v0, v1, p1, p0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
return-object v0
.end method
.method public getMessageCount()I
.registers 3
sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
const/4 v0, 0x1
iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
#getter for: Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;
invoke-static {v1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$700(Lcom/fsck/k9/mail/store/WebDavStore;)Lorg/apache/http/client/CookieStore;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageCount(ZLorg/apache/http/client/CookieStore;)I
move-result v0
iput v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mMessageCount:I
iget v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mMessageCount:I
return v0
.end method
.method public getMessages(IILcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.registers 24
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
new-instance v5, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object v15, v0
invoke-direct {v5, v15}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
new-instance v6, Ljava/util/HashMap;
invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
const/4 v14, -0x1
move/from16 v11, p1
move-object/from16 v0, p0
iget v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mMessageCount:I
move v15, v0
sub-int p1, v15, p2
sub-int v15, p2, v11
add-int p2, p1, v15
if-ltz p1, :cond_2c
if-ltz p2, :cond_2c
move/from16 v0, p2
move/from16 v1, p1
if-ge v0, v1, :cond_50
:cond_2c
new-instance v15, Lcom/fsck/k9/mail/MessagingException;
const-string v16, "Invalid message set %d %d"
const/16 v17, 0x2
move/from16 v0, v17
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v17, v0
const/16 v18, 0x0
invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v19
aput-object v19, v17, v18
const/16 v18, 0x1
invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v19
aput-object v19, v17, v18
invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v16
invoke-direct/range {v15 .. v16}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v15
:cond_50
if-nez p1, :cond_5b
const/16 v15, 0xa
move/from16 v0, p2
move v1, v15
if-ge v0, v1, :cond_5b
const/16 p2, 0xa
:cond_5b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object v15, v0
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->getMessagesXml()Ljava/lang/String;
invoke-static {v15}, Lcom/fsck/k9/mail/store/WebDavStore;->access$800(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
move-result-object v9
const-string v15, "Brief"
const-string v16, "t"
move-object v0, v6
move-object v1, v15
move-object/from16 v2, v16
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v15, "Range"
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
const-string v17, "rows="
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
move-object/from16 v0, v16
move/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v16
const-string v17, "-"
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
move-object/from16 v0, v16
move/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
move-object v0, v6
move-object v1, v15
move-object/from16 v2, v16
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object v15, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
move-object/from16 v16, v0
const-string v17, "SEARCH"
move-object v0, v15
move-object/from16 v1, v16
move-object/from16 v2, v17
move-object v3, v9
move-object v4, v6
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
invoke-static {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/store/WebDavStore;->access$600(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
move-result-object v5
invoke-virtual {v5}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getUids()[Ljava/lang/String;
move-result-object v13
invoke-virtual {v5}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getUidToUrl()Ljava/util/HashMap;
move-result-object v12
array-length v14, v13
const/4 v7, 0x0
:goto_bf
if-ge v7, v14, :cond_fd
if-eqz p3, :cond_cd
aget-object v15, v13, v7
move-object/from16 v0, p3
move-object v1, v15
move v2, v7
move v3, v14
invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V
:cond_cd
new-instance v8, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object v15, v0
aget-object v16, v13, v7
move-object v0, v8
move-object v1, v15
move-object/from16 v2, v16
move-object/from16 v3, p0
invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
aget-object v15, v13, v7
invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p1
check-cast p1, Ljava/lang/String;
move-object v0, v8
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setUrl(Ljava/lang/String;)V
invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz p3, :cond_fa
move-object/from16 v0, p3
move-object v1, v8
move v2, v7
move v3, v14
invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
:cond_fa
add-int/lit8 v7, v7, 0x1
goto :goto_bf
:cond_fd
const/4 v15, 0x0
new-array v15, v15, [Lcom/fsck/k9/mail/Message;
invoke-virtual {v10, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Lcom/fsck/k9/mail/Message;
return-object p0
.end method
.method public getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessages([Ljava/lang/String;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
move-result-object v0
return-object v0
.end method
.method public getMessages([Ljava/lang/String;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.registers 11
const/4 v7, 0x0
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
if-eqz p1, :cond_b
array-length v5, p1
if-nez v5, :cond_15
:cond_b
new-array v5, v7, [Lcom/fsck/k9/mail/Message;
invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Lcom/fsck/k9/mail/Message;
move-object v5, p0
:goto_14
return-object v5
:cond_15
const/4 v1, 0x0
array-length v0, p1
:goto_17
if-ge v1, v0, :cond_34
if-eqz p2, :cond_20
aget-object v5, p1, v1
invoke-interface {p2, v5, v1, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V
:cond_20
new-instance v2, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
aget-object v6, p1, v1
invoke-direct {v2, v5, v6, p0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz p2, :cond_31
invoke-interface {p2, v2, v1, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
:cond_31
add-int/lit8 v1, v1, 0x1
goto :goto_17
:cond_34
new-array v5, v7, [Lcom/fsck/k9/mail/Message;
invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v4
check-cast v4, [Lcom/fsck/k9/mail/Message;
move-object v5, v4
goto :goto_14
.end method
.method public getMode()Lcom/fsck/k9/mail/Folder$OpenMode;
.registers 2
sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getPermanentFlags()[Lcom/fsck/k9/mail/Flag;
.registers 2
invoke-static {}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1500()[Lcom/fsck/k9/mail/Flag;
move-result-object v0
return-object v0
.end method
.method protected getStore()Lcom/fsck/k9/mail/store/WebDavStore;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->store:Lcom/fsck/k9/mail/store/WebDavStore;
return-object v0
.end method
.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
.registers 4
const-string v0, "k9"
const-string v1, "Unimplemented method getUidFromMessageId in WebDavStore.WebDavFolder could lead to duplicate messages  being uploaded to the Sent folder"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
return-object v0
.end method
.method public getUnreadMessageCount()I
.registers 3
sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
const/4 v0, 0x0
iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
#getter for: Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;
invoke-static {v1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$700(Lcom/fsck/k9/mail/store/WebDavStore;)Lorg/apache/http/client/CookieStore;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageCount(ZLorg/apache/http/client/CookieStore;)I
move-result v0
iput v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mUnreadMessageCount:I
iget v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mUnreadMessageCount:I
return v0
.end method
.method public isOpen()Z
.registers 2
iget-boolean v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mIsOpen:Z
return v0
.end method
.method public moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
.registers 5
invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->moveOrCopyMessages([Lcom/fsck/k9/mail/Message;Ljava/lang/String;Z)V
return-void
.end method
.method public open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mIsOpen:Z
return-void
.end method
.method public setFlags([Lcom/fsck/k9/mail/Flag;Z)V
.registers 5
const-string v0, "k9"
const-string v1, "Unimplemented method setFlags(Flag[], boolean) breaks markAllMessagesAsRead and EmptyTrash"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
.registers 9
array-length v4, p1
new-array v3, v4, [Ljava/lang/String;
const/4 v2, 0x0
array-length v0, p1
:goto_5
if-ge v2, v0, :cond_12
aget-object v4, p1, v2
invoke-virtual {v4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v2
add-int/lit8 v2, v2, 0x1
goto :goto_5
:cond_12
const/4 v2, 0x0
array-length v0, p2
:goto_14
if-ge v2, v0, :cond_2a
aget-object v1, p2, v2
sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
if-ne v1, v4, :cond_22
invoke-direct {p0, v3, p3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->markServerMessagesRead([Ljava/lang/String;Z)V
:goto_1f
:cond_1f
add-int/lit8 v2, v2, 0x1
goto :goto_14
:cond_22
sget-object v4, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
if-ne v1, v4, :cond_1f
invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->deleteServerMessages([Ljava/lang/String;)V
goto :goto_1f
:cond_2a
return-void
.end method
.method public setUrl(Ljava/lang/String;)V
.registers 2
if-eqz p1, :cond_4
iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;
:cond_4
return-void
.end method