.class public final enum Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;
.super Ljava/lang/Enum;
.source "PuzzlePopupLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

.field public static final enum MIRROR:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

.field public static final enum REPLACE:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

.field public static final enum ROTATE:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    const-string/jumbo v1, "REPLACE"

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->REPLACE:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    new-instance v0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    const-string/jumbo v1, "MIRROR"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->MIRROR:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    new-instance v0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    const-string/jumbo v1, "ROTATE"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->ROTATE:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->REPLACE:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->MIRROR:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->ROTATE:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->ENUM$VALUES:[Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->ENUM$VALUES:[Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
