.class Lcom/ibm/icu/util/ULocale$IDParser$1;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/util/ULocale$IDParser;->getKeyComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/util/ULocale$IDParser;


# direct methods
.method constructor <init>(Lcom/ibm/icu/util/ULocale$IDParser;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/util/ULocale$IDParser$1;->this$0:Lcom/ibm/icu/util/ULocale$IDParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
