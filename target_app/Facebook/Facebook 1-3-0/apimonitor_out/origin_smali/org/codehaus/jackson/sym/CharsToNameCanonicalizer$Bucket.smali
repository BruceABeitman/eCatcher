.class final Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field private final _symbol:Ljava/lang/String;

.field private final mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    iput-object p2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    return-void
.end method


# virtual methods
.method public find([CII)Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_21

    const/4 v2, 0x0

    :cond_e
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v2

    aget-char v4, p1, v4

    if-eq v3, v4, :cond_1c

    :goto_18
    if-ne v2, p3, :cond_21

    move-object v0, v1

    :goto_1b
    return-object v0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_e

    goto :goto_18

    :cond_21
    if-nez v0, :cond_25

    const/4 v0, 0x0

    goto :goto_1b

    :cond_25
    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getNext()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    move-result-object v0

    goto :goto_7
.end method

.method public getNext()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    return-object v0
.end method
