.class public final Lcom/google/a/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/m$a;,
        Lcom/google/a/m$b;
    }
.end annotation


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x1

.field private static c:I = 0x2

.field private static d:I = 0x3

.field private static e:I = 0x4

.field private static f:I = 0x5

.field private static g:I = 0x3

.field private static h:I = 0x7


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static a(II)I
    .registers 3

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static b(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
