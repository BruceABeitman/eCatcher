.class public final Lcom/ibm/icu/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"
.implements Ljava/util/Enumeration;
.field private static final DEFAULT_DELIMITERS_:Lcom/ibm/icu/text/UnicodeSet; = null
.field private static final EMPTY_DELIMITER_:Lcom/ibm/icu/text/UnicodeSet; = null
.field private static final TOKEN_SIZE_:I = 0x64
.field private delims:[Z
.field private m_coalesceDelimiters_:Z
.field private m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
.field private m_length_:I
.field private m_nextOffset_:I
.field private m_returnDelimiters_:Z
.field private m_source_:Ljava/lang/String;
.field private m_tokenLimit_:[I
.field private m_tokenOffset_:I
.field private m_tokenSize_:I
.field private m_tokenStart_:[I
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/ibm/icu/text/UnicodeSet;
const-string v1, "[ \t\n\r\u000c]"
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Z)V
sput-object v0, Lcom/ibm/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Lcom/ibm/icu/text/UnicodeSet;
new-instance v0, Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
sput-object v0, Lcom/ibm/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Lcom/ibm/icu/text/UnicodeSet;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v1, 0x0
sget-object v0, Lcom/ibm/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {p0, p1, v0, v1, v1}, Lcom/ibm/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;ZZ)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0, v0}, Lcom/ibm/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;ZZ)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;Z)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;ZZ)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;ZZ)V
.registers 8
const/4 v2, 0x0
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iput v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
if-nez p2, :cond_22
sget-object v0, Lcom/ibm/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Lcom/ibm/icu/text/UnicodeSet;
iput-object v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
:goto_13
iput-boolean p3, p0, Lcom/ibm/icu/util/StringTokenizer;->m_returnDelimiters_:Z
iput-boolean p4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z
iput v1, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
iput v1, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenSize_:I
iget v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
if-nez v0, :cond_25
iput v1, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
:goto_21
:cond_21
return-void
:cond_22
iput-object p2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
goto :goto_13
:cond_25
iput v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
if-nez p3, :cond_21
invoke-direct {p0, v2}, Lcom/ibm/icu/util/StringTokenizer;->getNextNonDelimiter(I)I
move-result v0
iput v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
goto :goto_21
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0, v0}, Lcom/ibm/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
.registers 8
const/4 v2, 0x0
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/ibm/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Lcom/ibm/icu/text/UnicodeSet;
iput-object v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
if-eqz p2, :cond_20
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_20
new-instance v0, Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
iget-object v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {p0}, Lcom/ibm/icu/util/StringTokenizer;->checkDelimiters()V
:cond_20
iput-boolean p4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z
iput-object p1, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iput v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
iput-boolean p3, p0, Lcom/ibm/icu/util/StringTokenizer;->m_returnDelimiters_:Z
iput v1, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
iput v1, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenSize_:I
iget v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
if-nez v0, :cond_37
iput v1, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
:cond_36
:goto_36
return-void
:cond_37
iput v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
if-nez p3, :cond_36
invoke-direct {p0, v2}, Lcom/ibm/icu/util/StringTokenizer;->getNextNonDelimiter(I)I
move-result v0
iput v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
goto :goto_36
.end method
.method private getNextDelimiter(I)I
.registers 6
if-ltz p1, :cond_3b
move v1, p1
const/4 v0, 0x0
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
if-nez v2, :cond_23
:cond_8
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
invoke-static {v2, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v2, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v2
if-eqz v2, :cond_1c
:cond_16
:goto_16
iget v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
if-ge v1, v2, :cond_3b
move v2, v1
:goto_1b
return v2
:cond_1c
add-int/lit8 v1, v1, 0x1
iget v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
if-lt v1, v2, :cond_8
goto :goto_16
:cond_23
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
invoke-static {v2, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
array-length v2, v2
if-ge v0, v2, :cond_34
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
aget-boolean v2, v2, v0
if-nez v2, :cond_16
:cond_34
add-int/lit8 v1, v1, 0x1
iget v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
if-lt v1, v2, :cond_23
goto :goto_16
:cond_3b
const/4 v2, -0x1
iget v3, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
sub-int/2addr v2, v3
goto :goto_1b
.end method
.method private getNextNonDelimiter(I)I
.registers 6
if-ltz p1, :cond_3b
move v1, p1
const/4 v0, 0x0
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
if-nez v2, :cond_23
:cond_8
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
invoke-static {v2, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v2, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v2
if-nez v2, :cond_1c
:cond_16
:goto_16
iget v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
if-ge v1, v2, :cond_3b
move v2, v1
:goto_1b
return v2
:cond_1c
add-int/lit8 v1, v1, 0x1
iget v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
if-lt v1, v2, :cond_8
goto :goto_16
:cond_23
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
invoke-static {v2, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
array-length v2, v2
if-ge v0, v2, :cond_16
iget-object v2, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
aget-boolean v2, v2, v0
if-eqz v2, :cond_16
add-int/lit8 v1, v1, 0x1
iget v2, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
if-lt v1, v2, :cond_23
goto :goto_16
:cond_3b
const/4 v2, -0x1
iget v3, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
sub-int/2addr v2, v3
goto :goto_1b
.end method
.method  checkDelimiters()V
.registers 7
const/4 v5, 0x1
iget-object v3, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
if-eqz v3, :cond_d
iget-object v3, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v3}, Lcom/ibm/icu/text/UnicodeSet;->size()I
move-result v3
if-nez v3, :cond_13
:cond_d
const/4 v3, 0x0
new-array v3, v3, [Z
iput-object v3, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
:cond_12
:goto_12
return-void
:cond_13
iget-object v3, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v4}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I
move-result v4
sub-int/2addr v4, v5
invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I
move-result v2
const/16 v3, 0x7f
if-ge v2, v3, :cond_3b
add-int/lit8 v3, v2, 0x1
new-array v3, v3, [Z
iput-object v3, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
const/4 v1, 0x0
:goto_2b
const/4 v3, -0x1
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v4, v1}, Lcom/ibm/icu/text/UnicodeSet;->charAt(I)I
move-result v0
if-eq v3, v0, :cond_12
iget-object v3, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
aput-boolean v5, v3, v0
add-int/lit8 v1, v1, 0x1
goto :goto_2b
:cond_3b
const/4 v3, 0x0
iput-object v3, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
goto :goto_12
.end method
.method public countTokens()I
.registers 12
const/16 v9, 0x64
const/4 v10, 0x0
const/4 v5, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/util/StringTokenizer;->hasMoreTokens()Z
move-result v8
if-eqz v8, :cond_81
iget v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
if-ltz v8, :cond_14
iget v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenSize_:I
iget v9, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
sub-int/2addr v8, v9
:goto_13
return v8
:cond_14
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenStart_:[I
if-nez v8, :cond_20
new-array v8, v9, [I
iput-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenStart_:[I
new-array v8, v9, [I
iput-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
:cond_20
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenStart_:[I
array-length v8, v8
if-ne v8, v5, :cond_3e
iget-object v6, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenStart_:[I
iget-object v7, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
array-length v3, v6
add-int/lit8 v2, v3, 0x64
new-array v8, v2, [I
iput-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenStart_:[I
new-array v8, v2, [I
iput-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenStart_:[I
invoke-static {v6, v10, v8, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
invoke-static {v7, v10, v8, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_3e
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenStart_:[I
iget v9, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
aput v9, v8, v5
iget-boolean v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_returnDelimiters_:Z
if-eqz v8, :cond_ac
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
iget v9, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-static {v8, v9}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
if-nez v8, :cond_83
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v8, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v8
move v1, v8
:goto_5b
if-eqz v1, :cond_a1
iget-boolean v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z
if-eqz v8, :cond_93
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
iget v9, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-direct {p0, v9}, Lcom/ibm/icu/util/StringTokenizer;->getNextNonDelimiter(I)I
move-result v9
aput v9, v8, v5
:goto_6b
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
aget v8, v8, v5
iput v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
:goto_71
add-int/lit8 v5, v5, 0x1
iget v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
if-gez v8, :cond_20
iput v10, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
iput v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenSize_:I
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenStart_:[I
aget v8, v8, v10
iput v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
:cond_81
move v8, v5
goto :goto_13
:cond_83
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
array-length v8, v8
if-ge v0, v8, :cond_91
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
aget-boolean v8, v8, v0
if-eqz v8, :cond_91
const/4 v8, 0x1
move v1, v8
goto :goto_5b
:cond_91
move v1, v10
goto :goto_5b
:cond_93
iget v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
add-int/lit8 v4, v8, 0x1
iget v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
if-ne v4, v8, :cond_9c
const/4 v4, -0x1
:cond_9c
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
aput v4, v8, v5
goto :goto_6b
:cond_a1
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
iget v9, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-direct {p0, v9}, Lcom/ibm/icu/util/StringTokenizer;->getNextDelimiter(I)I
move-result v9
aput v9, v8, v5
goto :goto_6b
:cond_ac
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
iget v9, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-direct {p0, v9}, Lcom/ibm/icu/util/StringTokenizer;->getNextDelimiter(I)I
move-result v9
aput v9, v8, v5
iget-object v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
aget v8, v8, v5
invoke-direct {p0, v8}, Lcom/ibm/icu/util/StringTokenizer;->getNextNonDelimiter(I)I
move-result v8
iput v8, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
goto :goto_71
.end method
.method public hasMoreElements()Z
.registers 2
invoke-virtual {p0}, Lcom/ibm/icu/util/StringTokenizer;->hasMoreTokens()Z
move-result v0
return v0
.end method
.method public hasMoreTokens()Z
.registers 2
iget v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
if-ltz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public nextElement()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/ibm/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public nextToken()Ljava/lang/String;
.registers 9
iget v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
if-gez v4, :cond_92
iget v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
if-gez v4, :cond_10
new-instance v4, Ljava/util/NoSuchElementException;
const-string v5, "No more tokens in String"
invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v4
:cond_10
iget-boolean v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_returnDelimiters_:Z
if-eqz v4, :cond_70
const/4 v3, 0x0
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
iget v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-static {v4, v5}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
if-nez v4, :cond_41
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v4, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z
move-result v4
move v1, v4
:goto_28
if-eqz v1, :cond_60
iget-boolean v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z
if-eqz v4, :cond_52
iget v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-direct {p0, v4}, Lcom/ibm/icu/util/StringTokenizer;->getNextNonDelimiter(I)I
move-result v3
:goto_34
:cond_34
if-gez v3, :cond_67
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
iget v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
:goto_3e
iput v3, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
:goto_40
:cond_40
return-object v2
:cond_41
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
array-length v4, v4
if-ge v0, v4, :cond_4f
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->delims:[Z
aget-boolean v4, v4, v0
if-eqz v4, :cond_4f
const/4 v4, 0x1
move v1, v4
goto :goto_28
:cond_4f
const/4 v4, 0x0
move v1, v4
goto :goto_28
:cond_52
iget v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v5
add-int v3, v4, v5
iget v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_length_:I
if-ne v3, v4, :cond_34
const/4 v3, -0x1
goto :goto_34
:cond_60
iget v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-direct {p0, v4}, Lcom/ibm/icu/util/StringTokenizer;->getNextDelimiter(I)I
move-result v3
goto :goto_34
:cond_67
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
iget v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
goto :goto_3e
:cond_70
iget v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-direct {p0, v4}, Lcom/ibm/icu/util/StringTokenizer;->getNextDelimiter(I)I
move-result v3
if-gez v3, :cond_83
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
iget v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
iput v3, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
goto :goto_40
:cond_83
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
iget v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v3}, Lcom/ibm/icu/util/StringTokenizer;->getNextNonDelimiter(I)I
move-result v4
iput v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
goto :goto_40
:cond_92
iget v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
iget v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenSize_:I
if-lt v4, v5, :cond_a0
new-instance v4, Ljava/util/NoSuchElementException;
const-string v5, "No more tokens in String"
invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v4
:cond_a0
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
iget v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
aget v4, v4, v5
if-ltz v4, :cond_d3
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
iget-object v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenStart_:[I
iget v6, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
aget v5, v5, v6
iget-object v6, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenLimit_:[I
iget v7, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
aget v6, v6, v7
invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
:goto_ba
iget v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
const/4 v4, -0x1
iput v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
iget v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
iget v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenSize_:I
if-ge v4, v5, :cond_40
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenStart_:[I
iget v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
aget v4, v4, v5
iput v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
goto/16 :goto_40
:cond_d3
iget-object v4, p0, Lcom/ibm/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;
iget-object v5, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenStart_:[I
iget v6, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
aget v5, v5, v6
invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
goto :goto_ba
.end method
.method public nextToken(Lcom/ibm/icu/text/UnicodeSet;)Ljava/lang/String;
.registers 3
const/4 v0, -0x1
iput-object p1, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {p0}, Lcom/ibm/icu/util/StringTokenizer;->checkDelimiters()V
iput v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenOffset_:I
iput v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_tokenSize_:I
iget-boolean v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_returnDelimiters_:Z
if-nez v0, :cond_16
iget v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
invoke-direct {p0, v0}, Lcom/ibm/icu/util/StringTokenizer;->getNextNonDelimiter(I)I
move-result v0
iput v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_nextOffset_:I
:cond_16
invoke-virtual {p0}, Lcom/ibm/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
.registers 3
sget-object v0, Lcom/ibm/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Lcom/ibm/icu/text/UnicodeSet;
iput-object v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
if-eqz p1, :cond_18
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_18
new-instance v0, Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
iget-object v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
:cond_18
iget-object v0, p0, Lcom/ibm/icu/util/StringTokenizer;->m_delimiters_:Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/StringTokenizer;->nextToken(Lcom/ibm/icu/text/UnicodeSet;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method