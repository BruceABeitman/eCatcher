.class public final Lcom/mato/sdk/a/b$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mato/sdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mato/sdk/a/b$d;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/mato/sdk/a/b$d;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/mato/sdk/a/b$d;->a:[Ljava/lang/String;

    return-object v0
.end method
