.class public Lcom/sun/mail/imap/protocol/UID;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/protocol/Item;
.field static final name:[C
.field public seqnum:I
.field public uid:J
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x3
new-array v0, v0, [C
fill-array-data v0, :array_a
sput-object v0, Lcom/sun/mail/imap/protocol/UID;->name:[C
return-void
nop
:array_a
.array-data 0x2
0x55t 0x0t
0x49t 0x0t
0x44t 0x0t
.end array-data
.end method
.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/UID;->seqnum:I
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/sun/mail/imap/protocol/UID;->uid:J
return-void
.end method