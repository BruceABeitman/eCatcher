.class  Lcom/sun/mail/imap/protocol/SearchSequence;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static cal:Ljava/util/Calendar;
.field private static monthTable:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0xc
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "Jan"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "Feb"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "Mar"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "Apr"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "May"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "Jun"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "Jul"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "Aug"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "Sep"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "Oct"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "Nov"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "Dec"
aput-object v2, v0, v1
sput-object v0, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;
new-instance v0, Ljava/util/GregorianCalendar;
invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V
sput-object v0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
.registers 6
invoke-virtual {p0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;
move-result-object v1
const/4 v0, 0x0
aget-object v0, v1, v0
invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v2
const/4 v0, 0x1
:goto_c
array-length v3, v1
if-lt v0, v3, :cond_10
return-object v2
:cond_10
aget-object v3, v1, v0
invoke-static {v3, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V
add-int/lit8 v0, v0, 0x1
goto :goto_c
.end method
.method private static body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
.registers 4
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
const-string v1, "BODY"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
invoke-virtual {p0}, Ljavax/mail/search/BodyTerm;->getPattern()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method private static flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;
.registers 9
const/4 v1, 0x0
invoke-virtual {p0}, Ljavax/mail/search/FlagTerm;->getTestSet()Z
move-result v3
new-instance v4, Lcom/sun/mail/iap/Argument;
invoke-direct {v4}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {p0}, Ljavax/mail/search/FlagTerm;->getFlags()Ljavax/mail/Flags;
move-result-object v0
invoke-virtual {v0}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;
move-result-object v5
invoke-virtual {v0}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;
move-result-object v6
array-length v0, v5
if-nez v0, :cond_24
array-length v0, v6
if-nez v0, :cond_24
new-instance v0, Ljavax/mail/search/SearchException;
const-string v1, "Invalid FlagTerm"
invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
move v0, v1
:goto_25
array-length v2, v5
if-lt v0, v2, :cond_2c
:goto_28
array-length v0, v6
if-lt v1, v0, :cond_94
return-object v4
:cond_2c
aget-object v2, v5, v0
sget-object v7, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;
if-ne v2, v7, :cond_3f
if-eqz v3, :cond_3c
const-string v2, "DELETED"
:goto_36
invoke-virtual {v4, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
:cond_39
:goto_39
add-int/lit8 v0, v0, 0x1
goto :goto_25
:cond_3c
const-string v2, "UNDELETED"
goto :goto_36
:cond_3f
aget-object v2, v5, v0
sget-object v7, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;
if-ne v2, v7, :cond_50
if-eqz v3, :cond_4d
const-string v2, "ANSWERED"
:goto_49
invoke-virtual {v4, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_39
:cond_4d
const-string v2, "UNANSWERED"
goto :goto_49
:cond_50
aget-object v2, v5, v0
sget-object v7, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;
if-ne v2, v7, :cond_61
if-eqz v3, :cond_5e
const-string v2, "DRAFT"
:goto_5a
invoke-virtual {v4, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_39
:cond_5e
const-string v2, "UNDRAFT"
goto :goto_5a
:cond_61
aget-object v2, v5, v0
sget-object v7, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;
if-ne v2, v7, :cond_72
if-eqz v3, :cond_6f
const-string v2, "FLAGGED"
:goto_6b
invoke-virtual {v4, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_39
:cond_6f
const-string v2, "UNFLAGGED"
goto :goto_6b
:cond_72
aget-object v2, v5, v0
sget-object v7, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;
if-ne v2, v7, :cond_83
if-eqz v3, :cond_80
const-string v2, "RECENT"
:goto_7c
invoke-virtual {v4, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_39
:cond_80
const-string v2, "OLD"
goto :goto_7c
:cond_83
aget-object v2, v5, v0
sget-object v7, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;
if-ne v2, v7, :cond_39
if-eqz v3, :cond_91
const-string v2, "SEEN"
:goto_8d
invoke-virtual {v4, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_39
:cond_91
const-string v2, "UNSEEN"
goto :goto_8d
:cond_94
if-eqz v3, :cond_a3
const-string v0, "KEYWORD"
:goto_98
invoke-virtual {v4, v0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
aget-object v0, v6, v1
invoke-virtual {v4, v0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
add-int/lit8 v1, v1, 0x1
goto :goto_28
:cond_a3
const-string v0, "UNKEYWORD"
goto :goto_98
.end method
.method private static from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
.registers 4
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
const-string v1, "FROM"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method static generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
.registers 4
instance-of v0, p0, Ljavax/mail/search/AndTerm;
if-eqz v0, :cond_b
check-cast p0, Ljavax/mail/search/AndTerm;
invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
:goto_a
return-object v0
:cond_b
instance-of v0, p0, Ljavax/mail/search/OrTerm;
if-eqz v0, :cond_16
check-cast p0, Ljavax/mail/search/OrTerm;
invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto :goto_a
:cond_16
instance-of v0, p0, Ljavax/mail/search/NotTerm;
if-eqz v0, :cond_21
check-cast p0, Ljavax/mail/search/NotTerm;
invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto :goto_a
:cond_21
instance-of v0, p0, Ljavax/mail/search/HeaderTerm;
if-eqz v0, :cond_2c
check-cast p0, Ljavax/mail/search/HeaderTerm;
invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto :goto_a
:cond_2c
instance-of v0, p0, Ljavax/mail/search/FlagTerm;
if-eqz v0, :cond_37
check-cast p0, Ljavax/mail/search/FlagTerm;
invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto :goto_a
:cond_37
instance-of v0, p0, Ljavax/mail/search/FromTerm;
if-eqz v0, :cond_4a
check-cast p0, Ljavax/mail/search/FromTerm;
invoke-virtual {p0}, Ljavax/mail/search/FromTerm;->getAddress()Ljavax/mail/Address;
move-result-object v0
invoke-virtual {v0}, Ljavax/mail/Address;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto :goto_a
:cond_4a
instance-of v0, p0, Ljavax/mail/search/FromStringTerm;
if-eqz v0, :cond_59
check-cast p0, Ljavax/mail/search/FromStringTerm;
invoke-virtual {p0}, Ljavax/mail/search/FromStringTerm;->getPattern()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto :goto_a
:cond_59
instance-of v0, p0, Ljavax/mail/search/RecipientTerm;
if-eqz v0, :cond_70
check-cast p0, Ljavax/mail/search/RecipientTerm;
invoke-virtual {p0}, Ljavax/mail/search/RecipientTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;
move-result-object v0
invoke-virtual {p0}, Ljavax/mail/search/RecipientTerm;->getAddress()Ljavax/mail/Address;
move-result-object v1
invoke-virtual {v1}, Ljavax/mail/Address;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto :goto_a
:cond_70
instance-of v0, p0, Ljavax/mail/search/RecipientStringTerm;
if-eqz v0, :cond_83
check-cast p0, Ljavax/mail/search/RecipientStringTerm;
invoke-virtual {p0}, Ljavax/mail/search/RecipientStringTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;
move-result-object v0
invoke-virtual {p0}, Ljavax/mail/search/RecipientStringTerm;->getPattern()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto :goto_a
:cond_83
instance-of v0, p0, Ljavax/mail/search/SubjectTerm;
if-eqz v0, :cond_8f
check-cast p0, Ljavax/mail/search/SubjectTerm;
invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto/16 :goto_a
:cond_8f
instance-of v0, p0, Ljavax/mail/search/BodyTerm;
if-eqz v0, :cond_9b
check-cast p0, Ljavax/mail/search/BodyTerm;
invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto/16 :goto_a
:cond_9b
instance-of v0, p0, Ljavax/mail/search/SizeTerm;
if-eqz v0, :cond_a7
check-cast p0, Ljavax/mail/search/SizeTerm;
invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto/16 :goto_a
:cond_a7
instance-of v0, p0, Ljavax/mail/search/SentDateTerm;
if-eqz v0, :cond_b3
check-cast p0, Ljavax/mail/search/SentDateTerm;
invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto/16 :goto_a
:cond_b3
instance-of v0, p0, Ljavax/mail/search/ReceivedDateTerm;
if-eqz v0, :cond_bf
check-cast p0, Ljavax/mail/search/ReceivedDateTerm;
invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto/16 :goto_a
:cond_bf
instance-of v0, p0, Ljavax/mail/search/MessageIDTerm;
if-eqz v0, :cond_cb
check-cast p0, Ljavax/mail/search/MessageIDTerm;
invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
goto/16 :goto_a
:cond_cb
new-instance v0, Ljavax/mail/search/SearchException;
const-string v1, "Search too complex"
invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
.registers 4
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
const-string v1, "HEADER"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
invoke-virtual {p0}, Ljavax/mail/search/HeaderTerm;->getHeaderName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
invoke-virtual {p0}, Ljavax/mail/search/HeaderTerm;->getPattern()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method private static isAscii(Ljava/lang/String;)Z
.registers 6
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
move v1, v0
:goto_6
if-lt v1, v2, :cond_a
const/4 v0, 0x1
:cond_9
return v0
:cond_a
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x7f
if-gt v3, v4, :cond_9
add-int/lit8 v1, v1, 0x1
goto :goto_6
.end method
.method static isAscii(Ljavax/mail/search/SearchTerm;)Z
.registers 5
const/4 v2, 0x0
instance-of v0, p0, Ljavax/mail/search/AndTerm;
if-nez v0, :cond_9
instance-of v0, p0, Ljavax/mail/search/OrTerm;
if-eqz v0, :cond_2b
:cond_9
instance-of v0, p0, Ljavax/mail/search/AndTerm;
if-eqz v0, :cond_19
check-cast p0, Ljavax/mail/search/AndTerm;
invoke-virtual {p0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;
move-result-object v0
:goto_13
move v1, v2
:goto_14
array-length v3, v0
if-lt v1, v3, :cond_20
:cond_17
const/4 v2, 0x1
:cond_18
:goto_18
return v2
:cond_19
check-cast p0, Ljavax/mail/search/OrTerm;
invoke-virtual {p0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;
move-result-object v0
goto :goto_13
:cond_20
aget-object v3, v0, v1
invoke-static {v3}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z
move-result v3
if-eqz v3, :cond_18
add-int/lit8 v1, v1, 0x1
goto :goto_14
:cond_2b
instance-of v0, p0, Ljavax/mail/search/NotTerm;
if-eqz v0, :cond_3a
check-cast p0, Ljavax/mail/search/NotTerm;
invoke-virtual {p0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;
move-result-object v0
invoke-static {v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z
move-result v2
goto :goto_18
:cond_3a
instance-of v0, p0, Ljavax/mail/search/StringTerm;
if-eqz v0, :cond_49
check-cast p0, Ljavax/mail/search/StringTerm;
invoke-virtual {p0}, Ljavax/mail/search/StringTerm;->getPattern()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljava/lang/String;)Z
move-result v2
goto :goto_18
:cond_49
instance-of v0, p0, Ljavax/mail/search/AddressTerm;
if-eqz v0, :cond_17
check-cast p0, Ljavax/mail/search/AddressTerm;
invoke-virtual {p0}, Ljavax/mail/search/AddressTerm;->getAddress()Ljavax/mail/Address;
move-result-object v0
invoke-virtual {v0}, Ljavax/mail/Address;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljava/lang/String;)Z
move-result v2
goto :goto_18
.end method
.method private static messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
.registers 4
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
const-string v1, "HEADER"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
const-string v1, "Message-ID"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
invoke-virtual {p0}, Ljavax/mail/search/MessageIDTerm;->getPattern()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method private static not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
.registers 5
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
const-string v1, "NOT"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
invoke-virtual {p0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;
move-result-object v1
instance-of v2, v1, Ljavax/mail/search/AndTerm;
if-nez v2, :cond_16
instance-of v2, v1, Ljavax/mail/search/FlagTerm;
if-eqz v2, :cond_1e
:cond_16
invoke-static {v1, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V
:goto_1d
return-object v0
:cond_1e
invoke-static {v1, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V
goto :goto_1d
.end method
.method private static or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
.registers 9
const/4 v6, 0x0
const/4 v2, 0x1
invoke-virtual {p0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;
move-result-object v4
array-length v0, v4
const/4 v1, 0x2
if-le v0, v1, :cond_71
aget-object v0, v4, v6
move v1, v2
:goto_d
array-length v3, v4
if-lt v1, v3, :cond_51
check-cast v0, Ljavax/mail/search/OrTerm;
invoke-virtual {v0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;
move-result-object v0
:goto_16
new-instance v1, Lcom/sun/mail/iap/Argument;
invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V
array-length v3, v0
if-le v3, v2, :cond_23
const-string v3, "OR"
invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
:cond_23
aget-object v3, v0, v6
instance-of v3, v3, Ljavax/mail/search/AndTerm;
if-nez v3, :cond_2f
aget-object v3, v0, v6
instance-of v3, v3, Ljavax/mail/search/FlagTerm;
if-eqz v3, :cond_5d
:cond_2f
aget-object v3, v0, v6
invoke-static {v3, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V
:goto_38
array-length v3, v0
if-le v3, v2, :cond_50
aget-object v3, v0, v2
instance-of v3, v3, Ljavax/mail/search/AndTerm;
if-nez v3, :cond_47
aget-object v3, v0, v2
instance-of v3, v3, Ljavax/mail/search/FlagTerm;
if-eqz v3, :cond_67
:cond_47
aget-object v0, v0, v2
invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V
:goto_50
:cond_50
return-object v1
:cond_51
new-instance v3, Ljavax/mail/search/OrTerm;
aget-object v5, v4, v1
invoke-direct {v3, v0, v5}, Ljavax/mail/search/OrTerm;-><init>(Ljavax/mail/search/SearchTerm;Ljavax/mail/search/SearchTerm;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
move-object v0, v3
goto :goto_d
:cond_5d
aget-object v3, v0, v6
invoke-static {v3, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V
goto :goto_38
:cond_67
aget-object v0, v0, v2
invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V
goto :goto_50
:cond_71
move-object v0, v4
goto :goto_16
.end method
.method private static receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
.registers 5
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;
move-result-object v1
invoke-static {v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getComparison()I
move-result v2
packed-switch v2, :pswitch_data_a2
new-instance v0, Ljavax/mail/search/SearchException;
const-string v1, "Cannot handle Date Comparison"
invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1c
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "SINCE "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
:goto_2e
return-object v0
:pswitch_2f
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "ON "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_2e
:pswitch_42
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "BEFORE "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_2e
:pswitch_55
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "OR SINCE "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " ON "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_2e
:pswitch_72
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "OR BEFORE "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " ON "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_2e
:pswitch_8f
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "NOT ON "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_2e
:pswitch_data_a2
.packed-switch 0x1
:pswitch_72
:pswitch_42
:pswitch_2f
:pswitch_8f
:pswitch_1c
:pswitch_55
.end packed-switch
.end method
.method private static recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
.registers 5
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;
if-ne p0, v1, :cond_12
const-string v1, "TO"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
:goto_e
invoke-virtual {v0, p1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
:cond_12
sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;
if-ne p0, v1, :cond_1c
const-string v1, "CC"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_e
:cond_1c
sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;
if-ne p0, v1, :cond_26
const-string v1, "BCC"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_e
:cond_26
new-instance v0, Ljavax/mail/search/SearchException;
const-string v1, "Illegal Recipient type"
invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
.registers 5
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;
move-result-object v1
invoke-static {v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getComparison()I
move-result v2
packed-switch v2, :pswitch_data_a2
new-instance v0, Ljavax/mail/search/SearchException;
const-string v1, "Cannot handle Date Comparison"
invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1c
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "SENTSINCE "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
:goto_2e
return-object v0
:pswitch_2f
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "SENTON "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_2e
:pswitch_42
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "SENTBEFORE "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_2e
:pswitch_55
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "OR SENTSINCE "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " SENTON "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_2e
:pswitch_72
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "OR SENTBEFORE "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " SENTON "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_2e
:pswitch_8f
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "NOT SENTON "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_2e
:pswitch_data_a2
.packed-switch 0x1
:pswitch_72
:pswitch_42
:pswitch_2f
:pswitch_8f
:pswitch_1c
:pswitch_55
.end packed-switch
.end method
.method private static size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;
.registers 3
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
invoke-virtual {p0}, Ljavax/mail/search/SizeTerm;->getComparison()I
move-result v1
packed-switch v1, :pswitch_data_28
:pswitch_c
new-instance v0, Ljavax/mail/search/SearchException;
const-string v1, "Cannot handle Comparison"
invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_14
const-string v1, "LARGER"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
:goto_19
invoke-virtual {p0}, Ljavax/mail/search/SizeTerm;->getNumber()I
move-result v1
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeNumber(I)V
return-object v0
:pswitch_21
const-string v1, "SMALLER"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
goto :goto_19
nop
:pswitch_data_28
.packed-switch 0x2
:pswitch_21
:pswitch_c
:pswitch_c
:pswitch_14
.end packed-switch
.end method
.method private static subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
.registers 4
new-instance v0, Lcom/sun/mail/iap/Argument;
invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V
const-string v1, "SUBJECT"
invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V
invoke-virtual {p0}, Ljavax/mail/search/SubjectTerm;->getPattern()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method private static toIMAPDate(Ljava/util/Date;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;
invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;
const/4 v2, 0x5
invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;
sget-object v2, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;
const/4 v3, 0x2
invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I
move-result v2
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const/16 v2, 0x2d
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method