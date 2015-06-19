.class public abstract Lcom/ibm/icu/text/UFormat;
.super Ljava/text/Format;
.source "UFormat.java"


# static fields
.field private static final serialVersionUID:J = -0x44e50edf26f8a240L


# instance fields
.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field private validLocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .registers 3

    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/ibm/icu/text/UFormat;->actualLocale:Lcom/ibm/icu/util/ULocale;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/text/UFormat;->validLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_6
.end method

.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_10

    move v0, v2

    :goto_5
    if-nez p2, :cond_8

    move v1, v2

    :cond_8
    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    move v0, v1

    goto :goto_5

    :cond_12
    iput-object p1, p0, Lcom/ibm/icu/text/UFormat;->validLocale:Lcom/ibm/icu/util/ULocale;

    iput-object p2, p0, Lcom/ibm/icu/text/UFormat;->actualLocale:Lcom/ibm/icu/util/ULocale;

    return-void
.end method
