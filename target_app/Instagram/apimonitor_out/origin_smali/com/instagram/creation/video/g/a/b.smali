.class public final enum Lcom/instagram/creation/video/g/a/b;
.super Ljava/lang/Enum;
.source "VideoCodecOpenGlColorFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/creation/video/g/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/creation/video/g/a/b;

.field public static final enum b:Lcom/instagram/creation/video/g/a/b;

.field private static final synthetic e:[Lcom/instagram/creation/video/g/a/b;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/instagram/creation/video/g/a/b;

    const-string v1, "RGBA"

    const-string v2, "rgba"

    const/16 v3, 0x1908

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/instagram/creation/video/g/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/instagram/creation/video/g/a/b;->a:Lcom/instagram/creation/video/g/a/b;

    new-instance v0, Lcom/instagram/creation/video/g/a/b;

    const-string v1, "BGRA"

    const-string v2, "bgra"

    const v3, 0x80e1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/instagram/creation/video/g/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/instagram/creation/video/g/a/b;->b:Lcom/instagram/creation/video/g/a/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/creation/video/g/a/b;

    sget-object v1, Lcom/instagram/creation/video/g/a/b;->a:Lcom/instagram/creation/video/g/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/creation/video/g/a/b;->b:Lcom/instagram/creation/video/g/a/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/creation/video/g/a/b;->e:[Lcom/instagram/creation/video/g/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/instagram/creation/video/g/a/b;->c:Ljava/lang/String;

    iput p4, p0, Lcom/instagram/creation/video/g/a/b;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/creation/video/g/a/b;
    .registers 2

    const-class v0, Lcom/instagram/creation/video/g/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/g/a/b;

    return-object v0
.end method

.method public static values()[Lcom/instagram/creation/video/g/a/b;
    .registers 1

    sget-object v0, Lcom/instagram/creation/video/g/a/b;->e:[Lcom/instagram/creation/video/g/a/b;

    invoke-virtual {v0}, [Lcom/instagram/creation/video/g/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/creation/video/g/a/b;

    return-object v0
.end method
