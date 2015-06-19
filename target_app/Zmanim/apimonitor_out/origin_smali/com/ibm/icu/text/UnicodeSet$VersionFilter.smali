.class Lcom/ibm/icu/text/UnicodeSet$VersionFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionFilter"
.end annotation


# instance fields
.field version:Lcom/ibm/icu/util/VersionInfo;


# direct methods
.method constructor <init>(Lcom/ibm/icu/util/VersionInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet$VersionFilter;->version:Lcom/ibm/icu/util/VersionInfo;

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 4

    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getAge(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet;->NO_VERSION:Lcom/ibm/icu/util/VersionInfo;

    if-eq v0, v1, :cond_12

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$VersionFilter;->version:Lcom/ibm/icu/util/VersionInfo;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/VersionInfo;->compareTo(Lcom/ibm/icu/util/VersionInfo;)I

    move-result v1

    if-gtz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method
