.class Lcom/facebook/katana/util/Entities$LookupEntityMap;
.super Lcom/facebook/katana/util/Entities$PrimitiveEntityMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/util/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LookupEntityMap"
.end annotation


# instance fields
.field private LOOKUP_TABLE_SIZE:I

.field private lookupTable:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/util/Entities$PrimitiveEntityMap;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/facebook/katana/util/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    return-void
.end method

.method private createLookupTable()V
    .registers 4

    iget v1, p0, Lcom/facebook/katana/util/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/katana/util/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_7
    iget v1, p0, Lcom/facebook/katana/util/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    if-lt v0, v1, :cond_c

    return-void

    :cond_c
    iget-object v1, p0, Lcom/facebook/katana/util/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/facebook/katana/util/Entities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private lookupTable()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/util/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/facebook/katana/util/Entities$LookupEntityMap;->createLookupTable()V

    :cond_7
    iget-object v0, p0, Lcom/facebook/katana/util/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public name(I)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/facebook/katana/util/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    if-ge p1, v0, :cond_b

    invoke-direct {p0}, Lcom/facebook/katana/util/Entities$LookupEntityMap;->lookupTable()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Lcom/facebook/katana/util/Entities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
