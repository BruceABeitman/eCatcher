.class public final enum Lcom/lenovo/anyshare/sdk/internal/m$a;
.super Ljava/lang/Enum;
.source "IMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/anyshare/sdk/internal/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/lenovo/anyshare/sdk/internal/m$a;

.field public static final enum b:Lcom/lenovo/anyshare/sdk/internal/m$a;

.field private static final synthetic c:[Lcom/lenovo/anyshare/sdk/internal/m$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/m$a;

    const-string/jumbo v1, "SERVER"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/m$a;->a:Lcom/lenovo/anyshare/sdk/internal/m$a;

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/m$a;

    const-string/jumbo v1, "CLIENT"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/anyshare/sdk/internal/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/m$a;->b:Lcom/lenovo/anyshare/sdk/internal/m$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/anyshare/sdk/internal/m$a;

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/m$a;->a:Lcom/lenovo/anyshare/sdk/internal/m$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/m$a;->b:Lcom/lenovo/anyshare/sdk/internal/m$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/m$a;->c:[Lcom/lenovo/anyshare/sdk/internal/m$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/m$a;
    .registers 2

    const-class v0, Lcom/lenovo/anyshare/sdk/internal/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/m$a;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/anyshare/sdk/internal/m$a;
    .registers 1

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/m$a;->c:[Lcom/lenovo/anyshare/sdk/internal/m$a;

    invoke-virtual {v0}, [Lcom/lenovo/anyshare/sdk/internal/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/anyshare/sdk/internal/m$a;

    return-object v0
.end method
