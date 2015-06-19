.class public Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;
.super Ljava/lang/Object;
.source "XMLRecordWriter.java"
.implements Lcom/ibm/icu/impl/duration/impl/RecordWriter;
.field private static final INDENT:Ljava/lang/String; = "    "
.field static final NULL_NAME:Ljava/lang/String; = "Null"
.field private nameStack:Ljava/util/List;
.field private w:Ljava/io/Writer;
.method public constructor <init>(Ljava/io/Writer;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->w:Ljava/io/Writer;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;
return-void
.end method
.method private static ctos(C)Ljava/lang/String;
.registers 2
const/16 v0, 0x3c
if-ne p0, v0, :cond_7
const-string v0, "&lt;"
:goto_6
return-object v0
:cond_7
const/16 v0, 0x26
if-ne p0, v0, :cond_e
const-string v0, "&amp;"
goto :goto_6
:cond_e
invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method private internalString(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
if-eqz p2, :cond_35
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->newline()V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "<"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ">"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "</"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ">"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V
:cond_35
return-void
.end method
.method private internalStringArray(Ljava/lang/String;[Ljava/lang/String;)V
.registers 7
if-eqz p2, :cond_2b
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "List"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->push(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_19
array-length v2, p2
if-ge v0, v2, :cond_28
aget-object v1, p2, v0
if-nez v1, :cond_22
const-string v1, "Null"
:cond_22
invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_19
:cond_28
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->pop()V
:cond_2b
return-void
.end method
.method private newline()V
.registers 3
const-string v1, "\n"
invoke-direct {p0, v1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_6
iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge v0, v1, :cond_16
const-string v1, "    "
invoke-direct {p0, v1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_16
return-void
.end method
.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/16 v7, 0x3c
const/4 v6, 0x0
if-nez p0, :cond_7
const/4 v5, 0x0
:goto_6
return-object v5
:cond_7
const/4 v3, 0x0
const/4 v2, 0x0
const/4 v0, 0x0
const/4 v4, 0x0
const/4 v1, 0x0
:goto_c
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
if-ge v1, v5, :cond_62
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isWhitespace(I)Z
move-result v5
if-eqz v5, :cond_42
if-nez v3, :cond_2d
if-nez v2, :cond_24
const/16 v5, 0x20
if-eq v0, v5, :cond_2d
:cond_24
new-instance v3, Ljava/lang/StringBuffer;
invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
:cond_2d
if-eqz v2, :cond_32
:goto_2f
:cond_2f
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_32
const/4 v2, 0x1
const/4 v4, 0x0
const/16 v0, 0x20
:cond_36
:goto_36
if-eqz v3, :cond_2f
if-eqz v4, :cond_5e
if-ne v0, v7, :cond_5b
const-string v5, "&lt;"
:goto_3e
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_2f
:cond_42
const/4 v2, 0x0
if-eq v0, v7, :cond_49
const/16 v5, 0x26
if-ne v0, v5, :cond_59
:cond_49
const/4 v5, 0x1
move v4, v5
:goto_4b
if-eqz v4, :cond_36
if-nez v3, :cond_36
new-instance v3, Ljava/lang/StringBuffer;
invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
goto :goto_36
:cond_59
move v4, v6
goto :goto_4b
:cond_5b
const-string v5, "&amp;"
goto :goto_3e
:cond_5e
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_2f
:cond_62
if-eqz v3, :cond_69
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
goto :goto_6
:cond_69
move-object v5, p0
goto :goto_6
.end method
.method private pop()V
.registers 5
iget-object v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
const/4 v3, 0x1
sub-int v0, v2, v3
iget-object v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->newline()V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "</"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ">"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V
return-void
.end method
.method private push(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->newline()V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "<"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ">"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private writeString(Ljava/lang/String;)V
.registers 5
iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->w:Ljava/io/Writer;
if-eqz v1, :cond_9
:try_start_4
iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->w:Ljava/io/Writer;
invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
:try_end_9
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a
:cond_9
:goto_9
return-void
:catch_a
move-exception v1
move-object v0, v1
sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
const/4 v1, 0x0
iput-object v1, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->w:Ljava/io/Writer;
goto :goto_9
.end method
.method public bool(Ljava/lang/String;Z)V
.registers 4
invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public boolArray(Ljava/lang/String;[Z)V
.registers 6
if-eqz p2, :cond_17
array-length v2, p2
new-array v1, v2, [Ljava/lang/String;
const/4 v0, 0x0
:goto_6
array-length v2, p2
if-ge v0, v2, :cond_14
aget-boolean v2, p2, v0
invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_14
invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V
:cond_17
return-void
.end method
.method public character(Ljava/lang/String;C)V
.registers 4
const v0, 0xffff
if-eq p2, v0, :cond_c
invoke-static {p2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->ctos(C)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V
:cond_c
return-void
.end method
.method public characterArray(Ljava/lang/String;[C)V
.registers 7
if-eqz p2, :cond_21
array-length v3, p2
new-array v1, v3, [Ljava/lang/String;
const/4 v0, 0x0
:goto_6
array-length v3, p2
if-ge v0, v3, :cond_1e
aget-char v2, p2, v0
const v3, 0xffff
if-ne v2, v3, :cond_17
const-string v3, "Null"
aput-object v3, v1, v0
:goto_14
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_17
invoke-static {v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->ctos(C)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v0
goto :goto_14
:cond_1e
invoke-direct {p0, p1, v1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->internalStringArray(Ljava/lang/String;[Ljava/lang/String;)V
:cond_21
return-void
.end method
.method public close()Z
.registers 6
const/4 v4, 0x1
iget-object v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
sub-int v0, v2, v4
if-ltz v0, :cond_34
iget-object v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->newline()V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "</"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ">"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V
move v2, v4
:goto_33
return v2
:cond_34
const/4 v2, 0x0
goto :goto_33
.end method
.method public flush()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->w:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->flush()V
:goto_5
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V
.registers 5
if-ltz p3, :cond_7
aget-object v0, p2, p3
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V
:cond_7
return-void
.end method
.method public namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V
.registers 8
if-eqz p3, :cond_1c
array-length v3, p3
new-array v1, v3, [Ljava/lang/String;
const/4 v0, 0x0
:goto_6
array-length v3, p3
if-ge v0, v3, :cond_19
aget-byte v2, p3, v0
if-gez v2, :cond_14
const-string v3, "Null"
aput-object v3, v1, v0
:goto_11
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_14
aget-object v3, p2, v2
aput-object v3, v1, v0
goto :goto_11
:cond_19
invoke-direct {p0, p1, v1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->internalStringArray(Ljava/lang/String;[Ljava/lang/String;)V
:cond_1c
return-void
.end method
.method public open(Ljava/lang/String;)Z
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->newline()V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "<"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ">"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v0, 0x1
return v0
.end method
.method public string(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {p2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public stringArray(Ljava/lang/String;[Ljava/lang/String;)V
.registers 7
if-eqz p2, :cond_2f
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "List"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->push(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_19
array-length v2, p2
if-ge v0, v2, :cond_2c
aget-object v2, p2, v0
invoke-static {v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_26
const-string v1, "Null"
:cond_26
invoke-direct {p0, p1, v1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_19
:cond_2c
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->pop()V
:cond_2f
return-void
.end method
.method public stringTable(Ljava/lang/String;[[Ljava/lang/String;)V
.registers 7
if-eqz p2, :cond_42
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "Table"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->push(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_19
array-length v2, p2
if-ge v0, v2, :cond_3f
aget-object v1, p2, v0
if-nez v1, :cond_3b
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "List"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "Null"
invoke-direct {p0, v2, v3}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V
:goto_38
add-int/lit8 v0, v0, 0x1
goto :goto_19
:cond_3b
invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V
goto :goto_38
:cond_3f
invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordWriter;->pop()V
:cond_42
return-void
.end method