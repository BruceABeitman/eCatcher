.class public Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"
.field public static final staticFlag:Z
.field  available:I
.field protected bufcolumn:[I
.field protected buffer:[C
.field protected bufline:[I
.field public bufpos:I
.field  bufsize:I
.field protected column:I
.field protected inBuf:I
.field protected inputStream:Ljava/io/Reader;
.field protected line:I
.field protected maxNextCharInd:I
.field protected prevCharIsCR:Z
.field protected prevCharIsLF:Z
.field protected tabSize:I
.field  tokenBegin:I
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 4
const/4 v1, 0x1
const/16 v0, 0x1000
invoke-direct {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;II)V
.registers 5
const/16 v0, 0x1000
invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;III)V
.registers 6
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
const/4 v3, 0x1
const/16 v5, 0x1000
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v4, v3
invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
.registers 11
const/16 v5, 0x1000
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
.registers 7
if-nez p2, :cond_b
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
:goto_7
invoke-direct {p0, v0, p3, p4, p5}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V
return-void
:cond_b
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
goto :goto_7
.end method
.method public constructor <init>(Ljava/io/Reader;)V
.registers 4
const/4 v1, 0x1
const/16 v0, 0x1000
invoke-direct {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/Reader;II)V
.registers 5
const/16 v0, 0x1000
invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V
return-void
.end method
.method public constructor <init>(Ljava/io/Reader;III)V
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I
iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z
iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I
const/16 v0, 0x8
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tabSize:I
iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;
iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I
sub-int v0, p3, v2
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
iput p4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iput p4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I
new-array v0, p4, [C
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
new-array v0, p4, [I
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
new-array v0, p4, [I
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
return-void
.end method
.method public BeginToken()C
.registers 3
const/4 v1, -0x1
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C
move-result v0
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
return v0
.end method
.method public Done()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
return-void
.end method
.method protected ExpandBuff(Z)V
.registers 12
const/4 v9, 0x0
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
add-int/lit16 v4, v4, 0x800
new-array v1, v4, [C
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
add-int/lit16 v4, v4, 0x800
new-array v2, v4, [I
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
add-int/lit16 v4, v4, 0x800
new-array v0, v4, [I
if-eqz p1, :cond_82
:try_start_15
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
const/4 v6, 0x0
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v7, v8
invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
const/4 v5, 0x0
iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v6, v7
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
const/4 v6, 0x0
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v7, v8
invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
const/4 v5, 0x0
iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v6, v7
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
const/4 v6, 0x0
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v7, v8
invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
const/4 v5, 0x0
iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v6, v7
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v5, v6
add-int/2addr v4, v5
iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
:try_end_75
.catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_75} :catch_b9
:goto_75
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
add-int/lit16 v4, v4, 0x800
iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I
iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
return-void
:try_start_82
:cond_82
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
const/4 v6, 0x0
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v7, v8
invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
const/4 v6, 0x0
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v7, v8
invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
const/4 v6, 0x0
iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v7, v8
invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v4, v5
iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
:try_end_b8
.catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_b8} :catch_b9
goto :goto_75
:catch_b9
move-exception v4
move-object v3, v4
new-instance v4, Ljava/lang/Error;
invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
throw v4
.end method
.method protected FillBuff()V
.registers 11
const/16 v4, 0x800
const/4 v9, 0x1
const/4 v8, -0x1
const/4 v7, 0x0
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I
if-ne v2, v3, :cond_1d
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
if-ne v2, v3, :cond_59
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
if-le v2, v4, :cond_4c
iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I
:try_start_1d
:goto_1d
:cond_1d
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;
iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I
iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
sub-int/2addr v5, v6
invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I
move-result v1
if-ne v1, v8, :cond_74
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;
invoke-virtual {v2}, Ljava/io/Reader;->close()V
new-instance v2, Ljava/io/IOException;
invoke-direct {v2}, Ljava/io/IOException;-><init>()V
throw v2
:catch_39
:try_end_39
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_39} :catch_39
move-exception v2
move-object v0, v2
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
sub-int/2addr v2, v9
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
if-ne v2, v8, :cond_4b
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
:cond_4b
throw v0
:cond_4c
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
if-gez v2, :cond_55
iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
goto :goto_1d
:cond_55
invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ExpandBuff(Z)V
goto :goto_1d
:cond_59
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
if-le v2, v3, :cond_64
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I
goto :goto_1d
:cond_64
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I
sub-int/2addr v2, v3
if-ge v2, v4, :cond_6f
invoke-virtual {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ExpandBuff(Z)V
goto :goto_1d
:cond_6f
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I
goto :goto_1d
:try_start_74
:cond_74
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
add-int/2addr v2, v1
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
:try_end_79
.catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_39
return-void
.end method
.method public GetImage()Ljava/lang/String;
.registers 7
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
if-lt v0, v1, :cond_17
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v3, v4
add-int/lit8 v3, v3, 0x1
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
:goto_16
return-object v0
:cond_17
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
new-instance v1, Ljava/lang/String;
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v4, v5
invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
new-instance v1, Ljava/lang/String;
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
const/4 v3, 0x0
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
add-int/lit8 v4, v4, 0x1
invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_16
.end method
.method public GetSuffix(I)[C
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
new-array v0, p1, [C
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
add-int/lit8 v1, v1, 0x1
if-lt v1, p1, :cond_15
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
sub-int/2addr v2, p1
add-int/lit8 v2, v2, 0x1
invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_14
return-object v0
:cond_15
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
sub-int v3, p1, v3
sub-int/2addr v3, v5
sub-int/2addr v2, v3
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
sub-int v3, p1, v3
sub-int/2addr v3, v5
invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
sub-int v2, p1, v2
sub-int/2addr v2, v5
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
add-int/lit8 v3, v3, 0x1
invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_14
.end method
.method public ReInit(Ljava/io/InputStream;)V
.registers 4
const/4 v1, 0x1
const/16 v0, 0x1000
invoke-virtual {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V
return-void
.end method
.method public ReInit(Ljava/io/InputStream;II)V
.registers 5
const/16 v0, 0x1000
invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V
return-void
.end method
.method public ReInit(Ljava/io/InputStream;III)V
.registers 6
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V
return-void
.end method
.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
const/4 v3, 0x1
const/16 v5, 0x1000
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v4, v3
invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
return-void
.end method
.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
.registers 11
const/16 v5, 0x1000
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
return-void
.end method
.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
.registers 7
if-nez p2, :cond_b
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
:goto_7
invoke-virtual {p0, v0, p3, p4, p5}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V
return-void
:cond_b
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
goto :goto_7
.end method
.method public ReInit(Ljava/io/Reader;)V
.registers 4
const/4 v1, 0x1
const/16 v0, 0x1000
invoke-virtual {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V
return-void
.end method
.method public ReInit(Ljava/io/Reader;II)V
.registers 5
const/16 v0, 0x1000
invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V
return-void
.end method
.method public ReInit(Ljava/io/Reader;III)V
.registers 7
const/4 v1, 0x0
iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;
iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I
const/4 v0, 0x1
sub-int v0, p3, v0
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
if-eqz v0, :cond_13
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
array-length v0, v0
if-eq p4, v0, :cond_23
:cond_13
iput p4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iput p4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I
new-array v0, p4, [C
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
new-array v0, p4, [I
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
new-array v0, p4, [I
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
:cond_23
iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z
iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
const/4 v0, -0x1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
return-void
.end method
.method protected UpdateLineColumn(C)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
iget-boolean v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z
if-eqz v0, :cond_2a
iput-boolean v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I
:cond_16
:goto_16
packed-switch p1, :pswitch_data_5a
:pswitch_19
:goto_19
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I
aput v2, v0, v1
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
aput v2, v0, v1
return-void
:cond_2a
iget-boolean v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z
if-eqz v0, :cond_16
iput-boolean v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z
const/16 v0, 0xa
if-ne p1, v0, :cond_37
iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z
goto :goto_16
:cond_37
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I
goto :goto_16
:pswitch_40
iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z
goto :goto_19
:pswitch_43
iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z
goto :goto_19
:pswitch_46
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
sub-int/2addr v0, v1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tabSize:I
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tabSize:I
rem-int/2addr v2, v3
sub-int/2addr v1, v2
add-int/2addr v0, v1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
goto :goto_19
nop
:pswitch_data_5a
.packed-switch 0x9
:pswitch_46
:pswitch_43
:pswitch_19
:pswitch_19
:pswitch_40
.end packed-switch
.end method
.method public adjustBeginLineColumn(II)V
.registers 15
iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
if-lt v9, v10, :cond_46
iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v9, v10
iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I
add-int/2addr v9, v10
add-int/lit8 v5, v9, 0x1
:goto_12
const/4 v1, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v7, 0x0
const/4 v0, 0x0
:goto_17
if-ge v1, v5, :cond_55
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
rem-int v3, v8, v10
aget v9, v9, v3
iget-object v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
add-int/lit8 v8, v8, 0x1
iget v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
rem-int v4, v8, v11
aget v10, v10, v4
if-ne v9, v10, :cond_55
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
aput p1, v9, v3
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
aget v9, v9, v4
add-int/2addr v9, v0
iget-object v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
aget v10, v10, v3
sub-int v7, v9, v10
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
add-int v10, p2, v0
aput v10, v9, v3
move v0, v7
add-int/lit8 v1, v1, 0x1
goto :goto_17
:cond_46
iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
sub-int/2addr v9, v10
iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
add-int/2addr v9, v10
add-int/lit8 v9, v9, 0x1
iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I
add-int v5, v9, v10
goto :goto_12
:cond_55
if-ge v1, v5, :cond_8c
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
add-int/lit8 v6, p1, 0x1
aput p1, v9, v3
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
add-int v10, p2, v0
aput v10, v9, v3
move v2, v1
:goto_64
add-int/lit8 v1, v2, 0x1
if-ge v2, v5, :cond_8b
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
rem-int v3, v8, v10
aget v9, v9, v3
iget-object v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
add-int/lit8 v8, v8, 0x1
iget v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
rem-int v11, v8, v11
aget v10, v10, v11
if-eq v9, v10, :cond_85
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
add-int/lit8 p1, v6, 0x1
aput v6, v9, v3
move v2, v1
move v6, p1
goto :goto_64
:cond_85
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
aput v6, v9, v3
move v2, v1
goto :goto_64
:cond_8b
move p1, v6
:cond_8c
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
aget v9, v9, v3
iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
aget v9, v9, v3
iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I
return-void
.end method
.method public backup(I)V
.registers 4
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I
add-int/2addr v0, p1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
sub-int/2addr v0, p1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
if-gez v0, :cond_13
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
add-int/2addr v0, v1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
:cond_13
return-void
.end method
.method public getBeginColumn()I
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
aget v0, v0, v1
return v0
.end method
.method public getBeginLine()I
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I
aget v0, v0, v1
return v0
.end method
.method public getColumn()I
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
aget v0, v0, v1
return v0
.end method
.method public getEndColumn()I
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
aget v0, v0, v1
return v0
.end method
.method public getEndLine()I
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
aget v0, v0, v1
return v0
.end method
.method public getLine()I
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
aget v0, v0, v1
return v0
.end method
.method protected getTabSize(I)I
.registers 3
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tabSize:I
return v0
.end method
.method public readChar()C
.registers 4
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I
if-lez v1, :cond_1e
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I
const/4 v2, 0x1
sub-int/2addr v1, v2
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I
if-ne v1, v2, :cond_17
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
:cond_17
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
aget-char v1, v1, v2
:goto_1d
return v1
:cond_1e
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
if-lt v1, v2, :cond_2b
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->FillBuff()V
:cond_2b
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I
aget-char v0, v1, v2
invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->UpdateLineColumn(C)V
move v1, v0
goto :goto_1d
.end method
.method protected setTabSize(I)V
.registers 2
iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tabSize:I
return-void
.end method