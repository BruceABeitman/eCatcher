.class public Lcom/sun/mail/imap/protocol/FetchResponse;
.super Lcom/sun/mail/imap/protocol/IMAPResponse;
.source "SourceFile"
.field private static final HEADER:[C
.field private static final TEXT:[C
.field private items:[Lcom/sun/mail/imap/protocol/Item;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x7
new-array v0, v0, [C
fill-array-data v0, :array_12
sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C
const/4 v0, 0x5
new-array v0, v0, [C
fill-array-data v0, :array_1e
sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C
return-void
nop
:array_12
.array-data 0x2
0x2et 0x0t
0x48t 0x0t
0x45t 0x0t
0x41t 0x0t
0x44t 0x0t
0x45t 0x0t
0x52t 0x0t
.end array-data
nop
:array_1e
.array-data 0x2
0x2et 0x0t
0x54t 0x0t
0x45t 0x0t
0x58t 0x0t
0x54t 0x0t
.end array-data
.end method
.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
.registers 2
invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V
invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V
return-void
.end method
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
.registers 2
invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V
return-void
.end method
.method public static getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
.registers 9
const/4 v4, 0x0
const/4 v2, 0x0
if-nez p0, :cond_6
move-object v0, v4
:goto_5
return-object v0
:cond_6
move v1, v2
:goto_7
array-length v0, p0
if-lt v1, v0, :cond_c
move-object v0, v4
goto :goto_5
:cond_c
aget-object v0, p0, v1
if-eqz v0, :cond_20
aget-object v0, p0, v1
instance-of v0, v0, Lcom/sun/mail/imap/protocol/FetchResponse;
if-eqz v0, :cond_20
aget-object v0, p0, v1
check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I
move-result v0
if-eq v0, p1, :cond_24
:cond_20
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_24
aget-object v0, p0, v1
check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;
move v3, v2
:goto_29
iget-object v5, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;
array-length v5, v5
if-ge v3, v5, :cond_20
iget-object v5, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;
aget-object v5, v5, v3
invoke-virtual {p2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_3d
iget-object v0, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;
aget-object v0, v0, v3
goto :goto_5
:cond_3d
add-int/lit8 v3, v3, 0x1
goto :goto_29
.end method
.method private match([C)Z
.registers 8
const/4 v0, 0x0
array-length v4, p1
iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
move v3, v0
:goto_5
if-lt v3, v4, :cond_9
const/4 v0, 0x1
:cond_8
return v0
:cond_9
iget-object v5, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B
add-int/lit8 v2, v1, 0x1
aget-byte v1, v5, v1
int-to-char v1, v1
invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C
move-result v5
add-int/lit8 v1, v3, 0x1
aget-char v3, p1, v3
if-ne v5, v3, :cond_8
move v3, v1
move v1, v2
goto :goto_5
.end method
.method private parse()V
.registers 5
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V
iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B
iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
aget-byte v0, v0, v1
const/16 v1, 0x28
if-eq v0, v1, :cond_24
new-instance v0, Lcom/sun/mail/iap/ParsingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "error in FETCH parsing, missing \'(\' at index "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
const/4 v0, 0x0
:cond_2a
iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I
if-lt v2, v3, :cond_4d
new-instance v0, Lcom/sun/mail/iap/ParsingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "error in FETCH parsing, ran off end of buffer, size "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4d
iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B
iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
aget-byte v2, v2, v3
sparse-switch v2, :sswitch_data_164
:goto_56
:cond_56
if-eqz v0, :cond_5b
invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_5b
iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B
iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
aget-byte v2, v2, v3
const/16 v3, 0x29
if-ne v2, v3, :cond_2a
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Lcom/sun/mail/imap/protocol/Item;
iput-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;
iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;
invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-void
:sswitch_79
sget-object v2, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C
invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z
move-result v2
if-eqz v2, :cond_56
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v2, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C
array-length v2, v2
add-int/2addr v0, v2
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
new-instance v0, Lcom/sun/mail/imap/protocol/ENVELOPE;
invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
goto :goto_56
:sswitch_8f
sget-object v2, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C
invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z
move-result v2
if-eqz v2, :cond_56
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v2, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C
array-length v2, v2
add-int/2addr v0, v2
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
new-instance v0, Lcom/sun/mail/imap/protocol/FLAGS;
invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
goto :goto_56
:sswitch_a5
sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C
invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z
move-result v2
if-eqz v2, :cond_56
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C
array-length v2, v2
add-int/2addr v0, v2
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
new-instance v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;
invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/INTERNALDATE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
goto :goto_56
:sswitch_bb
sget-object v2, Lcom/sun/mail/imap/protocol/BODY;->name:[C
invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z
move-result v2
if-eqz v2, :cond_56
iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B
iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
add-int/lit8 v2, v2, 0x4
aget-byte v0, v0, v2
const/16 v2, 0x5b
if-ne v0, v2, :cond_de
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v2, Lcom/sun/mail/imap/protocol/BODY;->name:[C
array-length v2, v2
add-int/2addr v0, v2
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
new-instance v0, Lcom/sun/mail/imap/protocol/BODY;
invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/BODY;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
goto/16 :goto_56
:cond_de
sget-object v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C
invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z
move-result v0
if-eqz v0, :cond_f5
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C
array-length v2, v2
add-int/2addr v0, v2
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
:goto_ee
new-instance v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
goto/16 :goto_56
:cond_f5
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v2, Lcom/sun/mail/imap/protocol/BODY;->name:[C
array-length v2, v2
add-int/2addr v0, v2
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
goto :goto_ee
:sswitch_fe
sget-object v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C
invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z
move-result v2
if-eqz v2, :cond_115
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C
array-length v2, v2
add-int/2addr v0, v2
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
new-instance v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;
invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/RFC822SIZE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
goto/16 :goto_56
:cond_115
sget-object v2, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C
invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z
move-result v2
if-eqz v2, :cond_56
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v2, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C
array-length v2, v2
add-int/2addr v0, v2
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C
invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z
move-result v0
if-eqz v0, :cond_13c
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v2, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C
array-length v2, v2
add-int/2addr v0, v2
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
:goto_135
:cond_135
new-instance v0, Lcom/sun/mail/imap/protocol/RFC822DATA;
invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/RFC822DATA;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
goto/16 :goto_56
:cond_13c
sget-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C
invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z
move-result v0
if-eqz v0, :cond_135
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v2, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C
array-length v2, v2
add-int/2addr v0, v2
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
goto :goto_135
:sswitch_14d
sget-object v2, Lcom/sun/mail/imap/protocol/UID;->name:[C
invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z
move-result v2
if-eqz v2, :cond_56
iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
sget-object v2, Lcom/sun/mail/imap/protocol/UID;->name:[C
array-length v2, v2
add-int/2addr v0, v2
iput v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I
new-instance v0, Lcom/sun/mail/imap/protocol/UID;
invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/UID;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
goto/16 :goto_56
:sswitch_data_164
.sparse-switch
0x42 -> :sswitch_bb
0x45 -> :sswitch_79
0x46 -> :sswitch_8f
0x49 -> :sswitch_a5
0x52 -> :sswitch_fe
0x55 -> :sswitch_14d
.end sparse-switch
.end method
.method public getItem(I)Lcom/sun/mail/imap/protocol/Item;
.registers 3
iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;
aget-object v0, v0, p1
return-object v0
.end method
.method public getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
.registers 4
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;
array-length v1, v1
if-lt v0, v1, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;
aget-object v1, v1, v0
invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;
aget-object v0, v1, v0
goto :goto_7
:cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public getItemCount()I
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;
array-length v0, v0
return v0
.end method