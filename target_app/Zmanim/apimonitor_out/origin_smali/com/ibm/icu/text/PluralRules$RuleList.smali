.class interface abstract Lcom/ibm/icu/text/PluralRules$RuleList;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "RuleList"
.end annotation


# virtual methods
.method public abstract getKeywords()Ljava/util/Set;
.end method

.method public abstract getRepeatLimit()I
.end method

.method public abstract select(D)Ljava/lang/String;
.end method
