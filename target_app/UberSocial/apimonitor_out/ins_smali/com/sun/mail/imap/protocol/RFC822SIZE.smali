.class public Lcom/sun/mail/imap/protocol/RFC822SIZE;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/protocol/Item;
.field static final name:[C
.field public msgno:I
.field public size:I
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0xb
new-array v0, v0, [C
fill-array-data v0, :array_a
sput-object v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C
return-void
:array_a
.array-data 0x2
0x52t 0x0t
0x46t 0x0t
0x43t 0x0t
0x38t 0x0t
0x32t 0x0t
0x32t 0x0t
0x2et 0x0t
0x53t 0x0t
0x49t 0x0t
0x5at 0x0t
0x45t 0x0t
.end array-data
.end method
.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/RFC822SIZE;->msgno:I
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I
return-void
.end method