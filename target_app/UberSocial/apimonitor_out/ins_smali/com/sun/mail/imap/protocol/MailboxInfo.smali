.class public Lcom/sun/mail/imap/protocol/MailboxInfo;
.super Ljava/lang/Object;
.source "SourceFile"
.field public availableFlags:Ljavax/mail/Flags;
.field public first:I
.field public mode:I
.field public permanentFlags:Ljavax/mail/Flags;
.field public recent:I
.field public total:I
.field public uidnext:J
.field public uidvalidity:J
.method public constructor <init>([Lcom/sun/mail/iap/Response;)V
.registers 9
const-wide/16 v3, -0x1
const/4 v2, 0x0
const/4 v0, -0x1
const/4 v6, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v6, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;
iput-object v6, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;
iput v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I
iput v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I
iput v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I
iput-wide v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J
iput-wide v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J
move v1, v2
:goto_17
array-length v0, p1
if-lt v1, v0, :cond_2c
iget-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;
if-nez v0, :cond_2b
iget-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;
if-eqz v0, :cond_da
new-instance v0, Ljavax/mail/Flags;
iget-object v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;
invoke-direct {v0, v1}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V
iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;
:goto_2b
:cond_2b
return-void
:cond_2c
aget-object v0, p1, v1
if-eqz v0, :cond_36
aget-object v0, p1, v1
instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v0, :cond_3a
:goto_36
:cond_36
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_17
:cond_3a
aget-object v0, p1, v1
check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v3, "EXISTS"
invoke-virtual {v0, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_4f
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I
aput-object v6, p1, v1
goto :goto_36
:cond_4f
const-string v3, "RECENT"
invoke-virtual {v0, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_60
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I
aput-object v6, p1, v1
goto :goto_36
:cond_60
const-string v3, "FLAGS"
invoke-virtual {v0, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_72
new-instance v3, Lcom/sun/mail/imap/protocol/FLAGS;
invoke-direct {v3, v0}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
iput-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;
aput-object v6, p1, v1
goto :goto_36
:cond_72
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z
move-result v3
if-eqz v3, :cond_36
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z
move-result v3
if-eqz v3, :cond_36
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B
move-result v3
const/16 v4, 0x5b
if-eq v3, v4, :cond_8d
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V
goto :goto_36
:cond_8d
const/4 v3, 0x1
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;
move-result-object v4
const-string v5, "UNSEEN"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_a5
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I
move-result v4
iput v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I
:goto_a0
if-eqz v3, :cond_d5
aput-object v6, p1, v1
goto :goto_36
:cond_a5
const-string v5, "UIDVALIDITY"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_b4
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J
move-result-wide v4
iput-wide v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J
goto :goto_a0
:cond_b4
const-string v5, "PERMANENTFLAGS"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_c4
new-instance v4, Lcom/sun/mail/imap/protocol/FLAGS;
invoke-direct {v4, v0}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;
goto :goto_a0
:cond_c4
const-string v5, "UIDNEXT"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_d3
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J
move-result-wide v4
iput-wide v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J
goto :goto_a0
:cond_d3
move v3, v2
goto :goto_a0
:cond_d5
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V
goto/16 :goto_36
:cond_da
new-instance v0, Ljavax/mail/Flags;
invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V
iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;
goto/16 :goto_2b
.end method