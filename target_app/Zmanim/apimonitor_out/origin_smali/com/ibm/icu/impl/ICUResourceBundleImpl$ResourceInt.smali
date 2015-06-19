.class final Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;
.super Lcom/ibm/icu/impl/ICUResourceBundle;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResourceInt"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
    .registers 6

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;-><init>()V

    invoke-static {p0, p5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;->assign(Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/impl/ICUResourceBundle;)V

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;->resource:J

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;->resPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInt()I
    .registers 3

    iget-wide v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;->resource:J

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;->RES_GET_INT(J)I

    move-result v0

    return v0
.end method

.method public getUInt()I
    .registers 5

    iget-wide v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;->resource:J

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;->RES_GET_UINT(J)J

    move-result-wide v0

    long-to-int v2, v0

    return v2
.end method
