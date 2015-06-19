.class final Lcom/google/common/base/Equivalence$Identity;
.super Lcom/google/common/base/Equivalence;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Equivalence",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/base/Equivalence$Identity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/Equivalence$Identity;

    invoke-direct {v0}, Lcom/google/common/base/Equivalence$Identity;-><init>()V

    sput-object v0, Lcom/google/common/base/Equivalence$Identity;->a:Lcom/google/common/base/Equivalence$Identity;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
