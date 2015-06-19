.class Lcom/googlecode/javacpp/Parser$Token;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# static fields
.field static final CLASS:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final COMMENT:I = 0x4

.field static final CONST:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final DEFINE:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final ELIF:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final ELSE:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final ENDIF:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final ENUM:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final EOF:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final EXTERN:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final FLOAT:I = 0x2

.field static final IDENTIFIER:I = 0x5

.field static final IF:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final IFDEF:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final IFNDEF:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final INLINE:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final INTEGER:I = 0x1

.field static final STATIC:Lcom/googlecode/javacpp/Parser$Token; = null

.field static final STRING:I = 0x3

.field static final STRUCT:Lcom/googlecode/javacpp/Parser$Token;

.field static final TEMPLATE:Lcom/googlecode/javacpp/Parser$Token;

.field static final TYPEDEF:Lcom/googlecode/javacpp/Parser$Token;

.field static final TYPENAME:Lcom/googlecode/javacpp/Parser$Token;

.field static final UNION:Lcom/googlecode/javacpp/Parser$Token;


# instance fields
.field file:Ljava/io/File;

.field lineNumber:I

.field spacing:Ljava/lang/String;

.field type:I

.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x5

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    invoke-direct {v0}, Lcom/googlecode/javacpp/Parser$Token;-><init>()V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "const"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->CONST:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "define"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->DEFINE:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "if"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->IF:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "ifdef"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->IFDEF:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "ifndef"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->IFNDEF:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "elif"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->ELIF:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "else"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->ELSE:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "endif"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->ENDIF:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "enum"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->ENUM:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "extern"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->EXTERN:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "inline"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->INLINE:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "static"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->STATIC:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "class"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->CLASS:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "struct"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->STRUCT:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "union"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->UNION:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "template"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->TEMPLATE:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "typedef"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->TYPEDEF:Lcom/googlecode/javacpp/Parser$Token;

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    const-string v1, "typename"

    invoke-direct {v0, v2, v1}, Lcom/googlecode/javacpp/Parser$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/googlecode/javacpp/Parser$Token;->TYPENAME:Lcom/googlecode/javacpp/Parser$Token;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Token;->file:Ljava/io/File;

    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacpp/Parser$Token;->lineNumber:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Token;->file:Ljava/io/File;

    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacpp/Parser$Token;->lineNumber:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    iput p1, p0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    iput-object p2, p0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/googlecode/javacpp/Parser$Token;
    .registers 3

    new-instance v0, Lcom/googlecode/javacpp/Parser$Token;

    invoke-direct {v0}, Lcom/googlecode/javacpp/Parser$Token;-><init>()V

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Token;->file:Ljava/io/File;

    iput-object v1, v0, Lcom/googlecode/javacpp/Parser$Token;->file:Ljava/io/File;

    iget v1, p0, Lcom/googlecode/javacpp/Parser$Token;->lineNumber:I

    iput v1, v0, Lcom/googlecode/javacpp/Parser$Token;->lineNumber:I

    iget v1, p0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    iput v1, v0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    iput-object v1, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Token;->clone()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_1d

    iget v3, p0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Character;

    if-ne v3, v4, :cond_31

    iget v3, p0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4

    :cond_31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_40

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_6b

    move-object v0, p1

    check-cast v0, Lcom/googlecode/javacpp/Parser$Token;

    iget v3, p0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    iget v4, v0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    if-ne v3, v4, :cond_69

    iget-object v3, p0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    if-nez v3, :cond_5b

    iget-object v3, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    if-eqz v3, :cond_4

    :cond_5b
    iget-object v3, p0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    if-eqz v3, :cond_69

    iget-object v3, p0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_69
    move v1, v2

    goto :goto_4

    :cond_6b
    move v1, v2

    goto :goto_4
.end method

.method varargs expect([Ljava/lang/Object;)Lcom/googlecode/javacpp/Parser$Token;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Lcom/googlecode/javacpp/Parser$Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/googlecode/javacpp/Parser$Token;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/javacpp/Parser$Token;->lineNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Unexpected token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Token;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/googlecode/javacpp/Parser$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    return v0
.end method

.method isEmpty()Z
    .registers 3

    iget v0, p0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method varargs match([Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_16

    aget-object v4, v0, v2

    if-nez v1, :cond_10

    invoke-virtual {p0, v4}, Lcom/googlecode/javacpp/Parser$Token;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_10
    const/4 v1, 0x1

    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    const/4 v1, 0x0

    goto :goto_11

    :cond_16
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    iget v0, p0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
