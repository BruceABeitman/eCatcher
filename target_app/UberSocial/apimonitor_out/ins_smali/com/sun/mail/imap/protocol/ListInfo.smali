.class public Lcom/sun/mail/imap/protocol/ListInfo;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final CHANGED:I = 0x1
.field public static final INDETERMINATE:I = 0x3
.field public static final UNCHANGED:I = 0x2
.field public attrs:[Ljava/lang/String;
.field public canOpen:Z
.field public changeState:I
.field public hasInferiors:Z
.field public name:Ljava/lang/String;
.field public separator:C
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
.registers 10
const/4 v7, 0x2
const/4 v1, 0x0
const/4 v6, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;
const/16 v0, 0x2f
iput-char v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C
iput-boolean v6, p0, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z
iput-boolean v6, p0, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
const/4 v0, 0x3
iput v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readSimpleList()[Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/util/Vector;
invoke-direct {v3}, Ljava/util/Vector;-><init>()V
if-eqz v2, :cond_23
move v0, v1
:goto_20
array-length v4, v2
if-lt v0, v4, :cond_62
:cond_23
invoke-virtual {v3}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;
iget-object v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B
move-result v0
const/16 v1, 0x22
if-ne v0, v1, :cond_9d
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B
move-result v0
int-to-char v0, v0
iput-char v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C
const/16 v1, 0x5c
if-ne v0, v1, :cond_4d
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B
move-result v0
int-to-char v0, v0
iput-char v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C
:cond_4d
invoke-virtual {p1, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skip(I)V
:goto_50
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;
iget-object v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;
invoke-static {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;
return-void
:cond_62
aget-object v4, v2, v0
const-string v5, "\\Marked"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_76
iput v6, p0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
:cond_6e
:goto_6e
aget-object v4, v2, v0
invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_20
:cond_76
aget-object v4, v2, v0
const-string v5, "\\Unmarked"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_83
iput v7, p0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
goto :goto_6e
:cond_83
aget-object v4, v2, v0
const-string v5, "\\Noselect"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_90
iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
goto :goto_6e
:cond_90
aget-object v4, v2, v0
const-string v5, "\\Noinferiors"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_6e
iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z
goto :goto_6e
:cond_9d
invoke-virtual {p1, v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skip(I)V
goto :goto_50
.end method