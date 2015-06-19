.class public Lcom/fsck/k9/mail/store/LocalStore;
.super Lcom/fsck/k9/mail/Store;
.source "LocalStore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;,
        Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;,
        Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;,
        Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;,
        Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;,
        Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    }
.end annotation


# static fields
.field private static final DB_VERSION:I = 0x21

.field private static GET_MESSAGES_COLS:Ljava/lang/String;

.field private static HEADERS_TO_SAVE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mAttachmentsDir:Ljava/io/File;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mPath:Ljava/lang/String;

.field private uUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DESTROYED:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/store/LocalStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "X-K9mail-Identity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "In-Reply-To"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "References"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "X-User-Agent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, folder_id, preview "

    sput-object v0, Lcom/fsck/k9/mail/store/LocalStore;->GET_MESSAGES_COLS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Application;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/fsck/k9/mail/Store;-><init>()V

    iput-object v8, p0, Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore;->mApplication:Landroid/app/Application;

    const/4 v4, 0x0

    :try_start_9
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_22

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "local"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Invalid scheme"

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_22
    move-exception v5

    move-object v1, v5

    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Invalid uri for LocalStore"

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2c
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v3, v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5c

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5c
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_att"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_85

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_85
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    const/16 v6, 0x21

    if-eq v5, v6, :cond_9c

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v5, p2}, Lcom/fsck/k9/mail/store/LocalStore;->doDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;Landroid/app/Application;)V

    :cond_9c
    return-void
.end method

.method static synthetic access$1000()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fsck/k9/mail/store/LocalStore;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fsck/k9/mail/store/LocalStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()[Lcom/fsck/k9/mail/Flag;
    .registers 1

    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/mail/store/LocalStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/app/Application;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->GET_MESSAGES_COLS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/mail/store/LocalStore;Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/mail/store/LocalStore;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method private doDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;Landroid/app/Application;)V
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v5, 0x21

    const-string v2, "CREATE INDEX IF NOT EXISTS msg_folder_id_deleted_date ON messages (folder_id,deleted,internal_date)"

    const-string v6, "k9"

    const-string v2, "k9"

    const-string v2, "Upgrading database from version %d to version %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/fsck/k9/provider/AttachmentProvider;->clear(Landroid/content/Context;)V

    :try_start_29
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_a6

    const-string v2, "DROP TABLE IF EXISTS folders"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE folders (id INTEGER PRIMARY KEY, name TEXT, last_updated INTEGER, unread_count INTEGER, visible_limit INTEGER, status TEXT, push_state TEXT, last_pushed INTEGER)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE INDEX IF NOT EXISTS folder_name ON folders (name)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP TABLE IF EXISTS messages"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE messages (id INTEGER PRIMARY KEY, deleted INTEGER default 0, folder_id INTEGER, uid TEXT, subject TEXT, date INTEGER, flags TEXT, sender_list TEXT, to_list TEXT, cc_list TEXT, bcc_list TEXT, reply_to_list TEXT, html_content TEXT, text_content TEXT, attachment_count INTEGER, internal_date INTEGER, message_id TEXT, preview TEXT)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP TABLE IF EXISTS headers"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE headers (id INTEGER PRIMARY KEY, message_id INTEGER, name TEXT, value TEXT)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE INDEX IF NOT EXISTS header_folder ON headers (message_id)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE INDEX IF NOT EXISTS msg_uid ON messages (uid, folder_id)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP INDEX IF EXISTS msg_folder_id"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP INDEX IF EXISTS msg_folder_id_date"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE INDEX IF NOT EXISTS msg_folder_id_deleted_date ON messages (folder_id,deleted,internal_date)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE attachments (id INTEGER PRIMARY KEY, message_id INTEGER,store_data TEXT, content_uri TEXT, size INTEGER, name TEXT,mime_type TEXT)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP TABLE IF EXISTS pending_commands"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE pending_commands (id INTEGER PRIMARY KEY, command TEXT, arguments TEXT)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP TRIGGER IF EXISTS delete_folder"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TRIGGER delete_folder BEFORE DELETE ON folders BEGIN DELETE FROM messages WHERE old.id = folder_id; END;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DROP TRIGGER IF EXISTS delete_message"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TRIGGER delete_message BEFORE DELETE ON messages BEGIN DELETE FROM attachments WHERE old.id = message_id; DELETE FROM headers where old.id = message_id; END;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_95
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_95} :catch_ed

    :cond_95
    :goto_95
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    if-eq v2, v5, :cond_110

    new-instance v2, Ljava/lang/Error;

    const-string v3, "Database upgrade failed!"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a6
    :try_start_a6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_a9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a6 .. :try_end_a9} :catch_ed

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_b3

    :try_start_ae
    const-string v2, "ALTER TABLE messages ADD deleted INTEGER default 0"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ae .. :try_end_b3} :catch_101

    :cond_b3
    :try_start_b3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_c5

    const-string v2, "DROP INDEX IF EXISTS msg_folder_id_date"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE INDEX IF NOT EXISTS msg_folder_id_deleted_date ON messages (folder_id,deleted,internal_date)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_c5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_d2

    const-string v2, "UPDATE messages SET deleted = 1 WHERE flags LIKE \'%DELETED%\'"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_d2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_d5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b3 .. :try_end_d5} :catch_ed

    move-result v2

    if-ge v2, v5, :cond_95

    :try_start_d8
    const-string v2, "ALTER TABLE messages ADD preview TEXT"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_dd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d8 .. :try_end_dd} :catch_de

    goto :goto_95

    :catch_de
    move-exception v2

    move-object v0, v2

    :try_start_e0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "duplicate column name: preview"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_95

    throw v0
    :try_end_ed
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e0 .. :try_end_ed} :catch_ed

    :catch_ed
    move-exception v2

    move-object v0, v2

    const-string v2, "k9"

    const-string v2, "Exception while upgrading database. Resetting the DB to v0"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    new-instance v2, Ljava/lang/Error;

    const-string v3, "Database upgrade failed! Resetting your DB version to 0 to force a full schema recreation."

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_101
    move-exception v2

    move-object v0, v2

    :try_start_103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "duplicate column name: deleted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b3

    throw v0
    :try_end_110
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_103 .. :try_end_110} :catch_ed

    :cond_110
    const/4 v2, 0x1

    :try_start_111
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/LocalStore;->pruneCachedAttachments(Z)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_115

    :goto_114
    return-void

    :catch_115
    move-exception v1

    const-string v2, "k9"

    const-string v2, "Exception while force pruning attachments during DB update"

    invoke-static {v6, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_114
.end method

.method private getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_6
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    #calls: Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V
    invoke-static {v2, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$200(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2a

    const/4 v5, -0x1

    invoke-interface {p1, v2, v1, v5}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2d
    if-eqz p1, :cond_32

    invoke-interface {p1, v1}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messagesFinished(I)V
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_41

    :cond_32
    if-eqz v0, :cond_37

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_37
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/Message;

    return-object p0

    :catchall_41
    move-exception v5

    if-eqz v0, :cond_47

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v5
.end method


# virtual methods
.method public addPendingCommand(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    .registers 8

    const-string v3, "command"

    const/4 v1, 0x0

    :goto_3
    :try_start_3
    iget-object v3, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_19

    iget-object v3, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    iget-object v4, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_19
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "command"

    iget-object v4, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "arguments"

    iget-object v4, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/16 v5, 0x2c

    invoke-static {v4, v5}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pending_commands"

    const-string v5, "command"

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception v3

    move-object v2, v3

    new-instance v3, Ljava/lang/Error;

    const-string v4, "Aparently UTF-8 has been lost to the annals of history."

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public checkSettings()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    return-void
.end method

.method public clear()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const-string v3, "k9"

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before prune size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore;->pruneCachedAttachments(Z)V

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After prune / before compaction size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before clear folder count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getFolderCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before clear message count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getMessageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After prune / before clear size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM messages WHERE deleted = 0 and uid not like \'Local%\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->compact()V

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After clear message count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getMessageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After clear size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public compact()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const-string v3, "k9"

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before prune size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->pruneCachedAttachments()V

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After prune / before compaction size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "VACUUM"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After compaction size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public delete()V
    .registers 8

    :try_start_0
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_3a

    :goto_5
    :try_start_5
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v4, :cond_1e

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1e
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_38

    :cond_2b
    :goto_2b
    :try_start_2b
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v5

    goto :goto_35

    :catch_38
    move-exception v5

    goto :goto_2b

    :catch_3a
    move-exception v5

    goto :goto_5
.end method

.method public bridge synthetic getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-result-object v0

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFolderCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(*) FROM folders"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    move-result v1

    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_17
    return v1

    :catchall_18
    move-exception v2

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1e
    throw v2
.end method

.method public getMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(*) FROM messages"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    move-result v1

    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_17
    return v1

    :catchall_18
    move-exception v2

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1e
    throw v2
.end method

.method public getPendingCommands()Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pending_commands"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "command"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "arguments"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_26
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    invoke-direct {v9}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->mId:J
    invoke-static {v9, v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->access$102(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;J)J

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v12, 0x0

    :goto_4e
    iget-object v0, v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    array-length v0, v0

    if-ge v12, v0, :cond_62

    iget-object v0, v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    iget-object v1, v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-static {v1}, Lcom/fsck/k9/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4e

    :cond_62
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_66

    goto :goto_26

    :catchall_66
    move-exception v0

    if-eqz v11, :cond_6c

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6c
    throw v0

    :cond_6d
    if-eqz v11, :cond_72

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_72
    return-object v10
.end method

.method public bridge synthetic getPersonalNamespaces()[Lcom/fsck/k9/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getPersonalNamespaces()[Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-result-object v0

    return-object v0
.end method

.method public getPersonalNamespaces()[Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v13, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :try_start_7
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT id, name, unread_count, visible_limit, last_updated, status, push_state, last_pushed FROM folders"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :goto_10
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_56

    new-instance v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x5

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    #calls: Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(ILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$000(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;ILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4f

    goto :goto_10

    :catchall_4f
    move-exception v1

    if-eqz v11, :cond_55

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_55
    throw v1

    :cond_56
    if-eqz v11, :cond_5b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5b
    new-array v1, v13, [Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    return-object p0
.end method

.method public getSize()J
    .registers 11

    const-wide/16 v1, 0x0

    iget-object v8, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    move-object v0, v5

    array-length v7, v0

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v7, :cond_1d

    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v1, v8

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_1d
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v8, v1

    return-wide v8
.end method

.method public isCopyCapable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isMoveCapable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public pruneCachedAttachments()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore;->pruneCachedAttachments(Z)V

    return-void
.end method

.method public pruneCachedAttachments(Z)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    if-eqz p1, :cond_15

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "content_uri"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_15
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    move-object v8, v12

    array-length v14, v8

    const/4 v13, 0x0

    :goto_1e
    if-ge v13, v14, :cond_b6

    aget-object v11, v8, v13

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7e

    if-nez p1, :cond_86

    const/4 v9, 0x0

    :try_start_2b
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "store_data"

    aput-object v4, v2, v3

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_81

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_81

    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attachment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no store data, not deleting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_2b .. :try_end_79} :catchall_af

    if-eqz v9, :cond_7e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7e
    :goto_7e
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    :cond_81
    if-eqz v9, :cond_86

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_86
    if-nez p1, :cond_a5

    :try_start_88
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "content_uri"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_a5} :catch_b7

    :cond_a5
    :goto_a5
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {v11}, Ljava/io/File;->deleteOnExit()V

    goto :goto_7e

    :catchall_af
    move-exception v0

    if-eqz v9, :cond_b5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b5
    throw v0

    :cond_b6
    return-void

    :catch_b7
    move-exception v0

    goto :goto_a5
.end method

.method public removePendingCommand(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    .registers 9

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pending_commands"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    #getter for: Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->mId:J
    invoke-static {p1}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->access$100(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public removePendingCommands()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pending_commands"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public resetVisibleLimits()V
    .registers 2

    sget v0, Lcom/fsck/k9/K9;->DEFAULT_VISIBLE_LIMIT:I

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore;->resetVisibleLimits(I)V

    return-void
.end method

.method public resetVisibleLimits(I)V
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "visible_limit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "folders"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public searchForMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const-string v2, "%"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fsck/k9/mail/store/LocalStore;->GET_MESSAGES_COLS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FROM messages WHERE deleted = 0 AND (html_content LIKE ? OR subject LIKE ? OR sender_list LIKE ?) ORDER BY date DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method
