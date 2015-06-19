.class public Lcom/ibm/icu/text/UnicodeSetIterator;
.super Ljava/lang/Object;
.source "UnicodeSetIterator.java"
.field public static IS_STRING:I
.field public codepoint:I
.field public codepointEnd:I
.field protected endElement:I
.field private endRange:I
.field protected nextElement:I
.field private range:I
.field private set:Lcom/ibm/icu/text/UnicodeSet;
.field public string:Ljava/lang/String;
.field private stringIterator:Ljava/util/Iterator;
.method static constructor <clinit>()V
.registers 1
const/4 v0, -0x1
sput v0, Lcom/ibm/icu/text/UnicodeSetIterator;->IS_STRING:I
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endRange:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->range:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
new-instance v0, Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->reset(Lcom/ibm/icu/text/UnicodeSet;)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/text/UnicodeSet;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endRange:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->range:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSetIterator;->reset(Lcom/ibm/icu/text/UnicodeSet;)V
return-void
.end method
.method public getSet()Lcom/ibm/icu/text/UnicodeSet;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->set:Lcom/ibm/icu/text/UnicodeSet;
return-object v0
.end method
.method public getString()Ljava/lang/String;
.registers 3
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I
sget v1, Lcom/ibm/icu/text/UnicodeSetIterator;->IS_STRING:I
if-eq v0, v1, :cond_d
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;
move-result-object v0
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;
goto :goto_c
.end method
.method protected loadRange(I)V
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->set:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->set:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endElement:I
return-void
.end method
.method public next()Z
.registers 4
const/4 v2, 0x1
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
iget v1, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endElement:I
if-gt v0, v1, :cond_13
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepointEnd:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I
move v0, v2
:goto_12
return v0
:cond_13
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->range:I
iget v1, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endRange:I
if-ge v0, v1, :cond_2e
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->range:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->range:I
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->loadRange(I)V
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepointEnd:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I
move v0, v2
goto :goto_12
:cond_2e
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
if-nez v0, :cond_34
const/4 v0, 0x0
goto :goto_12
:cond_34
sget v0, Lcom/ibm/icu/text/UnicodeSetIterator;->IS_STRING:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_4d
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
:cond_4d
move v0, v2
goto :goto_12
.end method
.method public nextRange()Z
.registers 4
const/4 v2, 0x1
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
iget v1, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endElement:I
if-gt v0, v1, :cond_17
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endElement:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepointEnd:I
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endElement:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
move v0, v2
:goto_16
return v0
:cond_17
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->range:I
iget v1, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endRange:I
if-ge v0, v1, :cond_36
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->range:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->range:I
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->loadRange(I)V
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endElement:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepointEnd:I
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endElement:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
move v0, v2
goto :goto_16
:cond_36
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
if-nez v0, :cond_3c
const/4 v0, 0x0
goto :goto_16
:cond_3c
sget v0, Lcom/ibm/icu/text/UnicodeSetIterator;->IS_STRING:I
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_55
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
:cond_55
move v0, v2
goto :goto_16
.end method
.method public reset()V
.registers 5
const/4 v3, 0x0
const/4 v2, 0x0
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->set:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I
move-result v0
const/4 v1, 0x1
sub-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endRange:I
iput v2, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->range:I
const/4 v0, -0x1
iput v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endElement:I
iput v2, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->nextElement:I
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->endRange:I
if-ltz v0, :cond_1c
iget v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->range:I
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->loadRange(I)V
:cond_1c
iput-object v3, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->set:Lcom/ibm/icu/text/UnicodeSet;
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->set:Lcom/ibm/icu/text/UnicodeSet;
iget-object v0, v0, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_38
iput-object v3, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;
:cond_38
return-void
.end method
.method public reset(Lcom/ibm/icu/text/UnicodeSet;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSetIterator;->set:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSetIterator;->reset()V
return-void
.end method