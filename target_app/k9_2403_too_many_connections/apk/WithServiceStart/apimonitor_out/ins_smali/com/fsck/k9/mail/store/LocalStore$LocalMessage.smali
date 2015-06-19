.class public Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "LocalStore.java"
.field private mAttachmentCount:I
.field private mHeadersLoaded:Z
.field private mId:J
.field private mMessageDirty:Z
.field private mPreview:Ljava/lang/String;
.field private mSubject:Ljava/lang/String;
.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;
.method public constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;)V
.registers 4
const/4 v1, 0x0
iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;
invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mPreview:Ljava/lang/String;
iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z
iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z
return-void
.end method
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
.registers 6
const/4 v1, 0x0
iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;
invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mPreview:Ljava/lang/String;
iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z
iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z
iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mUid:Ljava/lang/String;
iput-object p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;
return-void
.end method
.method static synthetic access$200(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V
.registers 2
invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V
return-void
.end method
.method static synthetic access$500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J
.registers 3
iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
return-wide v0
.end method
.method static synthetic access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->buildMimeRepresentation()V
return-void
.end method
.method private buildMimeRepresentation()V
.registers 4
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z
if-nez v0, :cond_6
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mSubject:Ljava/lang/String;
invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;
array-length v0, v0
if-lez v0, :cond_1b
iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;
aget-object v0, v0, v2
invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V
:cond_1b
iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;
invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setReplyTo([Lcom/fsck/k9/mail/Address;)V
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;
move-result-object v0
invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;
iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mTo:[Lcom/fsck/k9/mail/Address;
invoke-super {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;
iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCc:[Lcom/fsck/k9/mail/Address;
invoke-super {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;
iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mBcc:[Lcom/fsck/k9/mail/Address;
invoke-super {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageId:Ljava/lang/String;
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageId:Ljava/lang/String;
invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V
:cond_45
iput-boolean v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z
goto :goto_5
.end method
.method private loadHeaders()V
.registers 3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z
iget-object p0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;
check-cast p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
#calls: Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->populateHeaders(Ljava/util/List;)V
invoke-static {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$1600(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;)V
return-void
.end method
.method private populateFromGetMessageCursor(Landroid/database/Cursor;)V
.registers 15
const/16 v11, 0xe
const/4 v10, 0x1
const/4 v9, 0x0
const-string v12, ""
invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
if-nez v8, :cond_5c
const-string v8, ""
move-object v8, v12
:goto_f
invoke-virtual {p0, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setSubject(Ljava/lang/String;)V
invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
move-result-object v5
array-length v8, v5
if-lez v8, :cond_22
aget-object v8, v5, v9
invoke-virtual {p0, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V
:cond_22
new-instance v8, Ljava/util/Date;
const/4 v9, 0x2
invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v9
invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V
invoke-virtual {p0, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setInternalSentDate(Ljava/util/Date;)V
const/4 v8, 0x3
invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {p0, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setUid(Ljava/lang/String;)V
const/4 v8, 0x4
invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_62
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v8
if-lez v8, :cond_62
const-string v8, ","
invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
move-object v0, v4
:try_start_4b
array-length v7, v0
const/4 v6, 0x0
:goto_4d
if-ge v6, v7, :cond_62
aget-object v2, v0, v6
invoke-static {v2}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;
move-result-object v8
const/4 v9, 0x1
invoke-virtual {p0, v8, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
:try_end_59
.catch Ljava/lang/Exception; {:try_start_4b .. :try_end_59} :catch_61
add-int/lit8 v6, v6, 0x1
goto :goto_4d
:cond_5c
invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
goto :goto_f
:catch_61
move-exception v8
:cond_62
const/4 v8, 0x5
invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v8
iput-wide v8, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;
const/4 v9, 0x6
invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
move-result-object v9
invoke-virtual {p0, v8, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;
const/4 v9, 0x7
invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
move-result-object v9
invoke-virtual {p0, v8, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;
const/16 v9, 0x8
invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
move-result-object v9
invoke-virtual {p0, v8, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
const/16 v8, 0x9
invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
move-result-object v8
invoke-virtual {p0, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setReplyTo([Lcom/fsck/k9/mail/Address;)V
const/16 v8, 0xa
invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I
move-result v8
iput v8, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mAttachmentCount:I
new-instance v8, Ljava/util/Date;
const/16 v9, 0xb
invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v9
invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V
invoke-virtual {p0, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setInternalDate(Ljava/util/Date;)V
const/16 v8, 0xc
invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {p0, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setMessageId(Ljava/lang/String;)V
invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
if-nez v8, :cond_e5
const-string v8, ""
move-object v8, v12
:goto_c9
iput-object v8, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mPreview:Ljava/lang/String;
iget-object v8, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;
if-nez v8, :cond_e4
new-instance v1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
iget-object v8, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;
const/16 v9, 0xd
invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
int-to-long v9, v9
invoke-direct {v1, v8, v9, v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;-><init>(Lcom/fsck/k9/mail/store/LocalStore;J)V
sget-object v8, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-virtual {v1, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
iput-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;
:cond_e4
return-void
:cond_e5
invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
goto :goto_c9
.end method
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->loadHeaders()V
:cond_7
invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public getAttachmentCount()I
.registers 2
iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mAttachmentCount:I
return v0
.end method
.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
.registers 3
iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->loadHeaders()V
:cond_7
invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getId()J
.registers 3
iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
return-wide v0
.end method
.method public getPreview()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mPreview:Ljava/lang/String;
return-object v0
.end method
.method public getSubject()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mSubject:Ljava/lang/String;
return-object v0
.end method
.method public removeHeader(Ljava/lang/String;)V
.registers 3
iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->loadHeaders()V
:cond_7
invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
return-void
.end method
.method public setFlag(Lcom/fsck/k9/mail/Flag;Z)V
.registers 12
const/4 v8, 0x0
const/4 v7, 0x1
sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
if-ne p1, v2, :cond_9a
if-eqz p2, :cond_9a
iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;
check-cast v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;
move-result-object v3
#calls: Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V
invoke-static {v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$1400(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V
iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;
#getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
const-string v3, "UPDATE messages SET deleted = 1,subject = NULL, sender_list = NULL, date = NULL, to_list = NULL, cc_list = NULL, bcc_list = NULL, preview = NULL, html_content = NULL, text_content = NULL, reply_to_list = NULL WHERE id = ?"
new-array v4, v7, [Ljava/lang/Object;
iget-wide v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v4, v8
invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;
#getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
const-string v3, "DELETE FROM attachments WHERE message_id = ?"
new-array v4, v7, [Ljava/lang/Object;
iget-wide v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v4, v8
invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;
check-cast v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
iget-wide v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
#calls: Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteHeaders(J)V
invoke-static {v2, v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$1500(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V
:goto_46
:try_start_46
:cond_46
sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
if-eq p1, v2, :cond_5a
sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DESTROYED:Lcom/fsck/k9/mail/Flag;
if-eq p1, v2, :cond_5a
sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
if-ne p1, v2, :cond_70
sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z
move-result v2
if-nez v2, :cond_70
:cond_5a
iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;
check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
if-eqz p2, :cond_cb
sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z
move-result v2
if-nez v2, :cond_cb
invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I
move-result v2
sub-int/2addr v2, v7
invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V
:try_end_70
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_46 .. :try_end_70} :catch_df
:cond_70
:goto_70
invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;
#getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
const-string v3, "UPDATE messages SET flags = ?  WHERE id = ?"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getFlags()[Lcom/fsck/k9/mail/Flag;
move-result-object v5
const/16 v6, 0x2c
invoke-static {v5, v6}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v8
iget-wide v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v4, v7
invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
:cond_9a
sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DESTROYED:Lcom/fsck/k9/mail/Flag;
if-ne p1, v2, :cond_46
if-eqz p2, :cond_46
iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;
check-cast v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;
move-result-object v3
#calls: Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V
invoke-static {v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$1400(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V
iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;
#getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
const-string v3, "DELETE FROM messages WHERE id = ?"
new-array v4, v7, [Ljava/lang/Object;
iget-wide v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v4, v8
invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;
check-cast v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
iget-wide v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
#calls: Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteHeaders(J)V
invoke-static {v2, v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$1500(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V
goto/16 :goto_46
:cond_cb
if-nez p2, :cond_70
:try_start_cd
sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z
move-result v2
if-eqz v2, :cond_70
invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I
move-result v2
add-int/lit8 v2, v2, 0x1
invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V
:try_end_de
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_cd .. :try_end_de} :catch_df
goto :goto_70
:catch_df
move-exception v2
move-object v1, v2
const-string v2, "k9"
const-string v3, "Unable to update LocalStore unread message count"
invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
new-instance v2, Ljava/lang/RuntimeException;
invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v2
.end method
.method public setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
return-void
.end method
.method public setFrom(Lcom/fsck/k9/mail/Address;)V
.registers 5
const/4 v2, 0x1
new-array v0, v2, [Lcom/fsck/k9/mail/Address;
const/4 v1, 0x0
aput-object p1, v0, v1
iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;
iput-boolean v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z
return-void
.end method
.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->loadHeaders()V
:cond_7
invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setMessageId(Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageId:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z
return-void
.end method
.method public setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
.registers 5
const/4 v1, 0x0
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;
if-ne p1, v0, :cond_13
if-eqz p2, :cond_a
array-length v0, p2
if-nez v0, :cond_10
:cond_a
iput-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mTo:[Lcom/fsck/k9/mail/Address;
:goto_c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z
return-void
:cond_10
iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mTo:[Lcom/fsck/k9/mail/Address;
goto :goto_c
:cond_13
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;
if-ne p1, v0, :cond_22
if-eqz p2, :cond_1c
array-length v0, p2
if-nez v0, :cond_1f
:cond_1c
iput-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCc:[Lcom/fsck/k9/mail/Address;
goto :goto_c
:cond_1f
iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCc:[Lcom/fsck/k9/mail/Address;
goto :goto_c
:cond_22
sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;
if-ne p1, v0, :cond_31
if-eqz p2, :cond_2b
array-length v0, p2
if-nez v0, :cond_2e
:cond_2b
iput-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mBcc:[Lcom/fsck/k9/mail/Address;
goto :goto_c
:cond_2e
iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mBcc:[Lcom/fsck/k9/mail/Address;
goto :goto_c
:cond_31
new-instance v0, Lcom/fsck/k9/mail/MessagingException;
const-string v1, "Unrecognized recipient type."
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setReplyTo([Lcom/fsck/k9/mail/Address;)V
.registers 3
if-eqz p1, :cond_5
array-length v0, p1
if-nez v0, :cond_c
:cond_5
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;
:goto_8
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z
return-void
:cond_c
iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;
goto :goto_8
.end method
.method public setSubject(Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mSubject:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z
return-void
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 3
iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->buildMimeRepresentation()V
:cond_7
invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V
return-void
.end method