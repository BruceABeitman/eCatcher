.class public final Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "SourceFile"


# instance fields
.field protected final _hashSeed:I

.field protected _inputBuffer:[C

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field protected _reader:Ljava/io/Reader;

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocTokenBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {p5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->hashSeed()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    return-void
.end method

.method private _nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1b

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    :cond_18
    :goto_18
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_1b
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_18

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_18
.end method

.method private _parseFieldName2(III)Ljava/lang/String;
    .registers 10

    const/16 v5, 0x5c

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    :goto_18
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_3d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ": was expecting closing \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_3d
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v2, v3

    if-gt v3, v5, :cond_6f

    if-ne v3, v5, :cond_62

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v2

    :goto_4f
    mul-int/lit8 v4, p2, 0x21

    add-int p2, v4, v3

    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    array-length v0, v1

    if-lt v3, v0, :cond_8b

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    goto :goto_18

    :cond_62
    if-gt v3, p3, :cond_6f

    if-eq v3, p3, :cond_71

    const/16 v2, 0x20

    if-ge v3, v2, :cond_6f

    const-string v2, "name"

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_6f
    move v2, v3

    goto :goto_4f

    :cond_71
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v3, v1, v2, v0, p2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8b
    move v0, v3

    goto :goto_18
.end method

.method private _parseUnusualFieldName2(II[I)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    array-length v3, p3

    :goto_17
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v4, :cond_23

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_23
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v4, v2, v4

    if-gt v4, v3, :cond_49

    aget v2, p3, v4

    if-eqz v2, :cond_4f

    :cond_2f
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v3, v1, v2, v0, p2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_4f
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    mul-int/lit8 v2, p2, 0x21

    add-int p2, v2, v4

    add-int/lit8 v2, v0, 0x1

    aput-char v4, v1, v0

    array-length v0, v1

    if-lt v2, v0, :cond_68

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    goto :goto_17

    :cond_68
    move v0, v2

    goto :goto_17
.end method

.method private _skipCComment()V
    .registers 5

    const/16 v3, 0x2a

    :cond_2
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-gt v0, v3, :cond_2

    if-ne v0, v3, :cond_39

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_28

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_28
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    :goto_38
    return-void

    :cond_39
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_45

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    goto :goto_2

    :cond_45
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_2

    :cond_4d
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_2

    :cond_55
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    goto :goto_38
.end method

.method private _skipComment()V
    .registers 5

    const/16 v3, 0x2f

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_f
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_20

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_30

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCppComment()V

    :goto_2f
    return-void

    :cond_30
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_38

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCComment()V

    goto :goto_2f

    :cond_38
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_2f
.end method

.method private _skipCppComment()V
    .registers 4

    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_21

    :cond_2a
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private _skipWS()I
    .registers 5

    const/16 v3, 0x20

    :cond_2
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v3, :cond_23

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1f

    return v0

    :cond_1f
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_2

    :cond_23
    if-eq v0, v3, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    goto :goto_2

    :cond_2d
    const/16 v1, 0xd

    if-ne v0, v1, :cond_35

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_2

    :cond_35
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_2

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private _skipWSOrEnd()I
    .registers 5

    const/16 v3, 0x20

    :cond_2
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v3, :cond_22

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_40

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_2

    :cond_22
    if-eq v0, v3, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    goto :goto_2

    :cond_2c
    const/16 v1, 0xd

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_2

    :cond_34
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_2

    :cond_3c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleEOF()V

    const/4 v0, -0x1

    :cond_40
    return v0
.end method

.method private _verifyNoLeadingZeroes()C
    .registers 6

    const/16 v4, 0x39

    const/16 v1, 0x30

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_12

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v2

    if-lt v0, v1, :cond_1c

    if-le v0, v4, :cond_1e

    :cond_1c
    move v0, v1

    goto :goto_11

    :cond_1e
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    :cond_2b
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    if-ne v0, v1, :cond_11

    :cond_33
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_3f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_3f
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v2

    if-lt v0, v1, :cond_49

    if-le v0, v4, :cond_4b

    :cond_49
    move v0, v1

    goto :goto_11

    :cond_4b
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    if-eq v0, v1, :cond_33

    goto :goto_11
.end method

.method private parseNumberText2(Z)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 16

    const/16 v10, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    if-eqz p1, :cond_198

    aput-char v10, v4, v2

    move v0, v1

    :goto_13
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v3, v5, :cond_121

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v3, v5

    :goto_23
    if-ne v3, v11, :cond_29

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyNoLeadingZeroes()C

    move-result v3

    :cond_29
    move v5, v2

    move v13, v3

    move-object v3, v4

    move v4, v13

    :goto_2d
    if-lt v4, v11, :cond_191

    if-gt v4, v12, :cond_191

    add-int/lit8 v5, v5, 0x1

    array-length v6, v3

    if-lt v0, v6, :cond_3e

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move-object v3, v0

    move v0, v2

    :cond_3e
    add-int/lit8 v6, v0, 0x1

    aput-char v4, v3, v0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v4, :cond_129

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_129

    move v7, v1

    move v0, v2

    move v9, v5

    move-object v4, v3

    move v5, v6

    :goto_53
    if-nez v9, :cond_71

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Missing integer part (next char "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    :cond_71
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_189

    add-int/lit8 v3, v5, 0x1

    aput-char v0, v4, v5

    move-object v5, v4

    move v4, v3

    move v3, v0

    move v0, v2

    :goto_7d
    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v6, v8, :cond_136

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_136

    move v6, v1

    :goto_8a
    if-nez v0, :cond_91

    const-string v7, "Decimal point not followed by a digit"

    invoke-virtual {p0, v3, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_91
    move v8, v0

    move v0, v4

    move v13, v3

    move-object v3, v5

    move v5, v13

    :goto_96
    const/16 v4, 0x65

    if-eq v5, v4, :cond_9e

    const/16 v4, 0x45

    if-ne v5, v4, :cond_181

    :cond_9e
    array-length v4, v3

    if-lt v0, v4, :cond_a9

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move-object v3, v0

    move v0, v2

    :cond_a9
    add-int/lit8 v4, v0, 0x1

    aput-char v5, v3, v0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v0, v5, :cond_156

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v5, v0, v5

    :goto_bd
    if-eq v5, v10, :cond_c3

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_17b

    :cond_c3
    array-length v0, v3

    if-lt v4, v0, :cond_178

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v3

    move v0, v2

    :goto_cd
    add-int/lit8 v4, v0, 0x1

    aput-char v5, v3, v0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v0, v5, :cond_15e

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v5

    move-object v5, v3

    move v3, v2

    :goto_e3
    move v7, v0

    move v0, v4

    :goto_e5
    if-gt v7, v12, :cond_174

    if-lt v7, v11, :cond_174

    add-int/lit8 v3, v3, 0x1

    array-length v4, v5

    if-lt v0, v4, :cond_f5

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    move v0, v2

    :cond_f5
    add-int/lit8 v4, v0, 0x1

    aput-char v7, v5, v0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v10, :cond_168

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_168

    move v2, v3

    move v0, v1

    move v1, v4

    :goto_108
    if-nez v2, :cond_10f

    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v7, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_10f
    :goto_10f
    if-nez v0, :cond_117

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    :cond_117
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    invoke-virtual {p0, p1, v9, v8, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reset(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_121
    const-string v3, "No digit following minus sign"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v3

    goto/16 :goto_23

    :cond_129
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v4, v0, v4

    move v0, v6

    goto/16 :goto_2d

    :cond_136
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v3, v6

    if-lt v3, v11, :cond_186

    if-gt v3, v12, :cond_186

    add-int/lit8 v0, v0, 0x1

    array-length v6, v5

    if-lt v4, v6, :cond_184

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    move v6, v2

    :goto_150
    add-int/lit8 v4, v6, 0x1

    aput-char v3, v5, v6

    goto/16 :goto_7d

    :cond_156
    const-string v0, "expected a digit for number exponent"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v5

    goto/16 :goto_bd

    :cond_15e
    const-string v0, "expected a digit for number exponent"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    move-object v5, v3

    move v3, v2

    goto/16 :goto_e3

    :cond_168
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v10, v7, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v7

    goto/16 :goto_e3

    :cond_174
    move v2, v3

    move v1, v0

    move v0, v6

    goto :goto_108

    :cond_178
    move v0, v4

    goto/16 :goto_cd

    :cond_17b
    move v7, v5

    move v0, v4

    move-object v5, v3

    move v3, v2

    goto/16 :goto_e5

    :cond_181
    move v1, v0

    move v0, v6

    goto :goto_10f

    :cond_184
    move v6, v4

    goto :goto_150

    :cond_186
    move v6, v7

    goto/16 :goto_8a

    :cond_189
    move v8, v2

    move v6, v7

    move-object v3, v4

    move v13, v5

    move v5, v0

    move v0, v13

    goto/16 :goto_96

    :cond_191
    move v7, v2

    move v9, v5

    move v5, v0

    move v0, v4

    move-object v4, v3

    goto/16 :goto_53

    :cond_198
    move v0, v2

    goto/16 :goto_13
.end method


# virtual methods
.method protected final _closeInput()V
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    :cond_1c
    return-void
.end method

.method protected final _decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .registers 10

    const/4 v7, 0x3

    const/16 v6, 0x22

    const/4 v5, -0x2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v2

    :cond_8
    :goto_8
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    :cond_11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v0, v1

    const/16 v0, 0x20

    if-le v1, v0, :cond_8

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    if-gez v0, :cond_33

    if-ne v1, v6, :cond_2c

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    :goto_2b
    return-object v0

    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    if-ltz v0, :cond_8

    :cond_33
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v3, :cond_3c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    :cond_3c
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v1, v3

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v1

    if-gez v1, :cond_51

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v3, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v1

    :cond_51
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_5d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    :cond_5d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v0, v3

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    if-gez v0, :cond_c6

    if-eq v0, v5, :cond_86

    if-ne v3, v6, :cond_81

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_81

    shr-int/lit8 v0, v1, 0x4

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto :goto_2b

    :cond_81
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    :cond_86
    if-ne v0, v5, :cond_c6

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_91

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    :cond_91
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v3

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v3

    if-nez v3, :cond_bf

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected padding character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v7, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_bf
    shr-int/lit8 v0, v1, 0x4

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_8

    :cond_c6
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_d2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    :cond_d2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v0, v3

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    if-gez v0, :cond_104

    if-eq v0, v5, :cond_fb

    if-ne v3, v6, :cond_f7

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_f7

    shr-int/lit8 v0, v1, 0x2

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_2b

    :cond_f7
    invoke-virtual {p0, p1, v3, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    :cond_fb
    if-ne v0, v5, :cond_104

    shr-int/lit8 v0, v1, 0x2

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_8

    :cond_104
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_8
.end method

.method protected final _decodeEscaped()C
    .registers 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_12

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v2

    sparse-switch v0, :sswitch_data_66

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    :goto_23
    :sswitch_23
    return v0

    :sswitch_24
    const/16 v0, 0x8

    goto :goto_23

    :sswitch_27
    const/16 v0, 0x9

    goto :goto_23

    :sswitch_2a
    const/16 v0, 0xa

    goto :goto_23

    :sswitch_2d
    const/16 v0, 0xc

    goto :goto_23

    :sswitch_30
    const/16 v0, 0xd

    goto :goto_23

    :sswitch_33
    move v0, v1

    :goto_34
    const/4 v2, 0x4

    if-ge v0, v2, :cond_63

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_48

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_48
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    invoke-static {v2}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v3

    if-gez v3, :cond_5d

    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_5d
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_63
    int-to-char v0, v1

    goto :goto_23

    nop

    :sswitch_data_66
    .sparse-switch
        0x22 -> :sswitch_23
        0x2f -> :sswitch_23
        0x5c -> :sswitch_23
        0x62 -> :sswitch_24
        0x66 -> :sswitch_2d
        0x6e -> :sswitch_2a
        0x72 -> :sswitch_30
        0x74 -> :sswitch_27
        0x75 -> :sswitch_33
    .end sparse-switch
.end method

.method protected final _finishString()V
    .registers 7

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_2f

    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v2

    array-length v3, v2

    :cond_b
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v4, v4, v0

    if-ge v4, v3, :cond_2b

    aget v5, v2, v4

    if-eqz v5, :cond_2b

    const/16 v1, 0x22

    if-ne v4, v1, :cond_2f

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    :goto_2a
    return-void

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_b

    :cond_2f
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy([CII)V

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString2()V

    goto :goto_2a
.end method

.method protected final _finishString2()V
    .registers 8

    const/16 v6, 0x5c

    const/16 v5, 0x22

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    :goto_10
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_21

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_21
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    if-gt v2, v6, :cond_33

    if-ne v2, v6, :cond_43

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v2

    :cond_33
    :goto_33
    array-length v3, v1

    if-lt v0, v3, :cond_57

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    move v3, v0

    :goto_3e
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_10

    :cond_43
    if-gt v2, v5, :cond_33

    if-eq v2, v5, :cond_51

    const/16 v3, 0x20

    if-ge v2, v3, :cond_33

    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_33

    :cond_51
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    return-void

    :cond_57
    move v3, v0

    goto :goto_3e
.end method

.method protected final _getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_1b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method protected final _handleApostropheValue()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 8

    const/16 v6, 0x5c

    const/16 v5, 0x27

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    :goto_10
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_21

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_21
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    if-gt v2, v6, :cond_33

    if-ne v2, v6, :cond_43

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v2

    :cond_33
    :goto_33
    array-length v3, v1

    if-lt v0, v3, :cond_59

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    move v3, v0

    :goto_3e
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_10

    :cond_43
    if-gt v2, v5, :cond_33

    if-eq v2, v5, :cond_51

    const/16 v3, 0x20

    if-ge v2, v3, :cond_33

    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_33

    :cond_51
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_59
    move v3, v0

    goto :goto_3e
.end method

.method protected final _handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 11

    const/4 v7, 0x3

    const-wide/high16 v3, 0x7ff0

    const-wide/high16 v1, -0x10

    const/16 v0, 0x49

    if-ne p1, v0, :cond_59

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v5, :cond_18

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOFInValue()V

    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char p1, v0, v5

    const/16 v0, 0x4e

    if-ne p1, v0, :cond_60

    if-eqz p2, :cond_3c

    const-string v0, "-INF"

    :goto_2a
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    sget-object v5, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_41

    if-eqz p2, :cond_3f

    :goto_37
    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_3b
    return-object v0

    :cond_3c
    const-string v0, "+INF"

    goto :goto_2a

    :cond_3f
    move-wide v1, v3

    goto :goto_37

    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-standard token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    :cond_59
    :goto_59
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3b

    :cond_60
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_59

    if-eqz p2, :cond_7a

    const-string v0, "-Infinity"

    :goto_68
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    sget-object v5, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_7f

    if-eqz p2, :cond_7d

    :goto_75
    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_3b

    :cond_7a
    const-string v0, "+Infinity"

    goto :goto_68

    :cond_7d
    move-wide v1, v3

    goto :goto_75

    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-standard token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_59
.end method

.method protected final _handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 5

    sparse-switch p1, :sswitch_data_54

    :cond_3
    :goto_3
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :sswitch_a
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleApostropheValue()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_9

    :sswitch_17
    const-string v0, "NaN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "NaN"

    const-wide/high16 v1, 0x7ff8

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_9

    :cond_2e
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_34
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_43

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOFInValue()V

    :cond_43
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_9

    nop

    :sswitch_data_54
    .sparse-switch
        0x27 -> :sswitch_a
        0x2b -> :sswitch_34
        0x4e -> :sswitch_17
    .end sparse-switch
.end method

.method protected final _handleUnusualFieldName(I)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x27

    if-ne p1, v0, :cond_11

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseApostropheFieldName()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_1e
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1JsNames()[I

    move-result-object v2

    array-length v3, v2

    if-ge p1, v3, :cond_5d

    aget v0, v2, p1

    if-nez v0, :cond_5b

    const/16 v0, 0x30

    if-lt p1, v0, :cond_31

    const/16 v0, 0x39

    if-le p1, v0, :cond_5b

    :cond_31
    const/4 v0, 0x1

    :goto_32
    if-nez v0, :cond_39

    const-string v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_39
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v4, :cond_81

    :cond_41
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v5, v5, v1

    if-ge v5, v3, :cond_63

    aget v6, v2, v5

    if-eqz v6, :cond_7a

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_5b
    const/4 v0, 0x0

    goto :goto_32

    :cond_5d
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    goto :goto_32

    :cond_63
    int-to-char v6, v5

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_7a

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_7a
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_41

    :cond_81
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v3, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0, v3, v0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseUnusualFieldName2(II[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method protected final _matchToken(Ljava/lang/String;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_5
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_14

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOFInValue()V

    :cond_14
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_29

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_5

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_40

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_3f

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3f

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method protected final _parseApostropheFieldName()Ljava/lang/String;
    .registers 9

    const/16 v7, 0x27

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_32

    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v3

    array-length v4, v3

    :cond_f
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v5, v5, v1

    if-ne v5, v7, :cond_25

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    if-ge v5, v4, :cond_2b

    aget v6, v3, v5

    if-nez v6, :cond_32

    :cond_2b
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_f

    :cond_32
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0, v2, v0, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method protected final _parseFieldName(I)Ljava/lang/String;
    .registers 10

    const/16 v7, 0x22

    if-eq p1, v7, :cond_9

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleUnusualFieldName(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_39

    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v3

    array-length v4, v3

    :cond_16
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v5, v5, v1

    if-ge v5, v4, :cond_32

    aget v6, v3, v5

    if-eqz v6, :cond_32

    if-ne v5, v7, :cond_39

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_32
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_16

    :cond_39
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0, v2, v0, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method protected final _releaseBuffers()V
    .registers 3

    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseTokenBuffer([C)V

    :cond_f
    return-void
.end method

.method protected final _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_5
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_11
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected final _skipCR()V
    .registers 3

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    :cond_1c
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    return-void
.end method

.method protected final _skipLF()V
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    return-void
.end method

.method protected final _skipString()V
    .registers 8

    const/16 v6, 0x5c

    const/16 v5, 0x22

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    :goto_d
    if-lt v1, v0, :cond_20

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_1c
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    :cond_20
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    if-gt v1, v6, :cond_44

    if-ne v1, v6, :cond_32

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    goto :goto_d

    :cond_32
    if-gt v1, v5, :cond_44

    if-ne v1, v5, :cond_39

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    return-void

    :cond_39
    const/16 v4, 0x20

    if-ge v1, v4, :cond_44

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    const-string v4, "string value"

    invoke-virtual {p0, v1, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_44
    move v1, v2

    goto :goto_d
.end method

.method public final close()V
    .registers 2

    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->close()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->release()V

    return-void
.end method

.method public final getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    if-nez v0, :cond_2a

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    :cond_2a
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_5d

    :try_start_2e
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_34} :catch_3a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    return-object v0

    :catch_3a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    :cond_5d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;Lcom/fasterxml/jackson/core/Base64Variant;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    goto :goto_37
.end method

.method public final getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public final getEmbeddedObject()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getNextChar(Ljava/lang/String;)C
    .registers 5

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public final getTextCharacters()[C
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_58

    sget-object v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    :goto_18
    return-object v0

    :pswitch_19
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    :cond_3b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    goto :goto_18

    :cond_3e
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_33

    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    goto :goto_33

    :pswitch_48
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_51

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    :cond_51
    :pswitch_51
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    goto :goto_18

    :cond_58
    const/4 v0, 0x0

    goto :goto_18

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_19
        :pswitch_48
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method public final getTextLength()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    :cond_19
    :goto_19
    return v0

    :pswitch_1a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_19

    :pswitch_25
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_2e

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    :cond_2e
    :pswitch_2e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    goto :goto_19

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_25
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public final getTextOffset()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    :cond_12
    :goto_12
    :pswitch_12
    return v0

    :pswitch_13
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1c

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    :cond_1c
    :pswitch_1c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v0

    goto :goto_12

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final getValueAsString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public final getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method protected final loadMore()Z
    .registers 6

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-lez v1, :cond_27

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    const/4 v0, 0x1

    :cond_26
    return v0

    :cond_27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_closeInput()V

    if-nez v1, :cond_26

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 10

    const/4 v1, 0x0

    const/16 v8, 0x7d

    const/16 v7, 0x5d

    const/4 v6, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_numTypesValid:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_14

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipString()V

    :cond_1b
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd()I

    move-result v0

    if-gez v0, :cond_28

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->close()V

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v0, v1

    goto :goto_13

    :cond_28
    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputTotal:J

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    if-ne v0, v7, :cond_5c

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    :cond_4f
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_13

    :cond_5c
    if-ne v0, v8, :cond_76

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_69

    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    :cond_69
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_13

    :cond_76
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v1

    if-eqz v1, :cond_a4

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_a0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_a0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

    move-result v0

    :cond_a4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFieldName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_c6

    const-string v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_c6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

    move-result v0

    :cond_ca
    sparse-switch v0, :sswitch_data_126

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_d1
    if-eqz v1, :cond_122

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_13

    :sswitch_d9
    iput-boolean v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_d1

    :sswitch_de
    if-nez v1, :cond_ec

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    :cond_ec
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_d1

    :sswitch_ef
    if-nez v1, :cond_fd

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    :cond_fd
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_d1

    :sswitch_100
    const-string v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :sswitch_105
    const-string v0, "true"

    invoke-virtual {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_d1

    :sswitch_10d
    const-string v0, "false"

    invoke-virtual {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_d1

    :sswitch_115
    const-string v0, "null"

    invoke-virtual {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_d1

    :sswitch_11d
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->parseNumberText(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_d1

    :cond_122
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_13

    :sswitch_data_126
    .sparse-switch
        0x22 -> :sswitch_d9
        0x2d -> :sswitch_11d
        0x30 -> :sswitch_11d
        0x31 -> :sswitch_11d
        0x32 -> :sswitch_11d
        0x33 -> :sswitch_11d
        0x34 -> :sswitch_11d
        0x35 -> :sswitch_11d
        0x36 -> :sswitch_11d
        0x37 -> :sswitch_11d
        0x38 -> :sswitch_11d
        0x39 -> :sswitch_11d
        0x5b -> :sswitch_de
        0x5d -> :sswitch_100
        0x66 -> :sswitch_10d
        0x6e -> :sswitch_115
        0x74 -> :sswitch_105
        0x7b -> :sswitch_ef
        0x7d -> :sswitch_100
    .end sparse-switch
.end method

.method protected final parseNumberText(I)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 15

    const/16 v11, 0x2d

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v10, 0x39

    const/16 v9, 0x30

    if-ne p1, v11, :cond_28

    move v0, v1

    :goto_b
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, -0x1

    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-eqz v0, :cond_2a

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v4, v3, :cond_a8

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v3, v4, 0x1

    aget-char p1, v6, v4

    if-gt p1, v10, :cond_21

    if-ge p1, v9, :cond_2b

    :cond_21
    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    move v0, v2

    goto :goto_b

    :cond_2a
    move v3, v4

    :cond_2b
    if-eq p1, v9, :cond_a8

    :goto_2d
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v3, v4, :cond_a8

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v6, v3

    if-lt v3, v9, :cond_3f

    if-gt v3, v10, :cond_3f

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_2d

    :cond_3f
    const/16 v6, 0x2e

    if-ne v3, v6, :cond_ba

    move v3, v2

    move v6, v4

    :goto_45
    if-ge v6, v7, :cond_a8

    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v4, v6, 0x1

    aget-char v6, v8, v6

    if-lt v6, v9, :cond_55

    if-gt v6, v10, :cond_55

    add-int/lit8 v3, v3, 0x1

    move v6, v4

    goto :goto_45

    :cond_55
    if-nez v3, :cond_5c

    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, v6, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_5c
    move v12, v3

    move v3, v4

    move v4, v6

    move v6, v12

    :goto_60
    const/16 v8, 0x65

    if-eq v4, v8, :cond_68

    const/16 v8, 0x45

    if-ne v4, v8, :cond_97

    :cond_68
    if-ge v3, v7, :cond_a8

    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v8, v3

    if-eq v3, v11, :cond_76

    const/16 v8, 0x2b

    if-ne v3, v8, :cond_b6

    :cond_76
    if-ge v4, v7, :cond_a8

    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v3, v4, 0x1

    aget-char v4, v8, v4

    :goto_7e
    if-gt v4, v10, :cond_90

    if-lt v4, v9, :cond_90

    add-int/lit8 v2, v2, 0x1

    if-ge v3, v7, :cond_a8

    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v8, v3

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_7e

    :cond_90
    if-nez v2, :cond_97

    const-string v7, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v4, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_97
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v3, v5

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    invoke-virtual {v4, v7, v5, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    invoke-virtual {p0, v0, v1, v6, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reset(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_27

    :cond_a8
    if-eqz v0, :cond_b4

    add-int/lit8 v1, v5, 0x1

    :goto_ac
    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->parseNumberText2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto/16 :goto_27

    :cond_b4
    move v1, v5

    goto :goto_ac

    :cond_b6
    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_7e

    :cond_ba
    move v6, v2

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_60
.end method
