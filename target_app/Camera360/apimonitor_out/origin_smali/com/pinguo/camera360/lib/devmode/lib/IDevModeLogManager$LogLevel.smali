.class public final enum Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;
.super Ljava/lang/Enum;
.source "IDevModeLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

.field public static final enum ERROR:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

.field public static final enum FATAL:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

.field public static final enum INFO:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

.field public static final enum VERBOSE:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

.field public static final enum WARN:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    const-string/jumbo v1, "VERBOSE"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->VERBOSE:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    new-instance v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    const-string/jumbo v1, "DEBUG"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->DEBUG:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    new-instance v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    const-string/jumbo v1, "INFO"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->INFO:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    new-instance v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    const-string/jumbo v1, "WARN"

    invoke-direct {v0, v1, v6}, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->WARN:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    new-instance v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v7}, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->ERROR:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    new-instance v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    const-string/jumbo v1, "FATAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->FATAL:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    sget-object v1, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->VERBOSE:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->DEBUG:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->INFO:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->WARN:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->ERROR:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->FATAL:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
