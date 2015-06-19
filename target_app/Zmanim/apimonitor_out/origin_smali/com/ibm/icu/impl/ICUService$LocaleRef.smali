.class Lcom/ibm/icu/impl/ICUService$LocaleRef;
.super Ljava/lang/Object;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleRef"
.end annotation


# instance fields
.field private com:Ljava/util/Comparator;

.field private final locale:Lcom/ibm/icu/util/ULocale;

.field private ref:Ljava/lang/ref/SoftReference;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->locale:Lcom/ibm/icu/util/ULocale;

    iput-object p3, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->ref:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method get(Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    .registers 5

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->ref:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    if-eq v1, p2, :cond_22

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_22
    move-object v1, v0

    :goto_23
    return-object v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method
