.class public Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
.super Ljava/lang/Object;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingCommand"
.end annotation


# instance fields
.field public arguments:[Ljava/lang/String;

.field public command:Ljava/lang/String;

.field private mId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)J
    .registers 3

    iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->mId:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;J)J
    .registers 3

    iput-wide p1, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->mId:J

    return-wide p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_22

    aget-object v0, v1, v2

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_22
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
