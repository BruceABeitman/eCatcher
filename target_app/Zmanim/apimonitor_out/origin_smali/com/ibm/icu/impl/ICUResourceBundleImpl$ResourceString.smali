.class final Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;
.super Lcom/ibm/icu/impl/ICUResourceBundle;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResourceString"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
    .registers 7

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;-><init>()V

    invoke-static {p0, p5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->assign(Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/impl/ICUResourceBundle;)V

    invoke-virtual {p0, p3, p4}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->getStringValue(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->resource:J

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->resPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    return-object v0
.end method
