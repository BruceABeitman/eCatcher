.class final Lcom/ibm/icu/text/PluralRules$2;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Lcom/ibm/icu/text/PluralRules$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4eca8753bada1885L


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appliesTo(D)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .registers 2

    const-string v0, "other"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "(other)"

    return-object v0
.end method

.method public updateRepeatLimit(I)I
    .registers 2

    return p1
.end method