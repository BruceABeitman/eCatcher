.class public Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/duration/impl/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChineseDigits"
.end annotation


# static fields
.field public static final DEBUG:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final KOREAN:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final SIMPLIFIED:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final TRADITIONAL:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;


# instance fields
.field final digits:[C

.field final ko:Z

.field final levels:[C

.field final liang:C

.field final units:[C


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x0

    new-instance v0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

    const-string v1, "0123456789s"

    const-string v2, "sbq"

    const-string v3, "WYZ"

    const/16 v4, 0x4c

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->DEBUG:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

    new-instance v0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

    const-string v1, "\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    const-string v2, "\u5341\u767e\u5343"

    const-string v3, "\u842c\u5104\u5146"

    const/16 v4, 0x5169

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->TRADITIONAL:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

    new-instance v0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

    const-string v1, "\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    const-string v2, "\u5341\u767e\u5343"

    const-string v3, "\u4e07\u4ebf\u5146"

    const/16 v4, 0x4e24

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->SIMPLIFIED:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

    new-instance v0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

    const-string v1, "\uc601\uc77c\uc774\uc0bc\uc0ac\uc624\uc721\uce60\ud314\uad6c\uc2ed"

    const-string v2, "\uc2ed\ubc31\ucc9c"

    const-string v3, "\ub9cc\uc5b5?"

    const v4, 0xc774

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->KOREAN:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->levels:[C

    iput-char p4, p0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    iput-boolean p5, p0, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->ko:Z

    return-void
.end method
