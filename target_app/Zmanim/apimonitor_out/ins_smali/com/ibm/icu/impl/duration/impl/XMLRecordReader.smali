.class public Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;
.super Ljava/lang/Object;
.source "XMLRecordReader.java"
.implements Lcom/ibm/icu/impl/duration/impl/RecordReader;
.field private atTag:Z
.field private nameStack:Ljava/util/List;
.field private r:Ljava/io/Reader;
.field private tag:Ljava/lang/String;
.method public constructor <init>(Ljava/io/Reader;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->r:Ljava/io/Reader;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;
move-result-object v0
const-string v1, "?xml"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->advance()V
:cond_1b
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;
move-result-object v0
const-string v1, "!--"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2a
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->advance()V
:cond_2a
return-void
.end method
.method private advance()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;
return-void
.end method
.method private getTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;
if-nez v0, :cond_a
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readNextTag()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;
:cond_a
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;
return-object v0
.end method
.method private match(Ljava/lang/String;)Z
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->advance()V
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method private readData()Ljava/lang/String;
.registers 16
const/16 v14, 0x3c
const/16 v13, 0x3b
const/4 v12, -0x1
new-instance v8, Ljava/lang/StringBuffer;
invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V
const/4 v4, 0x0
:cond_b
:goto_b
invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I
move-result v0
if-eq v0, v12, :cond_13
if-ne v0, v14, :cond_1f
:cond_13
if-ne v0, v14, :cond_1d
const/4 v9, 0x1
:goto_16
iput-boolean v9, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->atTag:Z
invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v9
return-object v9
:cond_1d
const/4 v9, 0x0
goto :goto_16
:cond_1f
const/16 v9, 0x26
if-ne v0, v9, :cond_56
invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I
move-result v0
const/16 v9, 0x23
if-ne v0, v9, :cond_8f
new-instance v6, Ljava/lang/StringBuffer;
invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V
const/16 v7, 0xa
invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I
move-result v0
const/16 v9, 0x78
if-ne v0, v9, :cond_40
const/16 v7, 0x10
invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I
move-result v0
:goto_40
:cond_40
if-eq v0, v13, :cond_4d
if-eq v0, v12, :cond_4d
int-to-char v9, v0
invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I
move-result v0
goto :goto_40
:cond_4d
:try_start_4d
invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v9, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
:try_end_54
.catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_54} :catch_66
move-result v5
int-to-char v0, v5
:goto_56
:cond_56
invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isWhitespace(I)Z
move-result v9
if-eqz v9, :cond_fd
if-nez v4, :cond_b
const/16 v0, 0x20
const/4 v4, 0x1
:goto_61
int-to-char v9, v0
invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_b
:catch_66
move-exception v9
move-object v3, v9
sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "numbuf: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " radix: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
throw v3
:cond_8f
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
:goto_94
if-eq v0, v13, :cond_a1
if-eq v0, v12, :cond_a1
int-to-char v9, v0
invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I
move-result v0
goto :goto_94
:cond_a1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
const-string v9, "lt"
invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_b0
const/16 v0, 0x3c
goto :goto_56
:cond_b0
const-string v9, "gt"
invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_bb
const/16 v0, 0x3e
goto :goto_56
:cond_bb
const-string v9, "quot"
invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_c6
const/16 v0, 0x22
goto :goto_56
:cond_c6
const-string v9, "apos"
invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_d1
const/16 v0, 0x27
goto :goto_56
:cond_d1
const-string v9, "amp"
invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_dd
const/16 v0, 0x26
goto/16 :goto_56
:cond_dd
sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "unrecognized character entity: \'"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, "\'"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto/16 :goto_b
:cond_fd
const/4 v4, 0x0
goto/16 :goto_61
.end method
.method private readNextTag()Ljava/lang/String;
.registers 7
const/16 v3, 0x3c
const/4 v5, -0x1
const/4 v0, 0x0
:cond_4
iget-boolean v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->atTag:Z
if-nez v2, :cond_15
invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I
move-result v0
if-eq v0, v3, :cond_10
if-ne v0, v5, :cond_30
:cond_10
if-ne v0, v3, :cond_15
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->atTag:Z
:cond_15
:goto_15
iget-boolean v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->atTag:Z
if-eqz v2, :cond_58
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->atTag:Z
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
:goto_21
invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I
move-result v0
const/16 v2, 0x3e
if-eq v0, v2, :cond_2b
if-ne v0, v5, :cond_53
:cond_2b
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
:goto_2f
return-object v2
:cond_30
invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isWhitespace(I)Z
move-result v2
if-nez v2, :cond_4
sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Unexpected non-whitespace character "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_15
:cond_53
int-to-char v2, v0
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_21
:cond_58
const/4 v2, 0x0
goto :goto_2f
.end method
.method public bool(Ljava/lang/String;)Z
.registers 4
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_d
const-string v1, "true"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
:goto_c
return v1
:cond_d
const/4 v1, 0x0
goto :goto_c
.end method
.method public boolArray(Ljava/lang/String;)[Z
.registers 7
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_1c
array-length v3, v2
new-array v1, v3, [Z
const/4 v0, 0x0
:goto_a
array-length v3, v2
if-ge v0, v3, :cond_1a
const-string v3, "true"
aget-object v4, v2, v0
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
aput-boolean v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_1a
move-object v3, v1
:goto_1b
return-object v3
:cond_1c
const/4 v3, 0x0
goto :goto_1b
.end method
.method public character(Ljava/lang/String;)C
.registers 4
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_c
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
:goto_b
return v1
:cond_c
const v1, 0xffff
goto :goto_b
.end method
.method public characterArray(Ljava/lang/String;)[C
.registers 7
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_1b
array-length v3, v2
new-array v1, v3, [C
const/4 v0, 0x0
:goto_a
array-length v3, v2
if-ge v0, v3, :cond_19
aget-object v3, v2, v0
const/4 v4, 0x0
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
aput-char v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_19
move-object v3, v1
:goto_1a
return-object v3
:cond_1b
const/4 v3, 0x0
goto :goto_1a
.end method
.method public close()Z
.registers 7
const/4 v5, 0x1
iget-object v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
sub-int v0, v2, v5
iget-object v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_38
iget-object v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->advance()V
move v2, v5
:goto_37
return v2
:cond_38
const/4 v2, 0x0
goto :goto_37
.end method
.method public namedIndex(Ljava/lang/String;[Ljava/lang/String;)B
.registers 6
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_17
const/4 v0, 0x0
:goto_7
array-length v2, p2
if-ge v0, v2, :cond_17
aget-object v2, p2, v0
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_14
int-to-byte v2, v0
:goto_13
return v2
:cond_14
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_17
const/4 v2, -0x1
goto :goto_13
.end method
.method public namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B
.registers 9
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_2a
array-length v5, v4
new-array v2, v5, [B
const/4 v0, 0x0
:goto_a
array-length v5, v4
if-ge v0, v5, :cond_28
aget-object v3, v4, v0
const/4 v1, 0x0
:goto_10
array-length v5, p2
if-ge v1, v5, :cond_24
aget-object v5, p2, v1
invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_21
int-to-byte v5, v1
aput-byte v5, v2, v0
:goto_1e
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_21
add-int/lit8 v1, v1, 0x1
goto :goto_10
:cond_24
const/4 v5, -0x1
aput-byte v5, v2, v0
goto :goto_1e
:cond_28
move-object v5, v2
:goto_29
return-object v5
:cond_2a
const/4 v5, 0x0
goto :goto_29
.end method
.method public open(Ljava/lang/String;)Z
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->advance()V
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method  readChar()I
.registers 2
:try_start_0
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->r:Ljava/io/Reader;
invoke-virtual {v0}, Ljava/io/Reader;->read()I
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
:goto_6
return v0
:catch_7
move-exception v0
const/4 v0, -0x1
goto :goto_6
.end method
.method public string(Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_25
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readData()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_25
move-object v1, v0
:goto_24
return-object v1
:cond_25
const/4 v1, 0x0
goto :goto_24
.end method
.method public stringArray(Ljava/lang/String;)[Ljava/lang/String;
.registers 6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "List"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_60
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_1e
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_31
const-string v2, "Null"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2d
const/4 v1, 0x0
:cond_2d
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1e
:cond_31
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "List"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_60
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v2
new-array v2, v2, [Ljava/lang/String;
invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
move-object v2, p0
:goto_5f
return-object v2
:cond_60
const/4 v2, 0x0
goto :goto_5f
.end method
.method public stringTable(Ljava/lang/String;)[[Ljava/lang/String;
.registers 6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "Table"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_57
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_1e
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_28
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1e
:cond_28
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "Table"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_57
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v2
new-array v2, v2, [[Ljava/lang/String;
invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [[Ljava/lang/String;
check-cast p0, [[Ljava/lang/String;
move-object v2, p0
:goto_56
return-object v2
:cond_57
const/4 p0, 0x0
check-cast p0, [[Ljava/lang/String;
move-object v2, p0
goto :goto_56
.end method