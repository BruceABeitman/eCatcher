.class public Lcom/sun/mail/imap/protocol/RFC822DATA;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/protocol/Item;
.field static final name:[C
.field public data:Lcom/sun/mail/iap/ByteArray;
.field public msgno:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x6
new-array v0, v0, [C
fill-array-data v0, :array_a
sput-object v0, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C
return-void
nop
:array_a
.array-data 0x2
0x52t 0x0t
0x46t 0x0t
0x43t 0x0t
0x38t 0x0t
0x32t 0x0t
0x32t 0x0t
.end array-data
.end method
.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/RFC822DATA;->msgno:I
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByteArray()Lcom/sun/mail/iap/ByteArray;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/RFC822DATA;->data:Lcom/sun/mail/iap/ByteArray;
return-void
.end method
.method public getByteArray()Lcom/sun/mail/iap/ByteArray;
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/protocol/RFC822DATA;->data:Lcom/sun/mail/iap/ByteArray;
return-object v0
.end method
.method public getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/protocol/RFC822DATA;->data:Lcom/sun/mail/iap/ByteArray;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/sun/mail/imap/protocol/RFC822DATA;->data:Lcom/sun/mail/iap/ByteArray;
invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method