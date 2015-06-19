.class public final Lcom/sun/mail/imap/Utility;
.super Ljava/lang/Object;
.source "SourceFile"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
.registers 8
new-instance v4, Ljava/util/Vector;
const/4 v0, 0x1
invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V
const/4 v0, 0x0
move v1, v0
:goto_8
array-length v0, p0
if-lt v1, v0, :cond_13
invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z
move-result v0
if-eqz v0, :cond_63
const/4 v0, 0x0
:goto_12
return-object v0
:cond_13
aget-object v0, p0, v1
check-cast v0, Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z
move-result v2
if-eqz v2, :cond_21
:goto_1d
:cond_1d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_21
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I
move-result v2
if-eqz p1, :cond_2d
invoke-interface {p1, v0}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z
move-result v0
if-eqz v0, :cond_1d
:cond_2d
new-instance v5, Lcom/sun/mail/imap/protocol/MessageSet;
invoke-direct {v5}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V
iput v2, v5, Lcom/sun/mail/imap/protocol/MessageSet;->start:I
add-int/lit8 v0, v1, 0x1
move v1, v0
:goto_37
array-length v0, p0
if-lt v1, v0, :cond_40
:goto_3a
iput v2, v5, Lcom/sun/mail/imap/protocol/MessageSet;->end:I
invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_1d
:cond_40
aget-object v0, p0, v1
check-cast v0, Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z
move-result v3
if-eqz v3, :cond_4e
:goto_4a
:cond_4a
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_37
:cond_4e
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I
move-result v3
if-eqz p1, :cond_5a
invoke-interface {p1, v0}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z
move-result v0
if-eqz v0, :cond_4a
:cond_5a
add-int/lit8 v0, v2, 0x1
if-ne v3, v0, :cond_60
move v2, v3
goto :goto_4a
:cond_60
add-int/lit8 v1, v1, -0x1
goto :goto_3a
:cond_63
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Lcom/sun/mail/imap/protocol/MessageSet;
invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
goto :goto_12
.end method
.method public static toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;
.registers 11
new-instance v6, Ljava/util/Vector;
const/4 v0, 0x1
invoke-direct {v6, v0}, Ljava/util/Vector;-><init>(I)V
const/4 v0, 0x0
move v1, v0
:goto_8
array-length v0, p0
if-lt v1, v0, :cond_13
invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z
move-result v0
if-eqz v0, :cond_56
const/4 v0, 0x0
:goto_12
return-object v0
:cond_13
aget-object v0, p0, v1
check-cast v0, Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z
move-result v2
if-eqz v2, :cond_21
:goto_1d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_21
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J
move-result-wide v2
new-instance v7, Lcom/sun/mail/imap/protocol/UIDSet;
invoke-direct {v7}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V
iput-wide v2, v7, Lcom/sun/mail/imap/protocol/UIDSet;->start:J
add-int/lit8 v0, v1, 0x1
move v1, v0
:goto_2f
array-length v0, p0
if-lt v1, v0, :cond_38
:goto_32
iput-wide v2, v7, Lcom/sun/mail/imap/protocol/UIDSet;->end:J
invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_1d
:cond_38
aget-object v0, p0, v1
check-cast v0, Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z
move-result v4
if-eqz v4, :cond_46
:goto_42
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2f
:cond_46
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J
move-result-wide v4
const-wide/16 v8, 0x1
add-long/2addr v8, v2
cmp-long v0, v4, v8
if-nez v0, :cond_53
move-wide v2, v4
goto :goto_42
:cond_53
add-int/lit8 v1, v1, -0x1
goto :goto_32
:cond_56
invoke-virtual {v6}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Lcom/sun/mail/imap/protocol/UIDSet;
invoke-virtual {v6, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
goto :goto_12
.end method