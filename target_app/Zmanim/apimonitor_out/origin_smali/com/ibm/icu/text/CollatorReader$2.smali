.class final Lcom/ibm/icu/text/CollatorReader$2;
.super Ljava/lang/Object;
.source "CollatorReader.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CollatorReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-byte v0, p1, v2

    invoke-static {}, Lcom/ibm/icu/text/CollatorReader;->access$100()[B

    move-result-object v1

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_18

    aget-byte v0, p1, v3

    invoke-static {}, Lcom/ibm/icu/text/CollatorReader;->access$100()[B

    move-result-object v1

    aget-byte v1, v1, v3

    if-lt v0, v1, :cond_18

    move v0, v3

    :goto_17
    return v0

    :cond_18
    move v0, v2

    goto :goto_17
.end method
