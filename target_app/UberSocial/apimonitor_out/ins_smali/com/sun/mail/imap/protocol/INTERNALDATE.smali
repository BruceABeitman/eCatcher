.class public Lcom/sun/mail/imap/protocol/INTERNALDATE;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/protocol/Item;
.field private static df:Ljava/text/SimpleDateFormat;
.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;
.field static final name:[C
.field protected date:Ljava/util/Date;
.field public msgno:I
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0xc
new-array v0, v0, [C
fill-array-data v0, :array_1c
sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C
new-instance v0, Ljavax/mail/internet/MailDateFormat;
invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V
sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "dd-MMM-yyyy HH:mm:ss "
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;
return-void
:array_1c
.array-data 0x2
0x49t 0x0t
0x4et 0x0t
0x54t 0x0t
0x45t 0x0t
0x52t 0x0t
0x4et 0x0t
0x41t 0x0t
0x4ct 0x0t
0x44t 0x0t
0x41t 0x0t
0x54t 0x0t
0x45t 0x0t
.end array-data
.end method
.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->msgno:I
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_1a
new-instance v0, Lcom/sun/mail/iap/ParsingException;
const-string v1, "INTERNALDATE is NIL"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
:try_start_1a
sget-object v1, Lcom/sun/mail/imap/protocol/INTERNALDATE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;
invoke-virtual {v1, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->date:Ljava/util/Date;
:try_end_22
.catch Ljava/text/ParseException; {:try_start_1a .. :try_end_22} :catch_23
return-void
:catch_23
move-exception v0
new-instance v0, Lcom/sun/mail/iap/ParsingException;
const-string v1, "INTERNALDATE parse error"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static format(Ljava/util/Date;)Ljava/lang/String;
.registers 7
const/16 v5, 0xa
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;
monitor-enter v2
:try_start_a
sget-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;
new-instance v3, Ljava/text/FieldPosition;
const/4 v4, 0x0
invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V
invoke-virtual {v0, p0, v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
monitor-exit v2
:try_end_16
.catchall {:try_start_a .. :try_end_16} :catchall_50
invoke-virtual {p0}, Ljava/util/Date;->getTimezoneOffset()I
move-result v0
neg-int v0, v0
if-gez v0, :cond_53
const/16 v2, 0x2d
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
neg-int v0, v0
:goto_23
div-int/lit8 v2, v0, 0x3c
rem-int/lit8 v0, v0, 0x3c
div-int/lit8 v3, v2, 0xa
invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C
move-result v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
rem-int/lit8 v2, v2, 0xa
invoke-static {v2, v5}, Ljava/lang/Character;->forDigit(II)C
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
div-int/lit8 v2, v0, 0xa
invoke-static {v2, v5}, Ljava/lang/Character;->forDigit(II)C
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
rem-int/lit8 v0, v0, 0xa
invoke-static {v0, v5}, Ljava/lang/Character;->forDigit(II)C
move-result v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:catchall_50
move-exception v0
:try_start_51
monitor-exit v2
:try_end_52
.catchall {:try_start_51 .. :try_end_52} :catchall_50
throw v0
:cond_53
const/16 v2, 0x2b
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_23
.end method
.method public getDate()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->date:Ljava/util/Date;
return-object v0
.end method