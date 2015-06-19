.class public Lcom/fsck/k9/Account;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/Account$Identity;,
        Lcom/fsck/k9/Account$HideButtons;,
        Lcom/fsck/k9/Account$FolderMode;
    }
.end annotation


# static fields
.field public static final DELETE_POLICY_7DAYS:I = 0x1

.field public static final DELETE_POLICY_MARK_AS_READ:I = 0x3

.field public static final DELETE_POLICY_NEVER:I = 0x0

.field public static final DELETE_POLICY_ON_DELETE:I = 0x2

.field public static final EXPUNGE_IMMEDIATELY:Ljava/lang/String; = "EXPUNGE_IMMEDIATELY"

.field public static final EXPUNGE_MANUALLY:Ljava/lang/String; = "EXPUNGE_MANUALLY"

.field public static final EXPUNGE_ON_POLL:Ljava/lang/String; = "EXPUNGE_ON_POLL"

.field private static final serialVersionUID:J = 0x2949e13afb7e2861L


# instance fields
.field identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account$Identity;",
            ">;"
        }
    .end annotation
.end field

.field mAccountNumber:I

.field mAlwaysBcc:Ljava/lang/String;

.field mAutoExpandFolderName:Ljava/lang/String;

.field mAutomaticCheckIntervalMinutes:I

.field mDeletePolicy:I

.field mDescription:Ljava/lang/String;

.field mDisplayCount:I

.field mDraftsFolderName:Ljava/lang/String;

.field private mExpungePolicy:Ljava/lang/String;

.field mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

.field mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;

.field mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

.field mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;

.field mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;

.field mIsSignatureBeforeQuotedText:Z

.field mLastAutomaticCheckTime:J

.field mLocalStoreUri:Ljava/lang/String;

.field private mMaxPushFolders:I

.field mNotifyNewMail:Z

.field mNotifySelfNewMail:Z

.field mNotifySync:Z

.field mOutboxFolderName:Ljava/lang/String;

.field mRing:Z

.field mRingtoneUri:Ljava/lang/String;

.field mSentFolderName:Ljava/lang/String;

.field mStoreUri:Ljava/lang/String;

.field mTransportUri:Ljava/lang/String;

.field mTrashFolderName:Ljava/lang/String;

.field mUuid:Ljava/lang/String;

.field mVibrate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const-string v7, "EXPUNGE_IMMEDIATELY"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "EXPUNGE_IMMEDIATELY"

    iput-object v7, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local://localhost/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mLocalStoreUri:Ljava/lang/String;

    iput v5, p0, Lcom/fsck/k9/Account;->mAutomaticCheckIntervalMinutes:I

    iput v5, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    iput v5, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    iput-boolean v4, p0, Lcom/fsck/k9/Account;->mNotifyNewMail:Z

    iput-boolean v4, p0, Lcom/fsck/k9/Account;->mNotifySync:Z

    iput-boolean v6, p0, Lcom/fsck/k9/Account;->mVibrate:Z

    iput-boolean v4, p0, Lcom/fsck/k9/Account;->mRing:Z

    iput-boolean v4, p0, Lcom/fsck/k9/Account;->mNotifySelfNewMail:Z

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;

    sget-object v1, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;

    const-string v1, "content://settings/system/notification_sound"

    iput-object v1, p0, Lcom/fsck/k9/Account;->mRingtoneUri:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/fsck/k9/Account;->mIsSignatureBeforeQuotedText:Z

    const-string v1, "EXPUNGE_IMMEDIATELY"

    iput-object v7, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    const-string v1, "INBOX"

    iput-object v1, p0, Lcom/fsck/k9/Account;->mAutoExpandFolderName:Ljava/lang/String;

    const/16 v1, 0xa

    iput v1, p0, Lcom/fsck/k9/Account;->mMaxPushFolders:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    new-instance v0, Lcom/fsck/k9/Account$Identity;

    invoke-direct {v0, p0}, Lcom/fsck/k9/Account$Identity;-><init>(Lcom/fsck/k9/Account;)V

    const v1, 0x7f080195

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account$Identity;->setSignature(Ljava/lang/String;)V

    const v1, 0x7f080196

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account$Identity;->setDescription(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Lcom/fsck/k9/Preferences;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EXPUNGE_IMMEDIATELY"

    iput-object v0, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    iput-object p2, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/Account;->refresh(Lcom/fsck/k9/Preferences;)V

    return-void
.end method

.method private deleteIdentities(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .registers 9

    const-string v5, ".email."

    const/4 v2, 0x0

    const/4 v1, 0x0

    :cond_4
    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".email."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_96

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".email."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".signature."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".description."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    :cond_96
    add-int/lit8 v2, v2, 0x1

    if-nez v1, :cond_4

    return-void
.end method

.method private loadIdentities(Landroid/content/SharedPreferences;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account$Identity;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    :cond_8
    const/4 v2, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".name."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".email."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".signature."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".description."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_94

    new-instance v4, Lcom/fsck/k9/Account$Identity;

    invoke-direct {v4, p0}, Lcom/fsck/k9/Account$Identity;-><init>(Lcom/fsck/k9/Account;)V

    invoke-virtual {v4, v5}, Lcom/fsck/k9/Account$Identity;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/fsck/k9/Account$Identity;->setEmail(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/fsck/k9/Account$Identity;->setSignature(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/fsck/k9/Account$Identity;->setDescription(Ljava/lang/String;)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_94
    add-int/lit8 v3, v3, 0x1

    if-nez v2, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_fd

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".email"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".signature"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Lcom/fsck/k9/Account$Identity;

    invoke-direct {v4, p0}, Lcom/fsck/k9/Account$Identity;-><init>(Lcom/fsck/k9/Account;)V

    invoke-virtual {v4, v5}, Lcom/fsck/k9/Account$Identity;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/fsck/k9/Account$Identity;->setEmail(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/fsck/k9/Account$Identity;->setSignature(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/fsck/k9/Account$Identity;->setDescription(Ljava/lang/String;)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_fd
    return-object v6
.end method

.method private saveIdentities(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/Account;->deleteIdentities(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/Account$Identity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fsck/k9/Account$Identity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".email."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fsck/k9/Account$Identity;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".signature."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fsck/k9/Account$Identity;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".description."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fsck/k9/Account$Identity;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_9a
    return-void
.end method


# virtual methods
.method public delete(Lcom/fsck/k9/Preferences;)V
    .registers 11

    const-string v8, "accountUuids"

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "accountUuids"

    const-string v7, ""

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    array-length v3, v5

    :goto_1b
    if-ge v2, v3, :cond_3a

    aget-object v6, v5, v2

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_32

    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_32
    aget-object v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "accountUuids"

    invoke-interface {v1, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".storeUri"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".localStoreUri"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".transportUri"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".description"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".email"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".alwaysBcc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".automaticCheckIntervalMinutes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".lastAutomaticCheckTime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".notifyNewMail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".notifySelfNewMail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".deletePolicy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".draftsFolderName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".sentFolderName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".trashFolderName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".outboxFolderName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".autoExpandFolderName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".accountNumber"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".vibrate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ringtone"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".lastFullSync"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".folderDisplayMode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".folderSyncMode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".folderPushMode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".folderTargetMode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".hideButtonsEnum"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".signatureBeforeQuotedText"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".expungePolicy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".maxPushFolders"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/fsck/k9/Account;->deleteIdentities(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/fsck/k9/Account;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/fsck/k9/Account;

    iget-object v0, p1, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Account$Identity;
    .registers 6

    iget-object v3, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/Account$Identity;

    invoke-virtual {v2}, Lcom/fsck/k9/Account$Identity;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v2

    :goto_23
    return-object v3

    :cond_24
    const/4 v3, 0x0

    goto :goto_23
.end method

.method public getAccountNumber()I
    .registers 2

    iget v0, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    return v0
.end method

.method public getAlwaysBcc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mAlwaysBcc:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoExpandFolderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mAutoExpandFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getAutomaticCheckIntervalMinutes()I
    .registers 2

    iget v0, p0, Lcom/fsck/k9/Account;->mAutomaticCheckIntervalMinutes:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://accounts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDeletePolicy()I
    .registers 2

    iget v0, p0, Lcom/fsck/k9/Account;->mDeletePolicy:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayCount()I
    .registers 3

    iget v0, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    sget v0, Lcom/fsck/k9/K9;->DEFAULT_VISIBLE_LIMIT:I

    iput v0, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    :cond_9
    iget v0, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    return v0
.end method

.method public getDraftsFolderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mDraftsFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/Account$Identity;

    invoke-virtual {p0}, Lcom/fsck/k9/Account$Identity;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorFolderName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/fsck/k9/K9;->ERROR_FOLDER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getExpungePolicy()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    return-object v0
.end method

.method public getFolderPushMode()Lcom/fsck/k9/Account$FolderMode;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;

    return-object v0
.end method

.method public getFolderSyncMode()Lcom/fsck/k9/Account$FolderMode;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    return-object v0
.end method

.method public getFolderTargetMode()Lcom/fsck/k9/Account$FolderMode;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;

    return-object v0
.end method

.method public getHideMessageViewButtons()Lcom/fsck/k9/Account$HideButtons;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;

    return-object v0
.end method

.method public getIdentities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account$Identity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    return-object v0
.end method

.method public getIdentity(I)Lcom/fsck/k9/Account$Identity;
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_12

    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/Account$Identity;

    move-object v0, p0

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getLastAutomaticCheckTime()J
    .registers 3

    iget-wide v0, p0, Lcom/fsck/k9/Account;->mLastAutomaticCheckTime:J

    return-wide v0
.end method

.method public getLocalStoreUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mLocalStoreUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPushFolders()I
    .registers 2

    iget v0, p0, Lcom/fsck/k9/Account;->mMaxPushFolders:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/Account$Identity;

    invoke-virtual {p0}, Lcom/fsck/k9/Account$Identity;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutboxFolderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mOutboxFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getRingtone()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mRingtoneUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSentFolderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mSentFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/Account$Identity;

    invoke-virtual {p0}, Lcom/fsck/k9/Account$Identity;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoreUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mStoreUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mTransportUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTrashFolderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mTrashFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadMessageCount(Landroid/content/Context;Landroid/app/Application;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/store/LocalStore;

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v0

    invoke-static {p1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v7

    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore;->getPersonalNamespaces()[Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-result-object v1

    array-length v5, v1

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v5, :cond_93

    aget-object v3, v1, v4

    invoke-virtual {v3, v7}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->refresh(Lcom/fsck/k9/Preferences;)V

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v2

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6e

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6e

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6e

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6e

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6e

    sget-object v9, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    if-ne v0, v9, :cond_71

    :cond_6e
    :goto_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_71
    sget-object v9, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v0, v9, :cond_79

    sget-object v9, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v2, v9, :cond_6e

    :cond_79
    sget-object v9, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v0, v9, :cond_85

    sget-object v9, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-eq v2, v9, :cond_85

    sget-object v9, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v2, v9, :cond_6e

    :cond_85
    sget-object v9, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v0, v9, :cond_8d

    sget-object v9, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-eq v2, v9, :cond_6e

    :cond_8d
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_6e

    :cond_93
    return v8
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnIdentity(Lcom/fsck/k9/mail/Address;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Account$Identity;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAnIdentity([Lcom/fsck/k9/mail/Address;)Z
    .registers 8

    const/4 v5, 0x0

    if-nez p1, :cond_5

    move v4, v5

    :goto_4
    return v4

    :cond_5
    move-object v1, p1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_17

    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Account$Identity;

    move-result-object v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    goto :goto_4

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    move v4, v5

    goto :goto_4
.end method

.method public isNotifyNewMail()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mNotifyNewMail:Z

    return v0
.end method

.method public isNotifySelfNewMail()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mNotifySelfNewMail:Z

    return v0
.end method

.method public isRing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mRing:Z

    return v0
.end method

.method public isShowOngoing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mNotifySync:Z

    return v0
.end method

.method public isSignatureBeforeQuotedText()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mIsSignatureBeforeQuotedText:Z

    return v0
.end method

.method public isVibrate()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mVibrate:Z

    return v0
.end method

.method public refresh(Lcom/fsck/k9/Preferences;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".storeUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Utility;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mStoreUri:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".localStoreUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mLocalStoreUri:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".transportUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Utility;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mTransportUri:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".description"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".alwaysBcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/Account;->mAlwaysBcc:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mAlwaysBcc:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".automaticCheckIntervalMinutes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/Account;->mAutomaticCheckIntervalMinutes:I

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".displayCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".lastAutomaticCheckTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/fsck/k9/Account;->mLastAutomaticCheckTime:J

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".notifyNewMail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/Account;->mNotifyNewMail:Z

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".notifySelfNewMail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/Account;->mNotifySelfNewMail:Z

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".notifyMailCheck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/Account;->mNotifySync:Z

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".deletePolicy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/Account;->mDeletePolicy:I

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".draftsFolderName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Drafts"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mDraftsFolderName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".sentFolderName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sent"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mSentFolderName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".trashFolderName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Trash"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mTrashFolderName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".outboxFolderName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Outbox"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mOutboxFolderName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".expungePolicy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXPUNGE_IMMEDIATELY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".maxPushFolders"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/Account;->mMaxPushFolders:I

    iget-object v1, p0, Lcom/fsck/k9/Account;->mDraftsFolderName:Ljava/lang/String;

    if-eqz v1, :cond_25a

    iget-object v1, p0, Lcom/fsck/k9/Account;->mDraftsFolderName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25e

    :cond_25a
    const-string v1, "Drafts"

    iput-object v1, p0, Lcom/fsck/k9/Account;->mDraftsFolderName:Ljava/lang/String;

    :cond_25e
    iget-object v1, p0, Lcom/fsck/k9/Account;->mSentFolderName:Ljava/lang/String;

    if-eqz v1, :cond_26c

    iget-object v1, p0, Lcom/fsck/k9/Account;->mSentFolderName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_270

    :cond_26c
    const-string v1, "Sent"

    iput-object v1, p0, Lcom/fsck/k9/Account;->mSentFolderName:Ljava/lang/String;

    :cond_270
    iget-object v1, p0, Lcom/fsck/k9/Account;->mTrashFolderName:Ljava/lang/String;

    if-eqz v1, :cond_27e

    iget-object v1, p0, Lcom/fsck/k9/Account;->mTrashFolderName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_282

    :cond_27e
    const-string v1, "Trash"

    iput-object v1, p0, Lcom/fsck/k9/Account;->mTrashFolderName:Ljava/lang/String;

    :cond_282
    iget-object v1, p0, Lcom/fsck/k9/Account;->mOutboxFolderName:Ljava/lang/String;

    if-eqz v1, :cond_290

    iget-object v1, p0, Lcom/fsck/k9/Account;->mOutboxFolderName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_294

    :cond_290
    const-string v1, "Outbox"

    iput-object v1, p0, Lcom/fsck/k9/Account;->mOutboxFolderName:Ljava/lang/String;

    :cond_294
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".autoExpandFolderName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INBOX"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mAutoExpandFolderName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".accountNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/Account;->mVibrate:Z

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/Account;->mRing:Z

    :try_start_312
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".hideButtonsEnum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    invoke-virtual {v3}, Lcom/fsck/k9/Account$HideButtons;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Account$HideButtons;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$HideButtons;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;
    :try_end_33b
    .catch Ljava/lang/Exception; {:try_start_312 .. :try_end_33b} :catch_42a

    :goto_33b
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://settings/system/notification_sound"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mRingtoneUri:Ljava/lang/String;

    :try_start_35c
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".folderDisplayMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v3}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_385
    .catch Ljava/lang/Exception; {:try_start_35c .. :try_end_385} :catch_432

    :goto_385
    :try_start_385
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".folderSyncMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v3}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_3ae
    .catch Ljava/lang/Exception; {:try_start_385 .. :try_end_3ae} :catch_43a

    :goto_3ae
    :try_start_3ae
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".folderPushMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v3}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_3d7
    .catch Ljava/lang/Exception; {:try_start_3ae .. :try_end_3d7} :catch_442

    :goto_3d7
    :try_start_3d7
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".folderTargetMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v3}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_400
    .catch Ljava/lang/Exception; {:try_start_3d7 .. :try_end_400} :catch_449

    :goto_400
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".signatureBeforeQuotedText"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/Account;->mIsSignatureBeforeQuotedText:Z

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/Account;->loadIdentities(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    return-void

    :catch_42a
    move-exception v1

    move-object v0, v1

    sget-object v1, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;

    goto/16 :goto_33b

    :catch_432
    move-exception v1

    move-object v0, v1

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    goto/16 :goto_385

    :catch_43a
    move-exception v1

    move-object v0, v1

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    goto/16 :goto_3ae

    :catch_442
    move-exception v1

    move-object v0, v1

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;

    goto :goto_3d7

    :catch_449
    move-exception v1

    move-object v0, v1

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;

    goto :goto_400
.end method

.method public save(Lcom/fsck/k9/Preferences;)V
    .registers 15

    const-string v12, "accountUuids"

    const-string v11, ""

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "accountUuids"

    const-string v10, ""

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7c

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v3

    array-length v9, v3

    new-array v1, v9, [I

    const/4 v6, 0x0

    :goto_28
    array-length v9, v3

    if-ge v6, v9, :cond_36

    aget-object v9, v3, v6

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v9

    aput v9, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_36
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    move-object v4, v1

    array-length v8, v4

    const/4 v7, 0x0

    :goto_3c
    if-ge v7, v8, :cond_46

    aget v0, v4, v7

    iget v9, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    add-int/lit8 v9, v9, 0x1

    if-le v0, v9, :cond_395

    :cond_46
    iget v9, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "accountUuids"

    const-string v10, ""

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_39b

    const-string v10, ","

    :goto_69
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "accountUuids"

    invoke-interface {v5, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".storeUri"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mStoreUri:Ljava/lang/String;

    invoke-static {v10}, Lcom/fsck/k9/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".localStoreUri"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mLocalStoreUri:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".transportUri"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mTransportUri:Ljava/lang/String;

    invoke-static {v10}, Lcom/fsck/k9/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".description"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mDescription:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".alwaysBcc"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mAlwaysBcc:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".automaticCheckIntervalMinutes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/fsck/k9/Account;->mAutomaticCheckIntervalMinutes:I

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".displayCount"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".lastAutomaticCheckTime"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-wide v10, p0, Lcom/fsck/k9/Account;->mLastAutomaticCheckTime:J

    invoke-interface {v5, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".notifyNewMail"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->mNotifyNewMail:Z

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".notifySelfNewMail"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->mNotifySelfNewMail:Z

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".notifyMailCheck"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->mNotifySync:Z

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".deletePolicy"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/fsck/k9/Account;->mDeletePolicy:I

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".draftsFolderName"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mDraftsFolderName:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".sentFolderName"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mSentFolderName:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".trashFolderName"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mTrashFolderName:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".outboxFolderName"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mOutboxFolderName:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".autoExpandFolderName"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mAutoExpandFolderName:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".accountNumber"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".vibrate"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->mVibrate:Z

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".ring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->mRing:Z

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".hideButtonsEnum"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$HideButtons;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".ringtone"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mRingtoneUri:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".folderDisplayMode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".folderSyncMode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".folderPushMode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".folderTargetMode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".signatureBeforeQuotedText"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->mIsSignatureBeforeQuotedText:Z

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".expungePolicy"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".maxPushFolders"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/fsck/k9/Account;->mMaxPushFolders:I

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-direct {p0, v9, v5}, Lcom/fsck/k9/Account;->saveIdentities(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_395
    iput v0, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3c

    :cond_39b
    const-string v10, ""

    move-object v10, v11

    goto/16 :goto_69
.end method

.method public setAlwaysBcc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mAlwaysBcc:Ljava/lang/String;

    return-void
.end method

.method public setAutoExpandFolderName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mAutoExpandFolderName:Ljava/lang/String;

    return-void
.end method

.method public setAutomaticCheckIntervalMinutes(I)V
    .registers 2

    iput p1, p0, Lcom/fsck/k9/Account;->mAutomaticCheckIntervalMinutes:I

    return-void
.end method

.method public setDeletePolicy(I)V
    .registers 2

    iput p1, p0, Lcom/fsck/k9/Account;->mDeletePolicy:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDisplayCount(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    iput p1, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    :goto_5
    return-void

    :cond_6
    sget v0, Lcom/fsck/k9/K9;->DEFAULT_VISIBLE_LIMIT:I

    iput v0, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    goto :goto_5
.end method

.method public setDraftsFolderName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mDraftsFolderName:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/Account$Identity;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/Account$Identity;->setEmail(Ljava/lang/String;)V

    return-void
.end method

.method public setExpungePolicy(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    return-void
.end method

.method public setFolderDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    return-void
.end method

.method public setFolderPushMode(Lcom/fsck/k9/Account$FolderMode;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;

    return-void
.end method

.method public setFolderSyncMode(Lcom/fsck/k9/Account$FolderMode;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    return-void
.end method

.method public setFolderTargetMode(Lcom/fsck/k9/Account$FolderMode;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;

    return-void
.end method

.method public setHideMessageViewButtons(Lcom/fsck/k9/Account$HideButtons;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;

    return-void
.end method

.method public setIdentities(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account$Identity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    return-void
.end method

.method public setLastAutomaticCheckTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/fsck/k9/Account;->mLastAutomaticCheckTime:J

    return-void
.end method

.method public setLocalStoreUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mLocalStoreUri:Ljava/lang/String;

    return-void
.end method

.method public setMaxPushFolders(I)V
    .registers 2

    iput p1, p0, Lcom/fsck/k9/Account;->mMaxPushFolders:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/Account$Identity;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/Account$Identity;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setNotifyNewMail(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mNotifyNewMail:Z

    return-void
.end method

.method public setNotifySelfNewMail(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mNotifySelfNewMail:Z

    return-void
.end method

.method public setOutboxFolderName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mOutboxFolderName:Ljava/lang/String;

    return-void
.end method

.method public setRing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mRing:Z

    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mRingtoneUri:Ljava/lang/String;

    return-void
.end method

.method public setSentFolderName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mSentFolderName:Ljava/lang/String;

    return-void
.end method

.method public setShowOngoing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mNotifySync:Z

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/Account$Identity;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/Account$Identity;->setSignature(Ljava/lang/String;)V

    return-void
.end method

.method public setSignatureBeforeQuotedText(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mIsSignatureBeforeQuotedText:Z

    return-void
.end method

.method public setStoreUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mStoreUri:Ljava/lang/String;

    return-void
.end method

.method public setTransportUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mTransportUri:Ljava/lang/String;

    return-void
.end method

.method public setTrashFolderName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account;->mTrashFolderName:Ljava/lang/String;

    return-void
.end method

.method public setVibrate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mVibrate:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account;->mDescription:Ljava/lang/String;

    return-object v0
.end method
