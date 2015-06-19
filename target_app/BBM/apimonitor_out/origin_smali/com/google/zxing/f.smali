.class public final Lcom/google/zxing/f;
.super Lcom/google/zxing/l;
.source "FormatException.java"


# static fields
.field private static final a:Lcom/google/zxing/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/zxing/f;

    invoke-direct {v0}, Lcom/google/zxing/f;-><init>()V

    sput-object v0, Lcom/google/zxing/f;->a:Lcom/google/zxing/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/l;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/zxing/f;
    .registers 1

    sget-object v0, Lcom/google/zxing/f;->a:Lcom/google/zxing/f;

    return-object v0
.end method
