.class public Lcom/sun/mail/imap/protocol/FLAGS;
.super Ljavax/mail/Flags;
.source "SourceFile"
.implements Lcom/sun/mail/imap/protocol/Item;
.field static final name:[C = null
.field private static final serialVersionUID:J = 0x617d1827c5428feL
.field public msgno:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x5
new-array v0, v0, [C
fill-array-data v0, :array_a
sput-object v0, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C
return-void
nop
:array_a
.array-data 0x2
0x46t 0x0t
0x4ct 0x0t
0x41t 0x0t
0x47t 0x0t
0x53t 0x0t
.end array-data
.end method
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
.registers 9
const/4 v6, 0x2
const/4 v1, 0x0
invoke-direct {p0}, Ljavax/mail/Flags;-><init>()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/FLAGS;->msgno:I
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readSimpleList()[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_18
move v0, v1
:goto_15
array-length v3, v2
if-lt v0, v3, :cond_19
:cond_18
return-void
:cond_19
aget-object v3, v2, v0
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
if-lt v4, v6, :cond_84
invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x5c
if-ne v4, v5, :cond_84
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C
move-result v4
sparse-switch v4, :sswitch_data_88
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V
:cond_38
:goto_38
add-int/lit8 v0, v0, 0x1
goto :goto_15
:sswitch_3b
sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V
goto :goto_38
:sswitch_41
sget-object v3, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V
goto :goto_38
:sswitch_47
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
const/4 v5, 0x3
if-lt v4, v5, :cond_6e
invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x65
if-eq v3, v4, :cond_5a
const/16 v4, 0x45
if-ne v3, v4, :cond_60
:cond_5a
sget-object v3, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V
goto :goto_38
:cond_60
const/16 v4, 0x72
if-eq v3, v4, :cond_68
const/16 v4, 0x52
if-ne v3, v4, :cond_38
:cond_68
sget-object v3, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V
goto :goto_38
:cond_6e
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V
goto :goto_38
:sswitch_72
sget-object v3, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V
goto :goto_38
:sswitch_78
sget-object v3, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V
goto :goto_38
:sswitch_7e
sget-object v3, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V
goto :goto_38
:cond_84
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V
goto :goto_38
:sswitch_data_88
.sparse-switch
0x2a -> :sswitch_7e
0x41 -> :sswitch_72
0x44 -> :sswitch_47
0x46 -> :sswitch_78
0x52 -> :sswitch_41
0x53 -> :sswitch_3b
.end sparse-switch
.end method