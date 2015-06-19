.class public Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/protocol/Item;
.field private static MULTI:I
.field private static NESTED:I
.field private static SINGLE:I
.field static final name:[C
.field private static parseDebug:Z
.field public attachment:Ljava/lang/String;
.field public bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
.field public cParams:Ljavax/mail/internet/ParameterList;
.field public dParams:Ljavax/mail/internet/ParameterList;
.field public description:Ljava/lang/String;
.field public disposition:Ljava/lang/String;
.field public encoding:Ljava/lang/String;
.field public envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;
.field public id:Ljava/lang/String;
.field public language:[Ljava/lang/String;
.field public lines:I
.field public md5:Ljava/lang/String;
.field public msgno:I
.field private processedType:I
.field public size:I
.field public subtype:Ljava/lang/String;
.field public type:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
const/16 v2, 0xd
new-array v2, v2, [C
fill-array-data v2, :array_2c
sput-object v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C
sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I
const/4 v2, 0x2
sput v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I
const/4 v2, 0x3
sput v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I
sput-boolean v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
:try_start_15
const-string v2, "mail.imap.parse.debug"
invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_28
const-string v3, "true"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_28
:goto_25
sput-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
:goto_27
:try_end_27
.catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_27} :catch_2a
return-void
:cond_28
move v0, v1
goto :goto_25
:catch_2a
move-exception v0
goto :goto_27
:array_2c
.array-data 0x2
0x42t 0x0t
0x4ft 0x0t
0x44t 0x0t
0x59t 0x0t
0x53t 0x0t
0x54t 0x0t
0x52t 0x0t
0x55t 0x0t
0x43t 0x0t
0x54t 0x0t
0x55t 0x0t
0x52t 0x0t
0x45t 0x0t
.end array-data
.end method
.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
.registers 10
const/16 v7, 0x20
const/4 v6, 0x0
const/4 v5, 0x1
const/16 v4, 0x28
const/16 v3, 0x29
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I
const/4 v0, -0x1
iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_1c
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: parsing BODYSTRUCTURE"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_1c
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_3c
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: msgno "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_3c
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-eq v0, v4, :cond_4d
new-instance v0, Lcom/sun/mail/iap/ParsingException;
const-string v1, "BODYSTRUCTURE parse error: missing ``(\'\' at start"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4d
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B
move-result v0
if-ne v0, v4, :cond_1ec
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_5e
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: parsing multipart"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_5e
const-string v0, "multipart"
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
sget v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I
iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I
new-instance v0, Ljava/util/Vector;
invoke-direct {v0, v5}, Ljava/util/Vector;-><init>(I)V
:cond_6b
new-instance v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
invoke-direct {v1, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B
move-result v1
if-eq v1, v4, :cond_6b
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v1
new-array v1, v1, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iput-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_a9
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: subtype "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_a9
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-ne v0, v3, :cond_bb
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_ba
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: parse DONE"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_ba
:goto_ba
return-void
:cond_bb
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_c6
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: parsing extension data"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_c6
invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-ne v0, v3, :cond_de
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_ba
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: body parameters DONE"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_ba
:cond_de
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-ne v0, v4, :cond_141
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_ef
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: parse disposition"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_ef
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_10f
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: disposition "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_10f
invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-eq v0, v3, :cond_123
new-instance v0, Lcom/sun/mail/iap/ParsingException;
const-string v1, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition in multipart"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_123
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_12e
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: disposition DONE"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:goto_12e
:cond_12e
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-ne v0, v3, :cond_18c
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_ba
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: no body-fld-lang"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto/16 :goto_ba
:cond_141
const/16 v1, 0x4e
if-eq v0, v1, :cond_149
const/16 v1, 0x6e
if-ne v0, v1, :cond_159
:cond_149
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_154
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: disposition NIL"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_154
const/4 v0, 0x2
invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V
goto :goto_12e
:cond_159
new-instance v1, Lcom/sun/mail/iap/ParsingException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "BODYSTRUCTURE parse error: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "bad multipart disposition, b "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v1
:cond_18c
if-eq v0, v7, :cond_196
new-instance v0, Lcom/sun/mail/iap/ParsingException;
const-string v1, "BODYSTRUCTURE parse error: missing space after disposition"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_196
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B
move-result v0
if-ne v0, v4, :cond_1c7
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_1bd
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: language len "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;
array-length v2, v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:goto_1bd
:cond_1bd
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-ne v0, v7, :cond_ba
invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V
goto :goto_1bd
:cond_1c7
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1bd
new-array v1, v5, [Ljava/lang/String;
aput-object v0, v1, v6
iput-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;
sget-boolean v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v1, :cond_1bd
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "DEBUG IMAP: language "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_1bd
:cond_1ec
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_1f7
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: single part"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_1f7
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_217
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_217
sget v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I
iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_23b
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: subtype "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_23b
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
if-nez v0, :cond_247
const-string v0, "application"
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
const-string v0, "octet-stream"
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;
:cond_247
invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_267
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: cParams "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_267
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_287
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: id "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_287
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_2a7
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: description "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_2a7
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_2c7
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: encoding "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_2c7
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_2e7
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: size "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_2e7
iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I
if-gez v0, :cond_2f3
new-instance v0, Lcom/sun/mail/iap/ParsingException;
const-string v1, "BODYSTRUCTURE parse error: bad ``size\'\' element"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f3
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
const-string v1, "text"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_329
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_31d
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: lines "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_31d
iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I
if-gez v0, :cond_3b0
new-instance v0, Lcom/sun/mail/iap/ParsingException;
const-string v1, "BODYSTRUCTURE parse error: bad ``lines\'\' element"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_329
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
const-string v1, "message"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_37f
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;
const-string v1, "rfc822"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_37f
sget v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I
iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I
new-instance v0, Lcom/sun/mail/imap/protocol/ENVELOPE;
invoke-direct {v0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;
new-array v0, v5, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
new-instance v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
invoke-direct {v1, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
aput-object v1, v0, v6
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_373
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: lines "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_373
iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I
if-gez v0, :cond_3b0
new-instance v0, Lcom/sun/mail/iap/ParsingException;
const-string v1, "BODYSTRUCTURE parse error: bad ``lines\'\' element"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_37f
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B
move-result v0
int-to-char v0, v0
invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z
move-result v0
if-eqz v0, :cond_3b0
new-instance v0, Lcom/sun/mail/iap/ParsingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "BODYSTRUCTURE parse error: server erroneously included ``lines\'\' element with type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3b0
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B
move-result v0
if-ne v0, v3, :cond_3c6
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_ba
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: parse DONE"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto/16 :goto_ba
:cond_3c6
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-ne v0, v3, :cond_3df
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_ba
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: no MD5 DONE"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto/16 :goto_ba
:cond_3df
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-ne v0, v4, :cond_433
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_405
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: disposition "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_405
invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_425
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: dParams "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_425
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-eq v0, v3, :cond_44a
new-instance v0, Lcom/sun/mail/iap/ParsingException;
const-string v1, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_433
const/16 v1, 0x4e
if-eq v0, v1, :cond_43b
const/16 v1, 0x6e
if-ne v0, v1, :cond_45d
:cond_43b
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_446
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: disposition NIL"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_446
const/4 v0, 0x2
invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V
:cond_44a
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-ne v0, v3, :cond_490
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_ba
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: disposition DONE"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto/16 :goto_ba
:cond_45d
new-instance v1, Lcom/sun/mail/iap/ParsingException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "BODYSTRUCTURE parse error: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "bad single part disposition, b "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v1
:cond_490
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B
move-result v0
if-ne v0, v4, :cond_4ca
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_4b7
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "DEBUG IMAP: language len "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;
array-length v2, v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:goto_4b7
:cond_4b7
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B
move-result v0
if-eq v0, v7, :cond_4ef
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_ba
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG IMAP: all DONE"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto/16 :goto_ba
:cond_4ca
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_4b7
new-array v1, v5, [Ljava/lang/String;
aput-object v0, v1, v6
iput-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;
sget-boolean v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v1, :cond_4b7
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "DEBUG IMAP: language "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_4b7
:cond_4ef
invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V
goto :goto_4b7
.end method
.method private parseBodyExtension(Lcom/sun/mail/iap/Response;)V
.registers 4
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B
move-result v0
const/16 v1, 0x28
if-ne v0, v1, :cond_1b
const/4 v0, 0x1
invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V
:cond_f
invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B
move-result v0
const/16 v1, 0x29
if-ne v0, v1, :cond_f
:goto_1a
return-void
:cond_1b
int-to-char v0, v0
invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I
goto :goto_1a
:cond_26
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;
goto :goto_1a
.end method
.method private parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
.registers 9
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B
move-result v0
const/16 v2, 0x28
if-ne v0, v2, :cond_8b
new-instance v0, Ljavax/mail/internet/ParameterList;
invoke-direct {v0}, Ljavax/mail/internet/ParameterList;-><init>()V
:cond_11
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;
move-result-object v2
sget-boolean v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v3, :cond_2d
sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "DEBUG IMAP: parameter name "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_2d
if-nez v2, :cond_5e
new-instance v0, Lcom/sun/mail/iap/ParsingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "BODYSTRUCTURE parse error: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "null name in parameter list"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5e
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;
move-result-object v3
sget-boolean v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v4, :cond_7a
sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "DEBUG IMAP: parameter value "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_7a
invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B
move-result v2
const/16 v3, 0x29
if-ne v2, v3, :cond_11
const-string v2, "DONE"
invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V
:goto_8a
return-object v0
:cond_8b
const/16 v2, 0x4e
if-eq v0, v2, :cond_93
const/16 v2, 0x6e
if-ne v0, v2, :cond_a4
:cond_93
sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
if-eqz v0, :cond_9e
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "DEBUG IMAP: parameter list NIL"
invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_9e
const/4 v0, 0x2
invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V
move-object v0, v1
goto :goto_8a
:cond_a4
new-instance v0, Lcom/sun/mail/iap/ParsingException;
const-string v1, "Parameter list parse error"
invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public isMulti()Z
.registers 3
iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I
sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isNested()Z
.registers 3
iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I
sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isSingle()Z
.registers 3
iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I
sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method