.class public Lcom/sun/mail/imap/protocol/UIDSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    iput-wide p3, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    return-void
.end method

.method public static createUIDSets([J)[Lcom/sun/mail/imap/protocol/UIDSet;
    .registers 10

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-lt v0, v2, :cond_13

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :cond_13
    new-instance v2, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    aget-wide v3, p0, v0

    iput-wide v3, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    add-int/lit8 v0, v0, 0x1

    :goto_1e
    array-length v3, p0

    if-lt v0, v3, :cond_2f

    :cond_21
    add-int/lit8 v3, v0, -0x1

    aget-wide v3, p0, v3

    iput-wide v3, v2, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2f
    aget-wide v3, p0, v0

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, p0, v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method public static size([Lcom/sun/mail/imap/protocol/UIDSet;)J
    .registers 6

    const-wide/16 v1, 0x0

    if-nez p0, :cond_5

    :cond_4
    return-wide v1

    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_4

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;
    .registers 9

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    array-length v2, p0

    :goto_e
    aget-object v3, p0, v0

    iget-wide v3, v3, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    aget-object v5, p0, v0

    iget-wide v5, v5, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_30

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_27
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_34

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_30
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_27

    :cond_34
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e
.end method


# virtual methods
.method public size()J
    .registers 5

    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    iget-wide v2, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method
