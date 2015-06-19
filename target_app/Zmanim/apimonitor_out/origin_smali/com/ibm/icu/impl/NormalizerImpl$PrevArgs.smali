.class final Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;
.super Ljava/lang/Object;
.source "NormalizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/NormalizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrevArgs"
.end annotation


# instance fields
.field c:C

.field c2:C

.field current:I

.field src:[C

.field start:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;-><init>()V

    return-void
.end method
