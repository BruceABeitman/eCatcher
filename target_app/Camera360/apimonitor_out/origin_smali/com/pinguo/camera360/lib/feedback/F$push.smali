.class public final enum Lcom/pinguo/camera360/lib/feedback/F$push;
.super Ljava/lang/Enum;
.source "F.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/feedback/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "push"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/lib/feedback/F$push;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/lib/feedback/F$push;

.field public static final enum push_application_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

.field public static final enum push_application_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

.field public static final enum push_camera_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

.field public static final enum push_camera_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

.field public static final enum push_dialog_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

.field public static final enum push_dialog_later:Lcom/pinguo/camera360/lib/feedback/F$push;

.field public static final enum push_dialog_now:Lcom/pinguo/camera360/lib/feedback/F$push;

.field public static final enum push_dialog_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

.field public static final enum push_web_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

.field public static final enum push_web_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

.field public static final enum pushid:Lcom/pinguo/camera360/lib/feedback/F$push;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    const-string/jumbo v1, "push_web_receive"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/lib/feedback/F$push;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->push_web_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    const-string/jumbo v1, "push_web_hit"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/lib/feedback/F$push;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->push_web_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    const-string/jumbo v1, "push_dialog_receive"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/lib/feedback/F$push;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    const-string/jumbo v1, "push_dialog_hit"

    invoke-direct {v0, v1, v6}, Lcom/pinguo/camera360/lib/feedback/F$push;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    const-string/jumbo v1, "push_dialog_now"

    invoke-direct {v0, v1, v7}, Lcom/pinguo/camera360/lib/feedback/F$push;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_now:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    const-string/jumbo v1, "push_dialog_later"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/F$push;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_later:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    const-string/jumbo v1, "push_application_receive"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/F$push;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->push_application_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    const-string/jumbo v1, "push_application_hit"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/F$push;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->push_application_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    const-string/jumbo v1, "push_camera_receive"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/F$push;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->push_camera_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    const-string/jumbo v1, "push_camera_hit"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/F$push;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->push_camera_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    const-string/jumbo v1, "pushid"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/F$push;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/pinguo/camera360/lib/feedback/F$push;

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$push;->push_web_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$push;->push_web_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_now:Lcom/pinguo/camera360/lib/feedback/F$push;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_later:Lcom/pinguo/camera360/lib/feedback/F$push;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$push;->push_application_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$push;->push_application_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$push;->push_camera_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$push;->push_camera_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/feedback/F$push;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/lib/feedback/F$push;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/feedback/F$push;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/lib/feedback/F$push;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$push;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/feedback/F$push;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
