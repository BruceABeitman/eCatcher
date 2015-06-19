.class interface abstract Lcom/ibm/icu/text/PluralRules$Rule;
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
    name = "Rule"
.end annotation


# virtual methods
.method public abstract appliesTo(D)Z
.end method

.method public abstract getKeyword()Ljava/lang/String;
.end method

.method public abstract updateRepeatLimit(I)I
.end method
