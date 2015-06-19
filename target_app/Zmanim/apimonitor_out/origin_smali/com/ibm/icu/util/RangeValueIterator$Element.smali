.class public Lcom/ibm/icu/util/RangeValueIterator$Element;
.super Ljava/lang/Object;
.source "RangeValueIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/RangeValueIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Element"
.end annotation


# instance fields
.field public limit:I

.field public start:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
