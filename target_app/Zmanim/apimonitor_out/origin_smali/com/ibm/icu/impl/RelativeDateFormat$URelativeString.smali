.class public Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;
.super Ljava/lang/Object;
.source "RelativeDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/RelativeDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "URelativeString"
.end annotation


# instance fields
.field public offset:I

.field public string:Ljava/lang/String;

.field final synthetic this$0:Lcom/ibm/icu/impl/RelativeDateFormat;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/RelativeDateFormat;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->this$0:Lcom/ibm/icu/impl/RelativeDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    iput-object p3, p0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/RelativeDateFormat;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->this$0:Lcom/ibm/icu/impl/RelativeDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    iput-object p3, p0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    return-void
.end method
