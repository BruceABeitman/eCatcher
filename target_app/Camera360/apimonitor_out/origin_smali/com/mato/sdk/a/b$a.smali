.class public final Lcom/mato/sdk/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mato/sdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    sput v0, Lcom/mato/sdk/a/b$a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 1

    sget v0, Lcom/mato/sdk/a/b$a;->a:I

    return v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/mato/sdk/a/b$a;->a:I

    return-void
.end method
