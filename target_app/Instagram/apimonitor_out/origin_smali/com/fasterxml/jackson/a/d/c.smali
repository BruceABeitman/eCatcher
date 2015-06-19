.class public abstract Lcom/fasterxml/jackson/a/d/c;
.super Lcom/fasterxml/jackson/a/a/a;
.source "JsonGeneratorImpl.java"


# static fields
.field protected static final f:[I


# instance fields
.field protected final g:Lcom/fasterxml/jackson/a/c/d;

.field protected h:[I

.field protected i:I

.field protected j:Lcom/fasterxml/jackson/a/c/c;

.field protected k:Lcom/fasterxml/jackson/a/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->f()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/d/c;->f:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/a/c/d;ILcom/fasterxml/jackson/a/s;)V
    .registers 5

    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/a/a/a;-><init>(ILcom/fasterxml/jackson/a/s;)V

    sget-object v0, Lcom/fasterxml/jackson/a/d/c;->f:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/c;->h:[I

    sget-object v0, Lcom/fasterxml/jackson/a/g/e;->a:Lcom/fasterxml/jackson/a/c/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/c;->k:Lcom/fasterxml/jackson/a/u;

    iput-object p1, p0, Lcom/fasterxml/jackson/a/d/c;->g:Lcom/fasterxml/jackson/a/c/d;

    sget-object v0, Lcom/fasterxml/jackson/a/i;->g:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/c;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/c;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/a/h;

    :cond_1a
    return-void
.end method


# virtual methods
.method public getCharacterEscapes()Lcom/fasterxml/jackson/a/c/c;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/c;->j:Lcom/fasterxml/jackson/a/c/c;

    return-object v0
.end method

.method public getHighestEscapedChar()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/a/d/c;->i:I

    return v0
.end method

.method public setCharacterEscapes(Lcom/fasterxml/jackson/a/c/c;)Lcom/fasterxml/jackson/a/h;
    .registers 3

    iput-object p1, p0, Lcom/fasterxml/jackson/a/d/c;->j:Lcom/fasterxml/jackson/a/c/c;

    if-nez p1, :cond_9

    sget-object v0, Lcom/fasterxml/jackson/a/d/c;->f:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/c;->h:[I

    :goto_8
    return-object p0

    :cond_9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/c/c;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/c;->h:[I

    goto :goto_8
.end method

.method public setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/a/h;
    .registers 2

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iput p1, p0, Lcom/fasterxml/jackson/a/d/c;->i:I

    return-object p0
.end method

.method public setRootValueSeparator(Lcom/fasterxml/jackson/a/u;)Lcom/fasterxml/jackson/a/h;
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/a/d/c;->k:Lcom/fasterxml/jackson/a/u;

    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/a/w;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/lang/Class;)Lcom/fasterxml/jackson/a/w;

    move-result-object v0

    return-object v0
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/d/c;->writeFieldName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/d/c;->writeString(Ljava/lang/String;)V

    return-void
.end method
