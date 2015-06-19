.class Lcom/ibm/icu/impl/RelativeDateFormat$1;
.super Ljava/lang/Object;
.source "RelativeDateFormat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/RelativeDateFormat;->loadDates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/RelativeDateFormat;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/RelativeDateFormat;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat$1;->this$0:Lcom/ibm/icu/impl/RelativeDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    move-object v2, v0

    iget v3, v1, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    iget v4, v2, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    if-ne v3, v4, :cond_10

    const/4 v3, 0x0

    :goto_f
    return v3

    :cond_10
    iget v3, v1, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    iget v4, v2, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    if-ge v3, v4, :cond_18

    const/4 v3, -0x1

    goto :goto_f

    :cond_18
    const/4 v3, 0x1

    goto :goto_f
.end method
