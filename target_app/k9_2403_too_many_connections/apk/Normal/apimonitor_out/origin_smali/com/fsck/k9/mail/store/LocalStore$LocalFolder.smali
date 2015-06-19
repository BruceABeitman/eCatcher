.class public Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
.super Lcom/fsck/k9/mail/Folder;
.source "LocalStore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalFolder"
.end annotation


# instance fields
.field private displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field private mFolderId:J

.field private mName:Ljava/lang/String;

.field private mPushState:Ljava/lang/String;

.field private mUnreadMessageCount:I

.field private mVisibleLimit:I

.field private prefId:Ljava/lang/String;

.field private pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field private syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;J)V
    .registers 8

    const/4 v3, -0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {p0}, Lcom/fsck/k9/mail/Folder;-><init>()V

    iput-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    iput v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    iput v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->prefId:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mPushState:Ljava/lang/String;

    iput-wide p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;)V
    .registers 7

    const/4 v3, -0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {p0}, Lcom/fsck/k9/mail/Folder;-><init>()V

    iput-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    iput v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    iput v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->prefId:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mPushState:Ljava/lang/String;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    const-string v0, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    :cond_37
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;ILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct/range {p0 .. p10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(ILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteHeaders(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->populateHeaders(Ljava/util/List;)V

    return-void
.end method

.method private deleteAttachments(Ljava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v14, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const-string v3, "folder_id = ? AND uid = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :cond_2e
    :goto_2e
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_97

    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_89

    move-result-wide v12

    const/4 v10, 0x0

    :try_start_3a
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "attachments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const-string v3, "message_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :cond_5d
    :goto_5d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_83

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_67
    .catchall {:try_start_3a .. :try_end_67} :catchall_90

    move-result-wide v8

    :try_start_68
    new-instance v11, Ljava/io/File;

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$1100(Lcom/fsck/k9/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_80
    .catchall {:try_start_68 .. :try_end_80} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_80} :catch_81

    goto :goto_5d

    :catch_81
    move-exception v0

    goto :goto_5d

    :cond_83
    if-eqz v10, :cond_2e

    :try_start_85
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_2e

    :catchall_89
    move-exception v0

    if-eqz v14, :cond_8f

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8f
    throw v0

    :catchall_90
    move-exception v0

    if-eqz v10, :cond_96

    :try_start_93
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_96
    throw v0
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_89

    :cond_97
    if-eqz v14, :cond_9c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9c
    return-void
.end method

.method private deleteHeaders(J)V
    .registers 8

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM headers WHERE id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private getPrefId()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->prefId:Ljava/lang/String;

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/mail/store/LocalStore;->access$400(Lcom/fsck/k9/mail/store/LocalStore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->prefId:Ljava/lang/String;

    :cond_2a
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->prefId:Ljava/lang/String;

    return-object v0
.end method

.method private open(ILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    iput p4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    iput-object p8, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mPushState:Ljava/lang/String;

    invoke-super {p0, p7}, Lcom/fsck/k9/mail/Folder;->setStatus(Ljava/lang/String;)V

    invoke-super {p0, p5, p6}, Lcom/fsck/k9/mail/Folder;->setLastChecked(J)V

    invoke-super {p0, p9, p10}, Lcom/fsck/k9/mail/Folder;->setLastPush(J)V

    return-void
.end method

.method private populateHeaders(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    :try_start_8
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_49

    if-eqz v1, :cond_25

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_25
    const-string v9, "?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_49
    iget-object v9, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT message_id, name, value FROM headers WHERE message_id in ( "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v9, v10, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_75
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9f

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    invoke-virtual {p0, v5, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_8 .. :try_end_97} :catchall_98

    goto :goto_75

    :catchall_98
    move-exception v9

    if-eqz v0, :cond_9e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9e
    throw v9

    :cond_9f
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7
.end method

.method private resetUnreadCount()V
    .registers 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {p0, v7}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v5

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_1a

    aget-object v4, v0, v2

    sget-object v7, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v4, v7}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v7

    if-nez v7, :cond_17

    add-int/lit8 v6, v6, 0x1

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v7

    move-object v1, v7

    const-string v7, "k9"

    const-string v8, "Unable to fetch all messages from LocalStore"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method private saveAttachment(JLcom/fsck/k9/mail/Part;Z)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    const/4 v10, 0x0

    const/16 v17, -0x1

    const/16 v19, 0x0

    if-nez p4, :cond_1b

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    move/from16 v20, v0

    if-eqz v20, :cond_1b

    move-object/from16 v0, p3

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    move-object/from16 p4, v0

    invoke-virtual/range {p4 .. p4}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->getAttachmentId()J

    move-result-wide v6

    :cond_1b
    invoke-interface/range {p3 .. p3}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v20

    if-eqz v20, :cond_32

    invoke-interface/range {p3 .. p3}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v8

    move-object v0, v8

    instance-of v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;

    move/from16 v20, v0

    if-eqz v20, :cond_19e

    check-cast v8, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->getContentUri()Landroid/net/Uri;

    move-result-object v10

    :cond_32
    :goto_32
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4f

    invoke-interface/range {p3 .. p3}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4f

    const-string v20, "size"

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_4f

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    :cond_4f
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_59

    const/16 v17, 0x0

    :cond_59
    const-string v20, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2c

    invoke-static/range {v20 .. v21}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {p3 .. p3}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "name"

    invoke-static/range {v20 .. v21}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {p3 .. p3}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v14, :cond_88

    if-eqz v9, :cond_88

    const-string v20, "filename"

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_88
    const-wide/16 v20, -0x1

    cmp-long v20, v6, v20

    if-nez v20, :cond_1d0

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v20, "message_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v20, "content_uri"

    if-eqz v10, :cond_1cc

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_a9
    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "store_data"

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "size"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "name"

    move-object v0, v11

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "mime_type"

    invoke-interface/range {p3 .. p3}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v20, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "attachments"

    const-string v22, "message_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    :goto_f9
    if-eqz v19, :cond_18d

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v20, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/mail/store/LocalStore;->access$1100(Lcom/fsck/k9/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v20

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v21, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mPath:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/fsck/k9/mail/store/LocalStore;->access$1200(Lcom/fsck/k9/mail/store/LocalStore;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/provider/AttachmentProvider;->getAttachmentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v10

    new-instance v20, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v21, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mApplication:Landroid/app/Application;
    invoke-static/range {v21 .. v21}, Lcom/fsck/k9/mail/store/LocalStore;->access$600(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/app/Application;

    move-result-object v21

    move-object/from16 v0, v20

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;-><init>(Landroid/net/Uri;Landroid/app/Application;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v20, "content_uri"

    if-eqz v10, :cond_222

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_15b
    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v20, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "attachments"

    const-string v22, "id = ?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_18d
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    move/from16 v20, v0

    if-eqz v20, :cond_19d

    check-cast p3, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    move-object/from16 v0, p3

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->setAttachmentId(J)V

    :cond_19d
    return-void

    :cond_19e
    invoke-interface/range {p3 .. p3}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/fsck/k9/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    const-string v20, "att"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v22, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;
    invoke-static/range {v22 .. v22}, Lcom/fsck/k9/mail/store/LocalStore;->access$1100(Lcom/fsck/k9/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v19

    new-instance v15, Ljava/io/FileOutputStream;

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v13, v15}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v17

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_32

    :cond_1cc
    const/16 v21, 0x0

    goto/16 :goto_a9

    :cond_1d0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v20, "content_uri"

    if-eqz v10, :cond_21f

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_1dd
    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "size"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v20, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "attachments"

    const-string v22, "id = ?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_f9

    :cond_21f
    const/16 v21, 0x0

    goto :goto_1dd

    :cond_222
    const/16 v21, 0x0

    goto/16 :goto_15b
.end method

.method private saveHeaders(JLcom/fsck/k9/mail/internet/MimeMessage;)V
    .registers 16

    const-string v11, "name"

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteHeaders(J)V

    invoke-virtual {p3}, Lcom/fsck/k9/mail/internet/MimeMessage;->getHeaderNames()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/fsck/k9/mail/store/LocalStore;->access$1000()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p3, v5}, Lcom/fsck/k9/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v4, :cond_d

    aget-object v6, v0, v3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "message_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "name"

    invoke-virtual {v1, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "value"

    invoke-virtual {v1, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v8}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "headers"

    const-string v10, "name"

    invoke-virtual {v8, v9, v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_56
    return-void
.end method


# virtual methods
.method public appendMessages([Lcom/fsck/k9/mail/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;Z)V

    return-void
.end method

.method public appendMessages([Lcom/fsck/k9/mail/Message;Z)V
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v26, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    move-object/from16 v5, p1

    array-length v13, v5

    const/4 v11, 0x0

    move v12, v11

    :goto_e
    if-ge v12, v13, :cond_2fe

    aget-object v14, v5, v12

    move-object v0, v14

    instance-of v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    move/from16 v26, v0

    if-nez v26, :cond_21

    new-instance v26, Ljava/lang/Error;

    const-string v27, "LocalStore can only store Messages that extend MimeMessage"

    invoke-direct/range {v26 .. v27}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_21
    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_9b

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "K9LOCAL:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    :goto_48
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v14

    move-object/from16 v1, v25

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_67
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_ff

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/fsck/k9/mail/Part;

    :try_start_73
    invoke-static/range {v24 .. v24}, Lcom/fsck/k9/mail/internet/MimeUtility;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v24 .. v24}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "text/html"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_fa

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8a} :catch_8b

    goto :goto_67

    :catch_8b
    move-exception v26

    move-object/from16 v9, v26

    new-instance v26, Lcom/fsck/k9/mail/MessagingException;

    const-string v27, "Unable to get text for message part"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    :cond_9b
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v18

    if-eqz v18, :cond_c0

    sget-object v26, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v26

    if-nez v26, :cond_c0

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v26

    const/16 v27, 0x1

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    :cond_c0
    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v26, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v26

    const-string v27, "DELETE FROM messages WHERE folder_id = ? AND uid = ?"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_48

    :cond_fa
    :try_start_fa
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fd} :catch_8b

    goto/16 :goto_67

    :cond_ff
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->markupContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->calculateContentPreview(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :try_start_119
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v26, "uid"

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "subject"

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "sender_list"

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "date"

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v27

    if-nez v27, :cond_2b1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    :goto_154
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "flags"

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getFlags()[Lcom/fsck/k9/mail/Flag;

    move-result-object v27

    const/16 v28, 0x2c

    invoke-static/range {v27 .. v28}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "deleted"

    sget-object v27, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v27

    if-eqz v27, :cond_2bb

    const/16 v27, 0x1

    :goto_187
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v26, "folder_id"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "to_list"

    sget-object v27, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "cc_list"

    sget-object v27, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "bcc_list"

    sget-object v27, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "html_content"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_2bf

    move-object/from16 v27, v10

    :goto_1f6
    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "text_content"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_2c3

    move-object/from16 v27, v22

    :goto_208
    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "preview"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_2c7

    move-object/from16 v27, v19

    :goto_21a
    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "reply_to_list"

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "attachment_count"

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v26, "internal_date"

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v27

    if-nez v27, :cond_2cb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    :goto_252
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_26d

    const-string v26, "message_id"

    move-object v0, v8

    move-object/from16 v1, v26

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v26, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v26

    const-string v27, "messages"

    const-string v28, "uid"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_28a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2d5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/Part;

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object v3, v6

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->saveAttachment(JLcom/fsck/k9/mail/Part;Z)V
    :try_end_2a0
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_2a0} :catch_2a1

    goto :goto_28a

    :catch_2a1
    move-exception v26

    move-object/from16 v9, v26

    new-instance v26, Lcom/fsck/k9/mail/MessagingException;

    const-string v27, "Error appending message"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    :cond_2b1
    :try_start_2b1
    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v27

    goto/16 :goto_154

    :cond_2bb
    const/16 v27, 0x0

    goto/16 :goto_187

    :cond_2bf
    const/16 v27, 0x0

    goto/16 :goto_1f6

    :cond_2c3
    const/16 v27, 0x0

    goto/16 :goto_208

    :cond_2c7
    const/16 v27, 0x0

    goto/16 :goto_21a

    :cond_2cb
    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v27

    goto/16 :goto_252

    :cond_2d5
    move-object v0, v14

    check-cast v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    move-object v15, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->saveHeaders(JLcom/fsck/k9/mail/internet/MimeMessage;)V

    sget-object v26, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v26

    if-nez v26, :cond_2f9

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V
    :try_end_2f9
    .catch Ljava/lang/Exception; {:try_start_2b1 .. :try_end_2f9} :catch_2a1

    :cond_2f9
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto/16 :goto_e

    :cond_2fe
    return-void
.end method

.method public calculateContentPreview(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v3, 0xa0

    const-string v4, " "

    const-string v2, ""

    if-nez p1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "^.*:"

    const-string v1, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(?m)^>.*$"

    const-string v1, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "^On .*wrote.?$"

    const-string v1, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(\\r|\\n)+"

    const-string v1, " "

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_3a

    move-object v0, p1

    goto :goto_9

    :cond_3a
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_9
.end method

.method public changeUid(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v1, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "messages"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
    invoke-static {p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public close()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    return-void
.end method

.method public copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    instance-of v0, p2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    if-nez v0, :cond_c

    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "copyMessages called with incorrect Folder"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    check-cast p2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;Z)V

    return-void
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT INTO folders (name, visible_limit) VALUES (?, ?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    sget v3, Lcom/fsck/k9/K9;->DEFAULT_VISIBLE_LIMIT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT INTO folders (name, visible_limit) VALUES (?, ?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public delete(Lcom/fsck/k9/Preferences;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPrefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".displayMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".syncMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public delete(Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v5, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v4

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v2, :cond_1b

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1b
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v5}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "DELETE FROM folders WHERE id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public deleteMessagesOlderThan(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM messages WHERE folder_id = ? and date < ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->resetUnreadCount()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v0, p1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public exists()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT id FROM folders where folders.name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_36

    move-result v1

    if-lez v1, :cond_2d

    move v2, v8

    :goto_27
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    :goto_2c
    return v2

    :cond_2d
    move v2, v7

    goto :goto_27

    :cond_2f
    if-eqz v0, :cond_34

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_34
    move v2, v7

    goto :goto_2c

    :catchall_36
    move-exception v2

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3c
    throw v2
.end method

.method public fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v5, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ad

    move-object/from16 v13, p1

    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    const/16 v19, 0x0

    :goto_1b
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_1ad

    aget-object v24, v13, v19

    move-object/from16 v0, v24

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v23, v0

    const/16 v17, 0x0

    const-string v5, "Content-Type"

    const-string v6, "multipart/mixed"

    move-object/from16 v0, v23

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v25, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct/range {v25 .. v25}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>()V

    const-string v5, "mixed"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setBody(Lcom/fsck/k9/mail/Body;)V

    :try_start_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object v5, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v5}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "SELECT html_content, text_content FROM messages WHERE id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
    invoke-static/range {v23 .. v23}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v5, 0x1

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_186

    new-instance v14, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object v5, v0

    move-object v0, v14

    move-object v1, v5

    move-object/from16 v2, v29

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const-string v5, "text/plain"

    invoke-direct {v15, v14, v5}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V
    :try_end_99
    .catchall {:try_start_4a .. :try_end_99} :catchall_19d

    :goto_99
    if-eqz v17, :cond_9e

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_9e
    :try_start_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object v5, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v5}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "attachments"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "size"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "name"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "mime_type"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "store_data"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "content_uri"

    aput-object v9, v7, v8

    const-string v8, "message_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
    invoke-static/range {v23 .. v23}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    :goto_e1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1a4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v5, 0x1

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/4 v5, 0x2

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/4 v5, 0x3

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/4 v5, 0x4

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/4 v5, 0x5

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    if-eqz v16, :cond_12c

    new-instance v14, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object v6, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mApplication:Landroid/app/Application;
    invoke-static {v6}, Lcom/fsck/k9/mail/store/LocalStore;->access$600(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/app/Application;

    move-result-object v6

    invoke-direct {v14, v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;-><init>(Landroid/net/Uri;Landroid/app/Application;)V

    :cond_12c
    new-instance v15, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object v5, v0

    move-object v0, v15

    move-object v1, v5

    move-object v2, v14

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Lcom/fsck/k9/mail/Body;J)V

    const-string v5, "Content-Type"

    const-string v6, "%s;\n name=\"%s\""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v30, v7, v8

    const/4 v8, 0x1

    aput-object v26, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Transfer-Encoding"

    const-string v6, "base64"

    invoke-virtual {v15, v5, v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Disposition"

    const-string v6, "attachment;\n filename=\"%s\";\n size=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v26, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "X-Android-Attachment-StoreData"

    move-object v0, v15

    move-object v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V
    :try_end_17d
    .catchall {:try_start_9e .. :try_end_17d} :catchall_17f

    goto/16 :goto_e1

    :catchall_17f
    move-exception v5

    if-eqz v17, :cond_185

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_185
    throw v5

    :cond_186
    :try_start_186
    new-instance v14, Lcom/fsck/k9/mail/internet/TextBody;

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const-string v5, "text/html"

    invoke-direct {v15, v14, v5}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V
    :try_end_19b
    .catchall {:try_start_186 .. :try_end_19b} :catchall_19d

    goto/16 :goto_99

    :catchall_19d
    move-exception v5

    if-eqz v17, :cond_1a3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1a3
    throw v5

    :cond_1a4
    if-eqz v17, :cond_1a9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1a9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1b

    :cond_1ad
    return-void
.end method

.method public getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    return-wide v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    new-instance v1, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {v1, v2, p1, p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    const/4 v0, 0x0

    :try_start_d
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/fsck/k9/mail/store/LocalStore;->access$700()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FROM messages WHERE uid = ? AND folder_id = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_5e

    move-result v2

    if-nez v2, :cond_54

    const/4 v2, 0x0

    if-eqz v0, :cond_53

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_53
    :goto_53
    return-object v2

    :cond_54
    :try_start_54
    #calls: Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V
    invoke-static {v1, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$200(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5e

    if-eqz v0, :cond_5c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5c
    move-object v2, v1

    goto :goto_53

    :catchall_5e
    move-exception v2

    if-eqz v0, :cond_64

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v2
.end method

.method public getMessageCount()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v0, 0x0

    :try_start_6
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT COUNT(*) FROM messages WHERE messages.folder_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_2c

    move-result v1

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2b
    return v1

    :catchall_2c
    move-exception v2

    if-eqz v0, :cond_32

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_32
    throw v2
.end method

.method public getMessages(IILcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "LocalStore.getMessages(int, int, MessageRetrievalListener) not yet implemented"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fsck/k9/mail/store/LocalStore;->access$700()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FROM messages WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_43

    const-string v2, ""

    :goto_24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " folder_id = ? ORDER BY date DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    #calls: Lcom/fsck/k9/mail/store/LocalStore;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;
    invoke-static {v0, p1, p0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore;->access$800(Lcom/fsck/k9/mail/store/LocalStore;Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0

    :cond_43
    const-string v2, "deleted = 0 AND "

    goto :goto_24
.end method

.method public getMessages([Ljava/lang/String;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v5, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    if-nez p1, :cond_c

    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v5

    :goto_b
    return-object v5

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v2, :cond_22

    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_22
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/Message;

    move-object v5, p0

    goto :goto_b
.end method

.method public getMode()Lcom/fsck/k9/mail/Folder$OpenMode;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/fsck/k9/mail/Flag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/fsck/k9/mail/store/LocalStore;->access$1300()[Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .registers 3

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto :goto_a
.end method

.method public getPushState()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mPushState:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public getRawSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .registers 3

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto :goto_a
.end method

.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Cannot call getUidFromMessageId on LocalFolder"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnreadMessageCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    return v0
.end method

.method public getVisibleLimit()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    return v0
.end method

.method public htmlifyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x200

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_11
    :sswitch_11
    :try_start_11
    invoke-virtual {v4}, Ljava/io/StringReader;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_28

    sparse-switch v1, :sswitch_data_9e

    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1f} :catch_20

    goto :goto_11

    :catch_20
    move-exception v7

    move-object v2, v7

    const-string v7, "k9"

    const/4 v8, 0x0

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\s*([-=_]{30,}+)\\s*"

    const-string v8, "<hr />"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "(?m)^([^\r\n]{4,}[\\s\\w,:;+/])(?:\r\n|\n|\r)(?=[a-z]\\S{0,10}[\\s\\n\\r])"

    const-string v8, "$1 "

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "(?m)(\r\n|\n|\r){4,}"

    const-string v8, "\n\n"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v7, Landroid/text/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x200

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v7, "<html><body><pre style=\"white-space: pre-wrap; word-wrap:break-word; \">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5a
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_91

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    if-eqz v6, :cond_73

    if-eqz v6, :cond_8b

    const/4 v7, 0x1

    sub-int v7, v6, v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-eq v7, v8, :cond_8b

    :cond_73
    const-string v7, "<a href=\"$0\">$0</a>"

    invoke-virtual {v3, v5, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_5a

    :sswitch_79
    :try_start_79
    const-string v7, "&amp;"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :sswitch_7f
    const-string v7, "&lt;"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :sswitch_85
    const-string v7, "&gt;"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_8a} :catch_20

    goto :goto_11

    :cond_8b
    const-string v7, "$0"

    invoke-virtual {v3, v5, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_5a

    :cond_91
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v7, "</pre></body></html>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_9e
    .sparse-switch
        0xd -> :sswitch_11
        0x26 -> :sswitch_79
        0x3c -> :sswitch_7f
        0x3e -> :sswitch_85
    .end sparse-switch
.end method

.method public isOpen()Z
    .registers 5

    iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public markupContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v2, "cid:"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->htmlifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_12
    const-string v0, "cid:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    const-string v0, "cid:"

    const-string v0, "http://cid/"

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    move-object v0, p2

    goto :goto_23
.end method

.method public moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move v9, v0

    if-nez v9, :cond_f

    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "moveMessages called with non-LocalFolder"

    invoke-direct {v9, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_f
    move-object/from16 v0, p2

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object v3, v0

    sget-object v9, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v3, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    move-object/from16 v1, p1

    array-length v5, v1

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v5, :cond_f6

    aget-object v6, v1, v2

    move-object v0, v6

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object v4, v0

    sget-object v9, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v9

    if-nez v9, :cond_3f

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    :cond_3f
    invoke-virtual {v6}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    sget-boolean v9, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v9, :cond_8d

    const-string v9, "k9"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating folder_id to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for message with UID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " currently in folder "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "K9LOCAL:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "UPDATE messages SET folder_id = ?, uid = ? WHERE id = ?"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {v8, v9, v7, p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    sget-object v9, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    sget-object v9, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/fsck/k9/mail/Message;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {p0, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    :cond_f6
    return-void
.end method

.method public open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v12, 0x0

    :try_start_8
    const-string v11, "SELECT id, name,unread_count, visible_limit, last_updated, status, push_state, last_pushed FROM folders "

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "where folders.name = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    :goto_33
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_97

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_67

    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x6

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x7

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(ILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;J)V
    :try_end_67
    .catchall {:try_start_8 .. :try_end_67} :catchall_a0

    :cond_67
    :goto_67
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :cond_6d
    :try_start_6d
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "where folders.id = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_33

    :cond_97
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    :try_end_9f
    .catchall {:try_start_6d .. :try_end_9f} :catchall_a0

    goto :goto_67

    :catchall_a0
    move-exception v0

    if-eqz v12, :cond_a6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a6
    throw v0
.end method

.method public purgeToVisibleLimit(Lcom/fsck/k9/mail/MessageRemovalListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;

    move-result-object v1

    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    :goto_d
    array-length v2, v1

    if-ge v0, v2, :cond_22

    if-eqz p1, :cond_17

    aget-object v2, v1, v0

    invoke-interface {p1, v2}, Lcom/fsck/k9/mail/MessageRemovalListener;->messageRemoved(Lcom/fsck/k9/mail/Message;)V

    :cond_17
    aget-object v2, v1, v0

    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DESTROYED:Lcom/fsck/k9/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_22
    return-void
.end method

.method public refresh(Lcom/fsck/k9/Preferences;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const-string v8, "INBOX"

    const-string v7, "k9"

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPrefId()Ljava/lang/String;

    move-result-object v3

    :try_start_8
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".displayMode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2f} :catch_b8

    :goto_2f
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v5, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v4, v5, :cond_39

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    :cond_39
    sget-object v1, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    const-string v4, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    sget-object v1, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    :cond_49
    :try_start_49
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".syncMode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6e} :catch_dc

    :goto_6e
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v5, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v4, v5, :cond_78

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    :cond_78
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    const-string v4, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    :cond_88
    :try_start_88
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pushMode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_ad} :catch_fe

    :goto_ad
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v5, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v4, v5, :cond_b7

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    :cond_b7
    return-void

    :catch_b8
    move-exception v4

    move-object v2, v4

    const-string v4, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load displayMode for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto/16 :goto_2f

    :catch_dc
    move-exception v4

    move-object v2, v4

    const-string v4, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load syncMode for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto/16 :goto_6e

    :catch_fe
    move-exception v4

    move-object v2, v4

    const-string v4, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load pushMode for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto :goto_ad
.end method

.method public save(Lcom/fsck/k9/Preferences;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const-string v7, ".syncMode"

    const-string v6, ".pushMode"

    const-string v5, ".displayMode"

    const-string v4, "INBOX"

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPrefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v2, v3, :cond_90

    const-string v2, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".displayMode"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_3c
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v2, v3, :cond_ad

    const-string v2, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".syncMode"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_64
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v2, v3, :cond_ca

    const-string v2, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ca

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pushMode"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_8c
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".displayMode"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3c

    :cond_ad
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".syncMode"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_64

    :cond_ca
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pushMode"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_8c
.end method

.method public setDisplayClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-void
.end method

.method public setFlags([Lcom/fsck/k9/mail/Flag;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v4, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Lcom/fsck/k9/mail/Message;->setFlags([Lcom/fsck/k9/mail/Flag;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method public setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v4, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    invoke-virtual {v3, p2, p3}, Lcom/fsck/k9/mail/Message;->setFlags([Lcom/fsck/k9/mail/Flag;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public setLastChecked(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/Folder;->setLastChecked(J)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET last_updated = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setLastPush(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/Folder;->setLastPush(J)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET last_pushed = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setPushClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-void
.end method

.method public setPushState(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mPushState:Ljava/lang/String;

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET push_state = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-super {p0, p1}, Lcom/fsck/k9/mail/Folder;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET status = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setSyncClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-void
.end method

.method public setUnreadMessageCount(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET unread_count = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVisibleLimit(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    iput p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET visible_limit = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateMessage(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v17, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->buildMimeRepresentation()V
    invoke-static/range {p1 .. p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v10, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_2d
    if-ge v10, v7, :cond_62

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fsck/k9/mail/Part;

    :try_start_38
    invoke-static {v15}, Lcom/fsck/k9/mail/internet/MimeUtility;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v15}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "text/html"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4e

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4b
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    :cond_4e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_51} :catch_52

    goto :goto_4b

    :catch_52
    move-exception v17

    move-object/from16 v8, v17

    new-instance v17, Lcom/fsck/k9/mail/MessagingException;

    const-string v18, "Unable to get text for message part"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    :cond_62
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->markupContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->calculateContentPreview(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v17, v0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/mail/store/LocalStore;->access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    const-string v18, "UPDATE messages SET uid = ?, subject = ?, sender_list = ?, date = ?, flags = ?, folder_id = ?, to_list = ?, cc_list = ?, bcc_list = ?, html_content = ?, text_content = ?, preview = ?, reply_to_list = ?, attachment_count = ? WHERE id = ?"

    const/16 v19, 0xf

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSubject()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v21

    if-nez v21, :cond_17d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    :goto_b6
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getFlags()[Lcom/fsck/k9/mail/Flag;

    move-result-object v21

    const/16 v22, 0x2c

    invoke-static/range {v21 .. v22}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x6

    sget-object v21, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x7

    sget-object v21, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x8

    sget-object v21, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_187

    move-object/from16 v21, v9

    :goto_11c
    aput-object v21, v19, v20

    const/16 v20, 0xa

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_18a

    move-object/from16 v21, v14

    :goto_128
    aput-object v21, v19, v20

    const/16 v20, 0xb

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_18d

    move-object/from16 v21, v11

    :goto_134
    aput-object v21, v19, v20

    const/16 v20, 0xc

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0xd

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0xe

    #getter for: Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
    invoke-static/range {p1 .. p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_162
    if-ge v10, v7, :cond_190

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Part;

    #getter for: Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J
    invoke-static/range {p1 .. p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v17

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object v3, v5

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->saveAttachment(JLcom/fsck/k9/mail/Part;Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_162

    :cond_17d
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    goto/16 :goto_b6

    :cond_187
    const/16 v21, 0x0

    goto :goto_11c

    :cond_18a
    const/16 v21, 0x0

    goto :goto_128

    :cond_18d
    const/16 v21, 0x0

    goto :goto_134

    :cond_190
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getId()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->saveHeaders(JLcom/fsck/k9/mail/internet/MimeMessage;)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_19d} :catch_19e

    return-void

    :catch_19e
    move-exception v17

    move-object/from16 v8, v17

    new-instance v17, Lcom/fsck/k9/mail/MessagingException;

    const-string v18, "Error appending message"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method
