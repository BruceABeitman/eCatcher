.class final enum Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
.super Ljava/lang/Enum;
.source "AlbumActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ABPopupMenuState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

.field public static final enum IDLE:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

.field public static final enum RECEIVER:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

.field public static final enum SELECTER:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

.field public static final enum SENDER:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

.field public static final enum SENDER_IN_SELECTION:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->IDLE:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    const-string/jumbo v1, "SENDER"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->SENDER:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    const-string/jumbo v1, "SENDER_IN_SELECTION"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->SENDER_IN_SELECTION:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    const-string/jumbo v1, "RECEIVER"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->RECEIVER:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    const-string/jumbo v1, "SELECTER"

    invoke-direct {v0, v1, v6}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->SELECTER:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    sget-object v1, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->IDLE:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->SENDER:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->SENDER_IN_SELECTION:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->RECEIVER:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->SELECTER:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->ENUM$VALUES:[Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->ENUM$VALUES:[Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
