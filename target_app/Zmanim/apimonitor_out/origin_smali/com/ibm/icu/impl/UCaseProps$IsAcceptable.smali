.class final Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;
.super Ljava/lang/Object;
.source "UCaseProps.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCaseProps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IsAcceptable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCaseProps;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/UCaseProps;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;->this$0:Lcom/ibm/icu/impl/UCaseProps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/UCaseProps;Lcom/ibm/icu/impl/UCaseProps$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UCaseProps;)V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-byte v0, p1, v2

    if-ne v0, v3, :cond_13

    aget-byte v0, p1, v4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    if-ne v0, v4, :cond_13

    move v0, v3

    :goto_12
    return v0

    :cond_13
    move v0, v2

    goto :goto_12
.end method
