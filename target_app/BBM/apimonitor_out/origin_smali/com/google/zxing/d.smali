.class public final Lcom/google/zxing/d;
.super Lcom/google/zxing/l;
.source "ChecksumException.java"


# static fields
.field private static final a:Lcom/google/zxing/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/zxing/d;

    invoke-direct {v0}, Lcom/google/zxing/d;-><init>()V

    sput-object v0, Lcom/google/zxing/d;->a:Lcom/google/zxing/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/l;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/zxing/d;
    .registers 1

    sget-object v0, Lcom/google/zxing/d;->a:Lcom/google/zxing/d;

    return-object v0
.end method
