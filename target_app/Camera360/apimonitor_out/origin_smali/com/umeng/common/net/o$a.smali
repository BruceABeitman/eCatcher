.class public final enum Lcom/umeng/common/net/o$a;
.super Ljava/lang/Enum;
.source "ReportResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/common/net/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/common/net/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/common/net/o$a;

.field public static final enum b:Lcom/umeng/common/net/o$a;

.field private static final synthetic c:[Lcom/umeng/common/net/o$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/umeng/common/net/o$a;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/umeng/common/net/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/common/net/o$a;->a:Lcom/umeng/common/net/o$a;

    new-instance v0, Lcom/umeng/common/net/o$a;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/umeng/common/net/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/common/net/o$a;

    sget-object v1, Lcom/umeng/common/net/o$a;->a:Lcom/umeng/common/net/o$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/common/net/o$a;->c:[Lcom/umeng/common/net/o$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/common/net/o$a;
    .registers 2

    const-class v0, Lcom/umeng/common/net/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/o$a;

    return-object v0
.end method

.method public static values()[Lcom/umeng/common/net/o$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/umeng/common/net/o$a;->c:[Lcom/umeng/common/net/o$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/common/net/o$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
