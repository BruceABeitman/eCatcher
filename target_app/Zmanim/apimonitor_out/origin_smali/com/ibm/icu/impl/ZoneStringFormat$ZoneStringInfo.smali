.class public Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
.super Ljava/lang/Object;
.source "ZoneStringFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ZoneStringFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoneStringInfo"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private str:Ljava/lang/String;

.field private type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->str:Ljava/lang/String;

    iput p3, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->type:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/ibm/icu/impl/ZoneStringFormat$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;)I
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getType()I

    move-result v0

    return v0
.end method

.method private getType()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->type:I

    return v0
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->str:Ljava/lang/String;

    return-object v0
.end method

.method public isDaylight()Z
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->type:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_c

    iget v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->type:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isGeneric()Z
    .registers 2

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->isStandard()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->isDaylight()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isStandard()Z
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->type:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_c

    iget v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->type:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
