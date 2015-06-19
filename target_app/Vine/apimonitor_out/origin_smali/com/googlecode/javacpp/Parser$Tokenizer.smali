.class Lcom/googlecode/javacpp/Parser$Tokenizer;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tokenizer"
.end annotation


# instance fields
.field buffer:Ljava/lang/StringBuilder;

.field file:Ljava/io/File;

.field lastChar:I

.field lineNumber:I

.field lineSeparator:Ljava/lang/String;

.field reader:Ljava/io/Reader;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->reader:Ljava/io/Reader;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lineSeparator:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lastChar:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lineNumber:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->file:Ljava/io/File;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->reader:Ljava/io/Reader;

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->reader:Ljava/io/Reader;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lineSeparator:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lastChar:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lineNumber:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->reader:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public nextToken()Lcom/googlecode/javacpp/Parser$Token;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    const/16 v11, 0x2e

    const/16 v10, 0x22

    const/4 v9, -0x1

    const/16 v8, 0x2f

    new-instance v4, Lcom/googlecode/javacpp/Parser$Token;

    invoke-direct {v4}, Lcom/googlecode/javacpp/Parser$Token;-><init>()V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Tokenizer;->readChar()I

    move-result v0

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_22
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Tokenizer;->readChar()I

    move-result v0

    if-eq v0, v9, :cond_35

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_35
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->file:Ljava/io/File;

    iput-object v6, v4, Lcom/googlecode/javacpp/Parser$Token;->file:Ljava/io/File;

    iget v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lineNumber:I

    iput v6, v4, Lcom/googlecode/javacpp/Parser$Token;->lineNumber:I

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-nez v6, :cond_54

    const/16 v6, 0x5f

    if-ne v0, v6, :cond_86

    :cond_54
    const/4 v6, 0x5

    iput v6, v4, Lcom/googlecode/javacpp/Parser$Token;->type:I

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5d
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Tokenizer;->readChar()I

    move-result v0

    if-eq v0, v9, :cond_7a

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v6

    if-nez v6, :cond_73

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-nez v6, :cond_73

    const/16 v6, 0x5f

    if-ne v0, v6, :cond_7a

    :cond_73
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5d

    :cond_7a
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    iput v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lastChar:I

    :goto_84
    move-object v5, v4

    :goto_85
    return-object v5

    :cond_86
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v6

    if-nez v6, :cond_96

    if-eq v0, v11, :cond_96

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_96

    const/16 v6, 0x2b

    if-ne v0, v6, :cond_12d

    :cond_96
    if-ne v0, v11, :cond_f5

    const/4 v6, 0x2

    :goto_99
    iput v6, v4, Lcom/googlecode/javacpp/Parser$Token;->type:I

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_a2
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Tokenizer;->readChar()I

    move-result v0

    if-eq v0, v9, :cond_f7

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v6

    if-nez v6, :cond_e0

    if-eq v0, v11, :cond_e0

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_e0

    const/16 v6, 0x2b

    if-eq v0, v6, :cond_e0

    const/16 v6, 0x61

    if-lt v0, v6, :cond_c0

    const/16 v6, 0x66

    if-le v0, v6, :cond_e0

    :cond_c0
    const/16 v6, 0x6c

    if-eq v0, v6, :cond_e0

    const/16 v6, 0x75

    if-eq v0, v6, :cond_e0

    const/16 v6, 0x78

    if-eq v0, v6, :cond_e0

    const/16 v6, 0x41

    if-lt v0, v6, :cond_d4

    const/16 v6, 0x46

    if-le v0, v6, :cond_e0

    :cond_d4
    const/16 v6, 0x4c

    if-eq v0, v6, :cond_e0

    const/16 v6, 0x55

    if-eq v0, v6, :cond_e0

    const/16 v6, 0x58

    if-ne v0, v6, :cond_f7

    :cond_e0
    if-ne v0, v11, :cond_e5

    const/4 v6, 0x2

    iput v6, v4, Lcom/googlecode/javacpp/Parser$Token;->type:I

    :cond_e5
    const/16 v6, 0x75

    if-eq v0, v6, :cond_f3

    const/16 v6, 0x55

    if-eq v0, v6, :cond_f3

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f3
    move v2, v0

    goto :goto_a2

    :cond_f5
    const/4 v6, 0x1

    goto :goto_99

    :cond_f7
    const/16 v6, 0x66

    if-eq v2, v6, :cond_ff

    const/16 v6, 0x46

    if-ne v2, v6, :cond_102

    :cond_ff
    const/4 v6, 0x2

    iput v6, v4, Lcom/googlecode/javacpp/Parser$Token;->type:I

    :cond_102
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    iget v6, v4, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_129

    iget-object v6, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    const-string v7, "LL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_129

    iget-object v6, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    iget-object v7, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    :cond_129
    iput v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lastChar:I

    goto/16 :goto_84

    :cond_12d
    if-ne v0, v10, :cond_15b

    const/4 v6, 0x3

    iput v6, v4, Lcom/googlecode/javacpp/Parser$Token;->type:I

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_138
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Tokenizer;->readChar()I

    move-result v0

    if-eq v0, v9, :cond_14c

    const/16 v6, 0x5c

    if-eq v2, v6, :cond_144

    if-eq v0, v10, :cond_14c

    :cond_144
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v0

    goto :goto_138

    :cond_14c
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    goto/16 :goto_84

    :cond_15b
    if-ne v0, v8, :cond_1ce

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Tokenizer;->readChar()I

    move-result v0

    if-ne v0, v8, :cond_192

    const/4 v6, 0x4

    iput v6, v4, Lcom/googlecode/javacpp/Parser$Token;->type:I

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_170
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Tokenizer;->readChar()I

    move-result v0

    if-eq v0, v9, :cond_186

    const/16 v6, 0x5c

    if-eq v2, v6, :cond_17e

    const/16 v6, 0xa

    if-eq v0, v6, :cond_186

    :cond_17e
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v0

    goto :goto_170

    :cond_186
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    iput v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lastChar:I

    goto/16 :goto_84

    :cond_192
    const/16 v6, 0x2a

    if-ne v0, v6, :cond_1c8

    const/4 v6, 0x4

    iput v6, v4, Lcom/googlecode/javacpp/Parser$Token;->type:I

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1a5
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Tokenizer;->readChar()I

    move-result v0

    if-eq v0, v9, :cond_1b9

    const/16 v6, 0x2a

    if-ne v2, v6, :cond_1b1

    if-eq v0, v8, :cond_1b9

    :cond_1b1
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v0

    goto :goto_1a5

    :cond_1b9
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    goto/16 :goto_84

    :cond_1c8
    iput v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lastChar:I

    iput v8, v4, Lcom/googlecode/javacpp/Parser$Token;->type:I

    goto/16 :goto_84

    :cond_1ce
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_1e7

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Tokenizer;->readChar()I

    move-result v1

    const/16 v6, 0xa

    if-ne v1, v6, :cond_1e5

    iget-object v3, v4, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Tokenizer;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v4

    iput-object v3, v4, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object v5, v4

    goto/16 :goto_85

    :cond_1e5
    iput v1, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lastChar:I

    :cond_1e7
    iput v0, v4, Lcom/googlecode/javacpp/Parser$Token;->type:I

    goto/16 :goto_84
.end method

.method readChar()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v2, -0x1

    const/16 v4, 0xd

    iget v3, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lastChar:I

    if-eq v3, v2, :cond_f

    iget v0, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lastChar:I

    iput v2, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lastChar:I

    move v1, v0

    :goto_e
    return v1

    :cond_f
    iget-object v3, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v4, :cond_19

    if-ne v0, v5, :cond_39

    :cond_19
    iget v3, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lineNumber:I

    if-ne v0, v4, :cond_27

    iget-object v3, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v2

    :cond_27
    iget-object v3, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lineSeparator:Ljava/lang/String;

    if-nez v3, :cond_33

    if-ne v0, v4, :cond_3b

    if-ne v2, v5, :cond_3b

    const-string v3, "\r\n"

    :goto_31
    iput-object v3, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lineSeparator:Ljava/lang/String;

    :cond_33
    if-eq v2, v5, :cond_37

    iput v2, p0, Lcom/googlecode/javacpp/Parser$Tokenizer;->lastChar:I

    :cond_37
    const/16 v0, 0xa

    :cond_39
    move v1, v0

    goto :goto_e

    :cond_3b
    if-ne v0, v4, :cond_40

    const-string v3, "\r"

    goto :goto_31

    :cond_40
    const-string v3, "\n"

    goto :goto_31
.end method
