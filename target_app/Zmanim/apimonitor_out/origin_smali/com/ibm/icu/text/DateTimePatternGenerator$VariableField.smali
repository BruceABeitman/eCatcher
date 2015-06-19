.class public Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableField"
.end annotation


# instance fields
.field private final canonicalIndex:I

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #calls: Lcom/ibm/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I
    invoke-static {p1, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$300(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    iget v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    if-gez v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal datetime field:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$700(Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;)I
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->getCanonicalIndex()I

    move-result v0

    return v0
.end method

.method private getCanonicalIndex()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    return v0
.end method


# virtual methods
.method public getType()I
    .registers 3

    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$400()[[I

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    return-object v0
.end method
