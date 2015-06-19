.class  Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
.super Lcom/fsck/k9/mail/Folder;
.source "ImapStore.java"
.field protected mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
.field private mExists:Z
.field protected mMessageCount:I
.field private mMode:Lcom/fsck/k9/mail/Folder$OpenMode;
.field private mName:Ljava/lang/String;
.field private store:Lcom/fsck/k9/mail/store/ImapStore;
.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;
.field protected uidNext:I
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)V
.registers 5
const/4 v0, -0x1
iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-direct {p0}, Lcom/fsck/k9/mail/Folder;-><init>()V
iput v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I
iput v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->uidNext:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->store:Lcom/fsck/k9/mail/store/ImapStore;
iput-object p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->store:Lcom/fsck/k9/mail/store/ImapStore;
iput-object p3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;
return-void
.end method
.method private checkOpen()V
.registers 4
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->isOpen()Z
move-result v0
if-nez v0, :cond_29
new-instance v0, Lcom/fsck/k9/mail/MessagingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Folder "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not open."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
return-void
.end method
.method private combineFlags([Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;
.registers 8
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v3, 0x0
array-length v0, p1
:goto_7
if-ge v3, v0, :cond_35
aget-object v1, p1, v3
sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
if-ne v1, v4, :cond_17
const-string v4, "\\Seen"
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_14
:goto_14
add-int/lit8 v3, v3, 0x1
goto :goto_7
:cond_17
sget-object v4, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
if-ne v1, v4, :cond_21
const-string v4, "\\Deleted"
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_14
:cond_21
sget-object v4, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;
if-ne v1, v4, :cond_2b
const-string v4, "\\Answered"
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_14
:cond_2b
sget-object v4, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;
if-ne v1, v4, :cond_14
const-string v4, "\\Flagged"
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_14
:cond_35
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v4
new-array v4, v4, [Ljava/lang/String;
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v4
const/16 v5, 0x20
invoke-static {v4, v5}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;
move-result-object v4
return-object v4
.end method
.method private exists(Ljava/lang/String;)Z
.registers 10
const/4 v7, 0x1
const/4 v6, 0x0
:try_start_2
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
const-string v3, "STATUS \"%s\" (RECENT)"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p1, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
:try_end_13
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_15
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_13} :catch_1e
move v2, v7
:goto_14
return v2
:catch_15
move-exception v2
move-object v0, v2
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-direct {p0, v2, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v2
throw v2
:catch_1e
move-exception v2
move-object v1, v2
move v2, v6
goto :goto_14
.end method
.method private ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
.registers 6
const-string v0, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "IOException for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
#calls: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
invoke-static {p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->close()V
new-instance v0, Lcom/fsck/k9/mail/MessagingException;
const-string v1, "IO Error"
invoke-direct {v0, v1, p2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
return-object v0
.end method
.method private parseBodyStructure(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
.registers 27
const/16 v18, 0x0
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v18
move-object/from16 v0, v18
instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move/from16 v18, v0
if-eqz v18, :cond_ab
new-instance v14, Lcom/fsck/k9/mail/internet/MimeMultipart;
invoke-direct {v14}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>()V
const/4 v12, 0x0
invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v10
:goto_1c
if-ge v12, v10, :cond_a4
move-object/from16 v0, p1
move v1, v12
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v18
move-object/from16 v0, v18
instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move/from16 v18, v0
if-eqz v18, :cond_93
new-instance v7, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v18, v0
move-object v0, v7
move-object/from16 v1, v18
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;-><init>(Lcom/fsck/k9/mail/store/ImapStore;)V
const-string v18, "TEXT"
move-object/from16 v0, p3
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_64
move-object/from16 v0, p1
move v1, v12
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-result-object v18
add-int/lit8 v19, v12, 0x1
invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, p0
move-object/from16 v1, v18
move-object v2, v7
move-object/from16 v3, v19
invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
:goto_5e
invoke-virtual {v14, v7}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V
add-int/lit8 v12, v12, 0x1
goto :goto_1c
:cond_64
move-object/from16 v0, p1
move v1, v12
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-result-object v18
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, "."
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
add-int/lit8 v20, v12, 0x1
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, p0
move-object/from16 v1, v18
move-object v2, v7
move-object/from16 v3, v19
invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
goto :goto_5e
:cond_93
move-object/from16 v0, p1
move v1, v12
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v18
move-object v0, v14
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V
:cond_a4
move-object/from16 v0, p2
move-object v1, v14
invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V
:goto_aa
return-void
:cond_ab
const/16 v18, 0x0
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v17
const/16 v18, 0x1
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v16
new-instance v18, Ljava/lang/StringBuilder;
invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v18
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, "/"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v13
const/4 v6, 0x0
const/16 v18, 0x2
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v18
move-object/from16 v0, v18
instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move/from16 v18, v0
if-eqz v18, :cond_ff
const/16 v18, 0x2
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-result-object v6
:cond_ff
const/16 v18, 0x5
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v11
const/16 v18, 0x6
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getNumber(I)I
move-result v15
const-string v18, "message/rfc822"
move-object v0, v13
move-object/from16 v1, v18
invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
move-result v18
if-eqz v18, :cond_126
new-instance v18, Lcom/fsck/k9/mail/MessagingException;
const-string v19, "BODYSTRUCTURE message/rfc822 not yet supported."
invoke-direct/range {v18 .. v19}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v18
:cond_126
const-string v18, "%s"
const/16 v19, 0x1
move/from16 v0, v19
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v19, v0
const/16 v20, 0x0
aput-object v13, v19, v20
invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
if-eqz v6, :cond_17b
const/4 v12, 0x0
invoke-virtual {v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v10
:goto_13f
if-ge v12, v10, :cond_17b
new-instance v18, Ljava/lang/StringBuilder;
invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v18
move-object v1, v9
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, ";\n %s=\"%s\""
const/16 v20, 0x2
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual {v6, v12}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v22
aput-object v22, v20, v21
const/16 v21, 0x1
add-int/lit8 v22, v12, 0x1
move-object v0, v6
move/from16 v1, v22
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v22
aput-object v22, v20, v21
invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
add-int/lit8 v12, v12, 0x2
goto :goto_13f
:cond_17b
const-string v18, "Content-Type"
move-object/from16 v0, p2
move-object/from16 v1, v18
move-object v2, v9
invoke-interface {v0, v1, v2}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x0
const-string v18, "text"
move-object/from16 v0, v18
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v18
if-eqz v18, :cond_24d
invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v18
const/16 v19, 0x8
move/from16 v0, v18
move/from16 v1, v19
if-le v0, v1, :cond_24d
const/16 v18, 0x9
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v18
move-object/from16 v0, v18
instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move/from16 v18, v0
if-eqz v18, :cond_24d
const/16 v18, 0x9
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-result-object v4
:goto_1ba
:cond_1ba
const-string v8, ""
if-eqz v4, :cond_283
invoke-virtual {v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v18
if-lez v18, :cond_283
const-string v18, "NIL"
const/16 v19, 0x0
move-object v0, v4
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v18
if-nez v18, :cond_1e2
const/16 v18, 0x0
move-object v0, v4
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v8
:cond_1e2
invoke-virtual {v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v18
const/16 v19, 0x1
move/from16 v0, v18
move/from16 v1, v19
if-le v0, v1, :cond_283
const/16 v18, 0x1
move-object v0, v4
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v18
move-object/from16 v0, v18
instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move/from16 v18, v0
if-eqz v18, :cond_283
const/16 v18, 0x1
move-object v0, v4
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-result-object v5
const/4 v12, 0x0
invoke-virtual {v5}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v10
:goto_20d
if-ge v12, v10, :cond_283
new-instance v18, Ljava/lang/StringBuilder;
invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v18
move-object v1, v8
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, ";\n %s=\"%s\""
const/16 v20, 0x2
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual {v5, v12}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v22
aput-object v22, v20, v21
const/16 v21, 0x1
add-int/lit8 v22, v12, 0x1
move-object v0, v5
move/from16 v1, v22
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v22
aput-object v22, v20, v21
invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
add-int/lit8 v12, v12, 0x2
goto :goto_20d
:cond_24d
const-string v18, "text"
move-object/from16 v0, v18
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v18
if-nez v18, :cond_1ba
invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v18
const/16 v19, 0x7
move/from16 v0, v18
move/from16 v1, v19
if-le v0, v1, :cond_1ba
const/16 v18, 0x8
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v18
move-object/from16 v0, v18
instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move/from16 v18, v0
if-eqz v18, :cond_1ba
const/16 v18, 0x8
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-result-object v4
goto/16 :goto_1ba
:cond_283
const-string v18, "size"
move-object v0, v8
move-object/from16 v1, v18
invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
if-nez v18, :cond_2b8
new-instance v18, Ljava/lang/StringBuilder;
invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v18
move-object v1, v8
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, ";\n size=%d"
const/16 v20, 0x1
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v22
aput-object v22, v20, v21
invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
:cond_2b8
const-string v18, "Content-Disposition"
move-object/from16 v0, p2
move-object/from16 v1, v18
move-object v2, v8
invoke-interface {v0, v1, v2}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v18, "Content-Transfer-Encoding"
move-object/from16 v0, p2
move-object/from16 v1, v18
move-object v2, v11
invoke-interface {v0, v1, v2}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p2
instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
move/from16 v18, v0
if-eqz v18, :cond_2e9
move-object/from16 v0, p2
check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
move-object v4, v0
invoke-virtual {v4, v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setSize(I)V
:goto_2dc
const-string v18, "X-Android-Attachment-StoreData"
move-object/from16 v0, p2
move-object/from16 v1, v18
move-object/from16 v2, p3
invoke-interface {v0, v1, v2}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_aa
:cond_2e9
move-object/from16 v0, p2
instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;
move/from16 v18, v0
if-eqz v18, :cond_2fa
move-object/from16 v0, p2
check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;
move-object v4, v0
invoke-virtual {v4, v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;->setSize(I)V
goto :goto_2dc
:cond_2fa
new-instance v18, Lcom/fsck/k9/mail/MessagingException;
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, "Unknown part type "
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v18
.end method
.method private search(Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.registers 16
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
const/4 v1, 0x0
:try_start_9
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;->search()Ljava/util/List;
move-result-object v8
invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_16
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_49
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
const/4 v10, 0x0
invoke-virtual {v7, v10}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v10
const-string v11, "SEARCH"
invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_16
const/4 v1, 0x1
const/4 v2, 0x1
invoke-virtual {v7}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I
move-result v0
:goto_35
if-ge v2, v0, :cond_16
invoke-virtual {v7, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_35
:cond_49
if-nez v1, :cond_5c
new-instance v10, Lcom/fsck/k9/mail/MessagingException;
const-string v11, "Did not get proper search response"
invoke-direct {v10, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v10
:try_end_53
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_53} :catch_53
:catch_53
move-exception v10
move-object v4, v10
iget-object v10, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-direct {p0, v10, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v10
throw v10
:try_start_5c
:cond_5c
invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V
const/4 v2, 0x0
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v0
:goto_64
if-ge v2, v0, :cond_ab
if-eqz p2, :cond_82
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, ""
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-interface {p2, v10, v2, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V
:cond_82
new-instance v5, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
iget-object v10, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string v12, ""
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {v5, v10, v11, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz p2, :cond_a8
invoke-interface {p2, v5, v2, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
:try_end_a8
.catch Ljava/io/IOException; {:try_start_5c .. :try_end_a8} :catch_53
:cond_a8
add-int/lit8 v2, v2, 0x1
goto :goto_64
:cond_ab
const/4 v10, 0x0
new-array v10, v10, [Lcom/fsck/k9/mail/Message;
invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Lcom/fsck/k9/mail/Message;
return-object p0
.end method
.method public appendMessages([Lcom/fsck/k9/mail/Message;)V
.registers 17
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V
move-object/from16 v0, p1
:try_start_5
array-length v4, v0
const/4 v2, 0x0
:goto_7
if-ge v2, v4, :cond_bf
aget-object v5, v0, v2
new-instance v7, Lcom/fsck/k9/mail/transport/CountingOutputStream;
invoke-direct {v7}, Lcom/fsck/k9/mail/transport/CountingOutputStream;-><init>()V
new-instance v1, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;
invoke-direct {v1, v7}, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v5, v1}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V
invoke-virtual {v1}, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;->flush()V
iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
const-string v10, "APPEND \"%s\" (%s) {%d}"
const/4 v11, 0x3
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
iget-object v13, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;
move-result-object v14
#calls: Lcom/fsck/k9/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
invoke-static {v13, v14}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x1
invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getFlags()[Lcom/fsck/k9/mail/Flag;
move-result-object v13
invoke-direct {p0, v13}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->combineFlags([Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x2
invoke-virtual {v7}, Lcom/fsck/k9/mail/transport/CountingOutputStream;->getCount()J
move-result-wide v13
invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
aput-object v13, v11, v12
invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
const/4 v11, 0x0
invoke-virtual {v9, v10, v11}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
:cond_4d
iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
#calls: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
invoke-static {v9}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$800(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
move-result-object v8
invoke-virtual {p0, v8}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
iget-boolean v9, v8, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mCommandContinuationRequested:Z
if-eqz v9, :cond_75
new-instance v1, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;
iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
#getter for: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
invoke-static {v9}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$1000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Ljava/io/OutputStream;
move-result-object v9
invoke-direct {v1, v9}, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v5, v1}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V
const/16 v9, 0xd
invoke-virtual {v1, v9}, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;->write(I)V
const/16 v9, 0xa
invoke-virtual {v1, v9}, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;->write(I)V
invoke-virtual {v1}, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;->flush()V
:cond_75
invoke-virtual {v8}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->more()Z
move-result v9
if-nez v9, :cond_75
iget-object v9, v8, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
if-eqz v9, :cond_4d
invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
move-result-object v6
sget-boolean v9, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v9, :cond_ad
const-string v9, "k9"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Got UID "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " for message for "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_ad
if-eqz v6, :cond_b2
invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V
:try_end_b2
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_b2} :catch_b6
:cond_b2
add-int/lit8 v2, v2, 0x1
goto/16 :goto_7
:catch_b6
move-exception v9
move-object v3, v9
iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-direct {p0, v9, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v9
throw v9
:cond_bf
return-void
.end method
.method public close()V
.registers 3
const/4 v1, -0x1
iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I
if-eq v0, v1, :cond_7
iput v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I
:cond_7
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->isOpen()Z
move-result v0
if-nez v0, :cond_e
:goto_d
return-void
:cond_e
monitor-enter p0
:try_start_f
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
#calls: Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore;->access$700(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
monitor-exit p0
goto :goto_d
:catchall_1b
move-exception v0
monitor-exit p0
:try_end_1d
.catchall {:try_start_f .. :try_end_1d} :catchall_1b
throw v0
.end method
.method public copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
.registers 15
instance-of v7, p2, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
if-nez v7, :cond_c
new-instance v7, Lcom/fsck/k9/mail/MessagingException;
const-string v8, "ImapFolder.copyMessages passed non-ImapFolder"
invoke-direct {v7, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v7
:cond_c
array-length v7, p1
if-nez v7, :cond_10
:goto_f
return-void
:cond_10
move-object v0, p2
check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
move-object v3, v0
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V
array-length v7, p1
new-array v6, v7, [Ljava/lang/String;
const/4 v2, 0x0
array-length v1, p1
:goto_1c
if-ge v2, v1, :cond_29
aget-object v7, p1, v2
invoke-virtual {v7}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v7
aput-object v7, v6, v2
add-int/lit8 v2, v2, 0x1
goto :goto_1c
:try_start_29
:cond_29
iget-object v7, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;
move-result-object v8
#calls: Lcom/fsck/k9/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
invoke-static {v7, v8}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-direct {p0, v5}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->exists(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_68
sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v7, :cond_63
const-string v7, "k9"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "IMAPMessage.copyMessages: attempting to create remote \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\' folder for "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_63
sget-object v7, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;
invoke-virtual {v3, v7}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
:cond_68
invoke-direct {p0, v5}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->exists(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_9b
const-string v7, "UID COPY %s \"%s\""
const/4 v8, 0x2
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
const/16 v10, 0x2c
invoke-static {v6, v10}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;
move-result-object v10
aput-object v10, v8, v9
const/4 v9, 0x1
iget-object v10, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;
move-result-object v11
#calls: Lcom/fsck/k9/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
invoke-static {v10, v11}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
aput-object v10, v8, v9
invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-virtual {p0, v7}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
:try_end_90
.catch Ljava/io/IOException; {:try_start_29 .. :try_end_90} :catch_92
goto/16 :goto_f
:catch_92
move-exception v7
move-object v4, v7
iget-object v7, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-direct {p0, v7, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v7
throw v7
:cond_9b
:try_start_9b
new-instance v7, Lcom/fsck/k9/mail/MessagingException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "IMAPMessage.copyMessages: remote destination folder "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " does not exist and could not be created for "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
const/4 v9, 0x1
invoke-direct {v7, v8, v9}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V
throw v7
:try_end_c7
.catch Ljava/io/IOException; {:try_start_9b .. :try_end_c7} :catch_92
.end method
.method public create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
.registers 12
const/4 v9, 0x1
const/4 v8, 0x0
const/4 v0, 0x0
monitor-enter p0
:try_start_4
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
if-nez v3, :cond_33
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
#calls: Lcom/fsck/k9/mail/store/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-static {v3}, Lcom/fsck/k9/mail/store/ImapStore;->access$400(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
move-result-object v0
:goto_e
monitor-exit p0
:try_start_f
:try_end_f
.catchall {:try_start_4 .. :try_end_f} :catchall_36
const-string v3, "CREATE \"%s\""
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
iget-object v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;
move-result-object v7
#calls: Lcom/fsck/k9/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
invoke-static {v6, v7}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
:try_end_28
.catchall {:try_start_f .. :try_end_28} :catchall_4f
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_f .. :try_end_28} :catch_39
.catch Ljava/io/IOException; {:try_start_f .. :try_end_28} :catch_46
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
if-nez v3, :cond_31
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
#calls: Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
invoke-static {v3, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$700(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
:cond_31
move v3, v9
:goto_32
return v3
:try_start_33
:cond_33
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
goto :goto_e
:catchall_36
move-exception v3
monitor-exit p0
:try_end_38
.catchall {:try_start_33 .. :try_end_38} :catchall_36
throw v3
:catch_39
move-exception v3
move-object v2, v3
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
if-nez v3, :cond_44
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
#calls: Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
invoke-static {v3, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$700(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
:cond_44
move v3, v8
goto :goto_32
:catch_46
move-exception v3
move-object v1, v3
:try_start_48
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-direct {p0, v3, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v3
throw v3
:try_end_4f
.catchall {:try_start_48 .. :try_end_4f} :catchall_4f
:catchall_4f
move-exception v3
iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
if-nez v4, :cond_59
iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
#calls: Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
invoke-static {v4, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$700(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
:cond_59
throw v3
.end method
.method public delete(Z)V
.registers 4
new-instance v0, Ljava/lang/Error;
const-string v1, "ImapStore.delete() not yet implemented"
invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V
.registers 9
const/4 v5, 0x1
const-string v4, "k9"
array-length v2, p1
if-nez v2, :cond_7
:goto_6
return-void
:cond_7
if-eqz p2, :cond_13
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1e
:cond_13
new-array v2, v5, [Lcom/fsck/k9/mail/Flag;
const/4 v3, 0x0
sget-object v4, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
aput-object v4, v2, v3
invoke-virtual {p0, p1, v2, v5}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
goto :goto_6
:cond_1e
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getStore()Lcom/fsck/k9/mail/store/ImapStore;
move-result-object v2
invoke-virtual {v2, p2}, Lcom/fsck/k9/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
move-result-object v0
check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-virtual {v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;
move-result-object v3
#calls: Lcom/fsck/k9/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
invoke-static {v2, v3}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->exists(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_67
sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v2, :cond_62
const-string v2, "k9"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "IMAPMessage.delete: attempting to create remote \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' folder for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_62
sget-object v2, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;
invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
:cond_67
invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->exists(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_a7
sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v2, :cond_a2
const-string v2, "k9"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "IMAPMessage.delete: copying remote "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
array-length v3, p1
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " messages to \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_a2
invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
goto/16 :goto_6
:cond_a7
new-instance v2, Lcom/fsck/k9/mail/MessagingException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "IMAPMessage.delete: remote Trash folder "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " does not exist and could not be created for "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V
throw v2
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
if-eqz v0, :cond_13
check-cast p1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
:goto_12
return v0
:cond_13
invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_12
.end method
.method protected executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
.registers 3
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponses(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected executeSimpleCommand(Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;
.registers 5
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
#calls: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;
invoke-static {v0, p1, p2, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$300(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponses(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public exists()Z
.registers 11
const/4 v9, 0x0
const/4 v8, 0x1
iget-boolean v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mExists:Z
if-eqz v3, :cond_8
move v3, v8
:goto_7
return v3
:cond_8
const/4 v0, 0x0
monitor-enter p0
:try_start_a
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
if-nez v3, :cond_3c
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
#calls: Lcom/fsck/k9/mail/store/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-static {v3}, Lcom/fsck/k9/mail/store/ImapStore;->access$400(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
move-result-object v0
:goto_14
monitor-exit p0
:try_start_15
:try_end_15
.catchall {:try_start_a .. :try_end_15} :catchall_3f
const-string v3, "STATUS \"%s\" (UIDVALIDITY)"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
iget-object v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;
move-result-object v7
#calls: Lcom/fsck/k9/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
invoke-static {v6, v7}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
const/4 v3, 0x1
iput-boolean v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mExists:Z
:try_end_31
.catchall {:try_start_15 .. :try_end_31} :catchall_56
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_15 .. :try_end_31} :catch_42
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_31} :catch_4f
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
if-nez v3, :cond_3a
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
#calls: Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
invoke-static {v3, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$700(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
:cond_3a
move v3, v8
goto :goto_7
:try_start_3c
:cond_3c
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
goto :goto_14
:catchall_3f
move-exception v3
monitor-exit p0
:try_end_41
.catchall {:try_start_3c .. :try_end_41} :catchall_3f
throw v3
:catch_42
move-exception v3
move-object v2, v3
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
if-nez v3, :cond_4d
iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
#calls: Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
invoke-static {v3, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$700(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
:cond_4d
move v3, v9
goto :goto_7
:catch_4f
move-exception v3
move-object v1, v3
:try_start_51
invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v3
throw v3
:try_end_56
.catchall {:try_start_51 .. :try_end_56} :catchall_56
:catchall_56
move-exception v3
iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
if-nez v4, :cond_60
iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
#calls: Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
invoke-static {v4, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$700(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
:cond_60
throw v3
.end method
.method public expunge()V
.registers 3
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V
:try_start_3
const-string v1, "EXPUNGE"
invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
:try_end_8
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9
return-void
:catch_9
move-exception v1
move-object v0, v1
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v1
throw v1
.end method
.method public fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
.registers 43
if-eqz p1, :cond_9
move-object/from16 v0, p1
array-length v0, v0
move/from16 v33, v0
if-nez v33, :cond_a
:cond_9
return-void
:cond_a
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V
move-object/from16 v0, p1
array-length v0, v0
move/from16 v33, v0
move/from16 v0, v33
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v32, v0
new-instance v23, Ljava/util/HashMap;
invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V
const/16 v16, 0x0
move-object/from16 v0, p1
array-length v0, v0
move v9, v0
:goto_23
move/from16 v0, v16
move v1, v9
if-ge v0, v1, :cond_40
aget-object v33, p1, v16
invoke-virtual/range {v33 .. v33}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v33
aput-object v33, v32, v16
aget-object v33, v32, v16
aget-object v34, p1, v16
move-object/from16 v0, v23
move-object/from16 v1, v33
move-object/from16 v2, v34
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v16, v16, 0x1
goto :goto_23
:cond_40
new-instance v11, Ljava/util/LinkedHashSet;
invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V
const-string v33, "UID"
move-object v0, v11
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
sget-object v33, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;
move-object/from16 v0, p2
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_61
const-string v33, "FLAGS"
move-object v0, v11
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
:cond_61
sget-object v33, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;
move-object/from16 v0, p2
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_85
const-string v33, "INTERNALDATE"
move-object v0, v11
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
const-string v33, "RFC822.SIZE"
move-object v0, v11
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
const-string v33, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc reply-to X-K9mail-Identity)]"
move-object v0, v11
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
:cond_85
sget-object v33, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;
move-object/from16 v0, p2
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_99
const-string v33, "BODYSTRUCTURE"
move-object v0, v11
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
:cond_99
sget-object v33, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;
move-object/from16 v0, p2
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_c4
const-string v33, "BODY.PEEK[]<0.%d>"
const/16 v34, 0x1
move/from16 v0, v34
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v34, v0
const/16 v35, 0x0
const v36, 0xc800
invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v36
aput-object v36, v34, v35
invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v33
move-object v0, v11
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
:cond_c4
sget-object v33, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;
move-object/from16 v0, p2
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_d8
const-string v33, "BODY.PEEK[]"
move-object v0, v11
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
:cond_d8
invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/FetchProfile;->iterator()Ljava/util/Iterator;
move-result-object v17
:cond_dc
:goto_dc
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z
move-result v33
if-eqz v33, :cond_154
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v26
if-eqz v26, :cond_dc
move-object/from16 v0, v26
instance-of v0, v0, Lcom/fsck/k9/mail/Part;
move/from16 v33, v0
if-eqz v33, :cond_dc
move-object/from16 v0, v26
check-cast v0, Lcom/fsck/k9/mail/Part;
move-object/from16 v27, v0
const-string v33, "X-Android-Attachment-StoreData"
move-object/from16 v0, v27
move-object/from16 v1, v33
invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v33
const/16 v34, 0x0
aget-object v28, v33, v34
const-string v33, "TEXT"
move-object/from16 v0, v33
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_130
const-string v33, "BODY.PEEK[TEXT]<0.%d>"
const/16 v34, 0x1
move/from16 v0, v34
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v34, v0
const/16 v35, 0x0
const v36, 0xc800
invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v36
aput-object v36, v34, v35
invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v33
move-object v0, v11
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
goto :goto_dc
:cond_130
new-instance v33, Ljava/lang/StringBuilder;
invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V
const-string v34, "BODY.PEEK["
invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v33
move-object/from16 v0, v33
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v33
const-string v34, "]"
invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v33
invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v33
move-object v0, v11
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
goto :goto_dc
:try_start_154
:cond_154
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
move-object/from16 v33, v0
const-string v34, "UID FETCH %s (%s)"
const/16 v35, 0x2
move/from16 v0, v35
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v35, v0
const/16 v36, 0x0
const/16 v37, 0x2c
move-object/from16 v0, v32
move/from16 v1, v37
invoke-static {v0, v1}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;
move-result-object v37
aput-object v37, v35, v36
const/16 v36, 0x1
invoke-virtual {v11}, Ljava/util/LinkedHashSet;->size()I
move-result v37
move/from16 v0, v37
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v37, v0
move-object v0, v11
move-object/from16 v1, v37
invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v37
const/16 v38, 0x20
invoke-static/range {v37 .. v38}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;
move-result-object v37
aput-object v37, v35, v36
invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v34
const/16 v35, 0x0
invoke-virtual/range {v33 .. v35}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
const/16 v24, 0x0
move/from16 v25, v24
:goto_19a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
move-object/from16 v33, v0
#calls: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
invoke-static/range {v33 .. v33}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$800(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
move-result-object v29
sget-boolean v33, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v33, :cond_1d2
const-string v33, "k9"
new-instance v34, Ljava/lang/StringBuilder;
invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V
const-string v35, "response for fetch: "
invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
move-object/from16 v0, v34
move-object/from16 v1, v29
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v34
const-string v35, " for "
invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v35
invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v34
invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1d2
move-object/from16 v0, v29
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
move-object/from16 v33, v0
if-nez v33, :cond_4c6
const/16 v33, 0x1
move-object/from16 v0, v29
move/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v33
const-string v34, "FETCH"
invoke-virtual/range {v33 .. v34}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_4c6
const-string v33, "FETCH"
move-object/from16 v0, v29
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v12
check-cast v12, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
const-string v33, "UID"
move-object v0, v12
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v31
move-object/from16 v0, v23
move-object/from16 v1, v31
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v22
check-cast v22, Lcom/fsck/k9/mail/Message;
if-nez v22, :cond_250
sget-boolean v33, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v33, :cond_23b
const-string v33, "k9"
new-instance v34, Ljava/lang/StringBuilder;
invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V
const-string v35, "Do not have message in messageMap for UID "
invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
move-object/from16 v0, v34
move-object/from16 v1, v31
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
const-string v35, " for "
invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v35
invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v34
invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_23b
move-object/from16 v0, p0
move-object/from16 v1, v29
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
move/from16 v24, v25
:cond_244
move-object/from16 v0, v29
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
move-object/from16 v33, v0
if-nez v33, :cond_9
move/from16 v25, v24
goto/16 :goto_19a
:cond_250
if-eqz p3, :cond_4d0
add-int/lit8 v24, v25, 0x1
invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I
move-result v33
move-object/from16 v0, p3
move-object/from16 v1, v31
move/from16 v2, v25
move/from16 v3, v33
invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V
:goto_263
sget-object v33, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;
move-object/from16 v0, p2
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_30c
const-string v33, "FLAGS"
move-object v0, v12
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedList(Ljava/lang/Object;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-result-object v14
move-object/from16 v0, v22
check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
move-object/from16 v18, v0
if-eqz v14, :cond_30c
const/16 v16, 0x0
invoke-virtual {v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v9
:goto_286
move/from16 v0, v16
move v1, v9
if-ge v0, v1, :cond_30c
move-object v0, v14
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;
move-result-object v13
const-string v33, "\\Deleted"
move-object v0, v13
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_2ad
sget-object v33, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
const/16 v34, 0x1
move-object/from16 v0, v18
move-object/from16 v1, v33
move/from16 v2, v34
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
:goto_2aa
:cond_2aa
add-int/lit8 v16, v16, 0x1
goto :goto_286
:cond_2ad
const-string v33, "\\Answered"
move-object v0, v13
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_2da
sget-object v33, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;
const/16 v34, 0x1
move-object/from16 v0, v18
move-object/from16 v1, v33
move/from16 v2, v34
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
:try_end_2c5
.catch Ljava/io/IOException; {:try_start_154 .. :try_end_2c5} :catch_2c6
goto :goto_2aa
:catch_2c6
move-exception v33
move-object/from16 v20, v33
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
move-object/from16 v33, v0
move-object/from16 v0, p0
move-object/from16 v1, v33
move-object/from16 v2, v20
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v33
throw v33
:try_start_2da
:cond_2da
const-string v33, "\\Seen"
move-object v0, v13
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_2f3
sget-object v33, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
const/16 v34, 0x1
move-object/from16 v0, v18
move-object/from16 v1, v33
move/from16 v2, v34
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
goto :goto_2aa
:cond_2f3
const-string v33, "\\Flagged"
move-object v0, v13
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_2aa
sget-object v33, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;
const/16 v34, 0x1
move-object/from16 v0, v18
move-object/from16 v1, v33
move/from16 v2, v34
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
goto :goto_2aa
:cond_30c
sget-object v33, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;
move-object/from16 v0, p2
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_353
const-string v33, "INTERNALDATE"
move-object v0, v12
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedDate(Ljava/lang/Object;)Ljava/util/Date;
move-result-object v19
const-string v33, "RFC822.SIZE"
move-object v0, v12
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedNumber(Ljava/lang/Object;)I
move-result v30
invoke-virtual {v12}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v33
const/16 v34, 0x1
sub-int v33, v33, v34
move-object v0, v12
move/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getLiteral(I)Ljava/io/InputStream;
move-result-object v15
move-object/from16 v0, v22
check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
move-object/from16 v18, v0
move-object/from16 v0, v22
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->setInternalDate(Ljava/util/Date;)V
move-object/from16 v0, v18
move/from16 v1, v30
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setSize(I)V
move-object/from16 v0, v18
move-object v1, v15
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V
:cond_353
sget-object v33, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;
move-object/from16 v0, p2
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_376
const-string v33, "BODYSTRUCTURE"
move-object v0, v12
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedList(Ljava/lang/Object;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
:try_end_367
.catch Ljava/io/IOException; {:try_start_2da .. :try_end_367} :catch_2c6
move-result-object v6
if-eqz v6, :cond_376
:try_start_36a
const-string v33, "TEXT"
move-object/from16 v0, p0
move-object v1, v6
move-object/from16 v2, v22
move-object/from16 v3, v33
invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
:try_start_376
:goto_376
:cond_376
:try_end_376
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_36a .. :try_end_376} :catch_41a
.catch Ljava/io/IOException; {:try_start_36a .. :try_end_376} :catch_2c6
sget-object v33, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;
move-object/from16 v0, p2
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_39d
invoke-virtual {v12}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v33
const/16 v34, 0x1
sub-int v33, v33, v34
move-object v0, v12
move/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getLiteral(I)Ljava/io/InputStream;
move-result-object v4
move-object/from16 v0, v22
check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
move-object/from16 v18, v0
move-object/from16 v0, v18
move-object v1, v4
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V
:cond_39d
sget-object v33, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;
move-object/from16 v0, p2
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_3c4
invoke-virtual {v12}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v33
const/16 v34, 0x1
sub-int v33, v33, v34
move-object v0, v12
move/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getLiteral(I)Ljava/io/InputStream;
move-result-object v4
move-object/from16 v0, v22
check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
move-object/from16 v18, v0
move-object/from16 v0, v18
move-object v1, v4
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V
:cond_3c4
invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/FetchProfile;->iterator()Ljava/util/Iterator;
move-result-object v17
:goto_3c8
:cond_3c8
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z
move-result v33
if-eqz v33, :cond_4ae
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v26
move-object/from16 v0, v26
instance-of v0, v0, Lcom/fsck/k9/mail/Part;
move/from16 v33, v0
if-eqz v33, :cond_3c8
move-object/from16 v0, v26
check-cast v0, Lcom/fsck/k9/mail/Part;
move-object/from16 v27, v0
invoke-virtual {v12}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v33
const/16 v34, 0x1
sub-int v33, v33, v34
move-object v0, v12
move/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getObject(I)Ljava/lang/Object;
move-result-object v21
move-object/from16 v0, v21
instance-of v0, v0, Ljava/io/InputStream;
move/from16 v33, v0
if-eqz v33, :cond_44d
move-object/from16 v0, v21
check-cast v0, Ljava/io/InputStream;
move-object v4, v0
invoke-interface/range {v27 .. v27}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;
move-result-object v8
const-string v33, "Content-Transfer-Encoding"
move-object/from16 v0, v27
move-object/from16 v1, v33
invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v33
const/16 v34, 0x0
aget-object v7, v33, v34
invoke-static {v4, v7}, Lcom/fsck/k9/mail/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/fsck/k9/mail/Body;
move-result-object v33
move-object/from16 v0, v27
move-object/from16 v1, v33
invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V
goto :goto_3c8
:catch_41a
move-exception v33
move-object/from16 v10, v33
sget-boolean v33, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v33, :cond_442
const-string v33, "k9"
new-instance v34, Ljava/lang/StringBuilder;
invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V
const-string v35, "Error handling message for "
invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v35
invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v34
move-object/from16 v0, v33
move-object/from16 v1, v34
move-object v2, v10
invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_442
const/16 v33, 0x0
move-object/from16 v0, v22
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->setBody(Lcom/fsck/k9/mail/Body;)V
goto/16 :goto_376
:cond_44d
move-object/from16 v0, v21
instance-of v0, v0, Ljava/lang/String;
move/from16 v33, v0
if-eqz v33, :cond_3c8
move-object/from16 v0, v21
check-cast v0, Ljava/lang/String;
move-object v5, v0
sget-boolean v33, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v33, :cond_487
const-string v33, "k9"
new-instance v34, Ljava/lang/StringBuilder;
invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V
const-string v35, "Part is a String: \'"
invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
move-object/from16 v0, v34
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
const-string v35, "\' for "
invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v35
invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v34
invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v34
invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_487
new-instance v4, Ljava/io/ByteArrayInputStream;
invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B
move-result-object v33
move-object v0, v4
move-object/from16 v1, v33
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
const-string v33, "Content-Transfer-Encoding"
move-object/from16 v0, v27
move-object/from16 v1, v33
invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v33
const/16 v34, 0x0
aget-object v7, v33, v34
invoke-static {v4, v7}, Lcom/fsck/k9/mail/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/fsck/k9/mail/Body;
move-result-object v33
move-object/from16 v0, v27
move-object/from16 v1, v33
invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V
goto/16 :goto_3c8
:cond_4ae
if-eqz p3, :cond_4bf
invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I
move-result v33
move-object/from16 v0, p3
move-object/from16 v1, v22
move/from16 v2, v24
move/from16 v3, v33
invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
:cond_4bf
:goto_4bf
invoke-virtual/range {v29 .. v29}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->more()Z
move-result v33
if-eqz v33, :cond_244
goto :goto_4bf
:cond_4c6
move-object/from16 v0, p0
move-object/from16 v1, v29
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
:try_end_4cd
.catch Ljava/io/IOException; {:try_start_376 .. :try_end_4cd} :catch_2c6
move/from16 v24, v25
goto :goto_4bf
:cond_4d0
move/from16 v24, v25
goto/16 :goto_263
.end method
.method protected getLogId()Ljava/lang/String;
.registers 5
const-string v3, "/"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
if-eqz v1, :cond_46
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
#calls: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;
invoke-static {v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$1100(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_46
return-object v0
.end method
.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
.registers 4
new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-direct {v0, v1, p1, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
return-object v0
.end method
.method public getMessageCount()I
.registers 2
iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I
return v0
.end method
.method public getMessages(IILcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessages(IIZLcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
move-result-object v0
return-object v0
.end method
.method protected getMessages(IIZLcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.registers 12
const/4 v6, 0x1
if-lt p1, v6, :cond_7
if-lt p2, v6, :cond_7
if-ge p2, p1, :cond_23
:cond_7
new-instance v1, Lcom/fsck/k9/mail/MessagingException;
const-string v2, "Invalid message set %d %d"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v6
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v1
:cond_23
new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;
invoke-direct {v0, p0, p3, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;-><init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;ZII)V
invoke-direct {p0, v0, p4}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->search(Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
move-result-object v1
return-object v1
.end method
.method public getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessages([Ljava/lang/String;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
move-result-object v0
return-object v0
.end method
.method protected getMessages(Ljava/util/List;ZLcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.registers 6
new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;
invoke-direct {v0, p0, p2, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;-><init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;ZLjava/util/List;)V
invoke-direct {p0, v0, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->search(Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
move-result-object v1
return-object v1
.end method
.method public getMessages([Ljava/lang/String;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.registers 16
const/4 v12, 0x0
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
if-nez p1, :cond_4f
:try_start_b
const-string v10, "UID SEARCH 1:* NOT DELETED"
invoke-virtual {p0, v10}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v8
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_1a
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_44
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
const/4 v10, 0x0
invoke-virtual {v7, v10}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v10
const-string v11, "SEARCH"
invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_1a
const/4 v2, 0x1
invoke-virtual {v7}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I
move-result v1
:goto_38
if-ge v2, v1, :cond_1a
invoke-virtual {v7, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_38
:cond_44
const/4 v10, 0x0
new-array v10, v10, [Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v10
move-object v0, v10
check-cast v0, [Ljava/lang/String;
move-object p1, v0
:cond_4f
const/4 v2, 0x0
array-length v1, p1
:goto_51
if-ge v2, v1, :cond_77
if-eqz p2, :cond_5a
aget-object v10, p1, v2
invoke-interface {p2, v10, v2, v1}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V
:cond_5a
new-instance v5, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
iget-object v10, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
aget-object v11, p1, v2
invoke-direct {v5, v10, v11, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz p2, :cond_6b
invoke-interface {p2, v5, v2, v1}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
:cond_6b
:try_end_6b
.catch Ljava/io/IOException; {:try_start_b .. :try_end_6b} :catch_6e
add-int/lit8 v2, v2, 0x1
goto :goto_51
:catch_6e
move-exception v10
move-object v4, v10
iget-object v10, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-direct {p0, v10, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v10
throw v10
:cond_77
new-array v10, v12, [Lcom/fsck/k9/mail/Message;
invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Lcom/fsck/k9/mail/Message;
return-object p0
.end method
.method public getMode()Lcom/fsck/k9/mail/Folder$OpenMode;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMode:Lcom/fsck/k9/mail/Folder$OpenMode;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
.registers 13
const/4 v9, 0x0
:try_start_1
invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
invoke-static {p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;
move-result-object v4
iget v6, v4, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->uidNext:I
if-lt v1, v6, :cond_1d
add-int/lit8 v5, v1, 0x1
new-instance v3, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;
invoke-direct {v3, v5}, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;-><init>(I)V
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->toString()Ljava/lang/String;
:try_end_1b
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1f
move-result-object v6
:goto_1c
return-object v6
:cond_1d
move-object v6, v9
goto :goto_1c
:catch_1f
move-exception v6
move-object v0, v6
const-string v6, "k9"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Exception while updated push state for "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move-object v6, v9
goto :goto_1c
.end method
.method public getPermanentFlags()[Lcom/fsck/k9/mail/Flag;
.registers 2
invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$900()[Lcom/fsck/k9/mail/Flag;
move-result-object v0
return-object v0
.end method
.method public getPrefixedName()Ljava/lang/String;
.registers 4
const-string v0, ""
const-string v1, "INBOX"
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_12
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
#calls: Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;
invoke-static {v1}, Lcom/fsck/k9/mail/store/ImapStore;->access$200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v0
:cond_12
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected getStore()Lcom/fsck/k9/mail/store/ImapStore;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->store:Lcom/fsck/k9/mail/store/ImapStore;
return-object v0
.end method
.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
.registers 13
const/4 v10, 0x0
const/4 v9, 0x1
const-string v6, "k9"
:try_start_4
const-string v6, "Message-ID"
invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_f
array-length v6, v3
if-nez v6, :cond_31
:cond_f
sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v6, :cond_2f
const-string v6, "k9"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Did not get a message-id in order to search for UID  for "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_2f
move-object v6, v10
:goto_30
return-object v6
:cond_31
const/4 v6, 0x0
aget-object v2, v3, v6
sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v6, :cond_5e
const-string v6, "k9"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Looking for UID for message with message-id "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " for "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_5e
const-string v6, "UID SEARCH (HEADER MESSAGE-ID %s)"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
aput-object v2, v7, v8
invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v5
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_72
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_9b
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
iget-object v6, v4, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
if-nez v6, :cond_72
const/4 v6, 0x0
invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v6
const-string v7, "SEARCH"
invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_72
invoke-virtual {v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I
move-result v6
if-le v6, v9, :cond_72
const/4 v6, 0x1
invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;
:try_end_99
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_99} :catch_9d
move-result-object v6
goto :goto_30
:cond_9b
move-object v6, v10
goto :goto_30
:catch_9d
move-exception v6
move-object v1, v6
new-instance v6, Lcom/fsck/k9/mail/MessagingException;
const-string v7, "Could not find UID for message based on Message-ID"
invoke-direct {v6, v7, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v6
.end method
.method public getUnreadMessageCount()I
.registers 12
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V
const/4 v5, 0x0
:try_start_4
const-string v6, "STATUS \"%s\" (UNSEEN)"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;
move-result-object v10
#calls: Lcom/fsck/k9/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
invoke-static {v9, v10}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
aput-object v9, v7, v8
invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_22
:cond_22
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_54
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
iget-object v6, v2, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
if-nez v6, :cond_22
const/4 v6, 0x0
invoke-virtual {v2, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v6
const-string v7, "STATUS"
invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_22
const/4 v6, 0x2
invoke-virtual {v2, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-result-object v4
const-string v6, "UNSEEN"
invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedNumber(Ljava/lang/Object;)I
:try_end_49
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_49} :catch_4b
move-result v5
goto :goto_22
:catch_4b
move-exception v6
move-object v1, v6
iget-object v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-direct {p0, v6, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v6
throw v6
:cond_54
return v5
.end method
.method protected handlePossibleUidNext(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
.registers 11
const/4 v8, 0x0
const/4 v7, 0x1
invoke-virtual {p1, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v5
const-string v6, "OK"
invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_6c
invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I
move-result v5
if-le v5, v7, :cond_6c
invoke-virtual {p1, v7}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v2
instance-of v5, v2, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
if-eqz v5, :cond_6c
move-object v0, v2
check-cast v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-object v1, v0
invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v5
if-le v5, v7, :cond_6c
invoke-virtual {v1, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v4
instance-of v5, v4, Ljava/lang/String;
if-eqz v5, :cond_6c
move-object v0, v4
check-cast v0, Ljava/lang/String;
move-object v3, v0
const-string v5, "UIDNEXT"
invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_6c
invoke-virtual {v1, v7}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getNumber(I)I
move-result v5
iput v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->uidNext:I
sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v5, :cond_6c
const-string v5, "k9"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Got UidNext = "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget v7, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->uidNext:I
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " for "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_6c
return-void
.end method
.method protected handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
.registers 7
const/4 v2, 0x1
const-string v4, "k9"
const-string v3, " for "
iget-object v0, p1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
if-nez v0, :cond_92
invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I
move-result v0
if-le v0, v2, :cond_92
invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v0
const-string v1, "EXISTS"
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4e
const/4 v0, 0x0
invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getNumber(I)I
move-result v0
iput v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_4e
const-string v0, "k9"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Got untagged EXISTS with value "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " for "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_4e
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handlePossibleUidNext(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v0
const-string v1, "EXPUNGE"
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_92
iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I
if-lez v0, :cond_92
iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I
sub-int/2addr v0, v2
iput v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_92
const-string v0, "k9"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Got untagged EXPUNGE with value "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " for "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_92
return-void
.end method
.method protected handleUntaggedResponses(Ljava/util/List;)Ljava/util/List;
.registers 5
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_4
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_14
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
goto :goto_4
:cond_14
return-object p1
.end method
.method public internalOpen(Lcom/fsck/k9/mail/Folder$OpenMode;)Ljava/util/List;
.registers 21
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->isOpen()Z
move-result v14
if-eqz v14, :cond_28
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMode:Lcom/fsck/k9/mail/Folder$OpenMode;
move-object v14, v0
move-object v0, v14
move-object/from16 v1, p1
if-ne v0, v1, :cond_28
:try_start_10
const-string v14, "NOOP"
move-object/from16 v0, p0
move-object v1, v14
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
:try_end_18
.catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_1a
move-result-object v13
:goto_19
return-object v13
:catch_1a
move-exception v14
move-object v7, v14
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
move-object v14, v0
move-object/from16 v0, p0
move-object v1, v14
move-object v2, v7
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
:cond_28
monitor-enter p0
:try_start_29
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object v14, v0
#calls: Lcom/fsck/k9/mail/store/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-static {v14}, Lcom/fsck/k9/mail/store/ImapStore;->access$400(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
move-result-object v14
move-object v0, v14
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
monitor-exit p0
:try_start_38
:try_end_38
.catchall {:try_start_29 .. :try_end_38} :catchall_d6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object v14, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;
invoke-static {v14}, Lcom/fsck/k9/mail/store/ImapStore;->access$500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v14
if-nez v14, :cond_d9
const-string v14, "LIST \"\" \"*%s\""
const/4 v15, 0x1
new-array v15, v15, [Ljava/lang/Object;
const/16 v16, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;
move-object/from16 v18, v0
#calls: Lcom/fsck/k9/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
invoke-static/range {v17 .. v18}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
aput-object v17, v15, v16
invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v14
move-object/from16 v0, p0
move-object v1, v14
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v11
invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_6b
:cond_6b
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-eqz v14, :cond_d9
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v12
check-cast v12, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
const/4 v14, 0x0
invoke-virtual {v12, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v14
const-string v15, "LIST"
invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v14
if-eqz v14, :cond_6b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object v14, v0
const/4 v15, 0x2
invoke-virtual {v12, v15}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;
move-result-object v15
#setter for: Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;
invoke-static {v14, v15}, Lcom/fsck/k9/mail/store/ImapStore;->access$502(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v14, :cond_6b
const-string v14, "k9"
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "Got path delimeter \'"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v16, v0
#getter for: Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;
invoke-static/range {v16 .. v16}, Lcom/fsck/k9/mail/store/ImapStore;->access$500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "\' for "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_end_c5
.catch Ljava/io/IOException; {:try_start_38 .. :try_end_c5} :catch_c6
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_38 .. :try_end_c5} :catch_14d
goto :goto_6b
:catch_c6
move-exception v14
move-object v7, v14
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
move-object v14, v0
move-object/from16 v0, p0
move-object v1, v14
move-object v2, v7
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v14
throw v14
:catchall_d6
move-exception v14
:try_start_d7
monitor-exit p0
:try_end_d8
.catchall {:try_start_d7 .. :try_end_d8} :catchall_d6
throw v14
:cond_d9
:try_start_d9
const-string v14, "SELECT \"%s\""
const/4 v15, 0x1
new-array v15, v15, [Ljava/lang/Object;
const/16 v16, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
move-object/from16 v17, v0
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;
move-result-object v18
#calls: Lcom/fsck/k9/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
invoke-static/range {v17 .. v18}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
aput-object v17, v15, v16
invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
move-object v1, v5
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v13
sget-object v14, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
move-object v0, v14
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMode:Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_106
:cond_106
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-eqz v14, :cond_17c
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v12
check-cast v12, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
iget-object v14, v12, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
if-eqz v14, :cond_106
invoke-virtual {v12}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I
move-result v14
const/4 v15, 0x2
if-lt v14, v15, :cond_106
const/4 v14, 0x1
invoke-virtual {v12, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;
move-result-object v4
instance-of v14, v4, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
if-eqz v14, :cond_106
move-object v0, v4
check-cast v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
move-object v3, v0
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I
move-result v14
if-lez v14, :cond_106
const/4 v14, 0x0
invoke-virtual {v3, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;
move-result-object v9
instance-of v14, v9, Ljava/lang/String;
if-eqz v14, :cond_106
move-object v0, v9
check-cast v0, Ljava/lang/String;
move-object v8, v0
const-string v14, "READ-ONLY"
invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v14
if-eqz v14, :cond_16c
sget-object v14, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/Folder$OpenMode;
move-object v0, v14
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMode:Lcom/fsck/k9/mail/Folder$OpenMode;
:try_end_14c
.catch Ljava/io/IOException; {:try_start_d9 .. :try_end_14c} :catch_c6
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_d9 .. :try_end_14c} :catch_14d
goto :goto_106
:catch_14d
move-exception v14
move-object v10, v14
const-string v14, "k9"
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "Unable to open connection for "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
throw v10
:cond_16c
:try_start_16c
const-string v14, "READ-WRITE"
invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v14
if-eqz v14, :cond_106
sget-object v14, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
move-object v0, v14
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMode:Lcom/fsck/k9/mail/Folder$OpenMode;
goto :goto_106
:cond_17c
const/4 v14, 0x1
move v0, v14
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mExists:Z
:try_end_182
.catch Ljava/io/IOException; {:try_start_16c .. :try_end_182} :catch_c6
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_16c .. :try_end_182} :catch_14d
goto/16 :goto_19
.end method
.method public isOpen()Z
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
.registers 7
const/4 v3, 0x1
array-length v0, p1
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
new-array v0, v3, [Lcom/fsck/k9/mail/Flag;
const/4 v1, 0x0
sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
invoke-virtual {p0, p1, v0, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
goto :goto_4
.end method
.method public open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->internalOpen(Lcom/fsck/k9/mail/Folder$OpenMode;)Ljava/util/List;
iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I
const/4 v1, -0x1
if-ne v0, v1, :cond_10
new-instance v0, Lcom/fsck/k9/mail/MessagingException;
const-string v1, "Did not find message count during open"
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
return-void
.end method
.method public setFlags([Lcom/fsck/k9/mail/Flag;Z)V
.registers 8
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V
:try_start_3
const-string v1, "UID STORE 1:* %sFLAGS.SILENT (%s)"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
if-eqz p2, :cond_1e
const-string v4, "+"
:goto_d
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->combineFlags([Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
return-void
:cond_1e
const-string v4, "-"
:try_end_20
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_20} :catch_21
goto :goto_d
:catch_21
move-exception v1
move-object v0, v1
iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v1
throw v1
.end method
.method public setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
.registers 15
invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V
array-length v6, p1
new-array v5, v6, [Ljava/lang/String;
const/4 v3, 0x0
array-length v0, p1
:goto_8
if-ge v3, v0, :cond_15
aget-object v6, p1, v3
invoke-virtual {v6}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v6
aput-object v6, v5, v3
add-int/lit8 v3, v3, 0x1
goto :goto_8
:cond_15
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v3, 0x0
array-length v0, p2
:goto_1c
if-ge v3, v0, :cond_4a
aget-object v1, p2, v3
sget-object v6, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
if-ne v1, v6, :cond_2c
const-string v6, "\\Seen"
invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_29
:goto_29
add-int/lit8 v3, v3, 0x1
goto :goto_1c
:cond_2c
sget-object v6, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
if-ne v1, v6, :cond_36
const-string v6, "\\Deleted"
invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_29
:cond_36
sget-object v6, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;
if-ne v1, v6, :cond_40
const-string v6, "\\Answered"
invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_29
:cond_40
sget-object v6, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;
if-ne v1, v6, :cond_29
const-string v6, "\\Flagged"
invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_29
:try_start_4a
:cond_4a
const-string v6, "UID STORE %s %sFLAGS.SILENT (%s)"
const/4 v7, 0x3
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
const/16 v9, 0x2c
invoke-static {v5, v9}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;
move-result-object v9
aput-object v9, v7, v8
const/4 v8, 0x1
if-eqz p3, :cond_7a
const-string v9, "+"
:goto_5d
aput-object v9, v7, v8
const/4 v8, 0x2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v9
new-array v9, v9, [Ljava/lang/String;
invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v9
const/16 v10, 0x20
invoke-static {v9, v10}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;
move-result-object v9
aput-object v9, v7, v8
invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
return-void
:cond_7a
const-string v9, "-"
:try_end_7c
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_7c} :catch_7d
goto :goto_5d
:catch_7d
move-exception v6
move-object v4, v6
iget-object v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
invoke-direct {p0, v6, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
move-result-object v6
throw v6
.end method