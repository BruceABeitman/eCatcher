.class public final enum Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
.super Ljava/lang/Enum;
.source "FacebookEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/FacebookEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RsvpStatusEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ATTENDING:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

.field public static final enum DECLINED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

.field public static final enum NOT_REPLIED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

.field public static final enum UNSURE:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    const-string v1, "ATTENDING"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ATTENDING:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    new-instance v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    const-string v1, "UNSURE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->UNSURE:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    new-instance v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    const-string v1, "DECLINED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->DECLINED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    new-instance v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    const-string v1, "NOT_REPLIED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ATTENDING:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->UNSURE:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->DECLINED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ENUM$VALUES:[Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
    .registers 2

    const-class v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    return-object p0
.end method

.method public static values()[Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ENUM$VALUES:[Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
