.class public final enum Lcom/lenovo/channel/base/IUserListener$UserEventType;
.super Ljava/lang/Enum;
.source "IUserListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/channel/base/IUserListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/channel/base/IUserListener$UserEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHANGED:Lcom/lenovo/channel/base/IUserListener$UserEventType;

.field public static final enum OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

.field public static final enum ONLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

.field private static final synthetic a:[Lcom/lenovo/channel/base/IUserListener$UserEventType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/lenovo/channel/base/IUserListener$UserEventType;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/channel/base/IUserListener$UserEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/channel/base/IUserListener$UserEventType;->ONLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    new-instance v0, Lcom/lenovo/channel/base/IUserListener$UserEventType;

    const-string/jumbo v1, "OFFLINE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/channel/base/IUserListener$UserEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    new-instance v0, Lcom/lenovo/channel/base/IUserListener$UserEventType;

    const-string/jumbo v1, "CHANGED"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/channel/base/IUserListener$UserEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/channel/base/IUserListener$UserEventType;->CHANGED:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/channel/base/IUserListener$UserEventType;

    sget-object v1, Lcom/lenovo/channel/base/IUserListener$UserEventType;->ONLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/channel/base/IUserListener$UserEventType;->CHANGED:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/channel/base/IUserListener$UserEventType;->a:[Lcom/lenovo/channel/base/IUserListener$UserEventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/channel/base/IUserListener$UserEventType;
    .registers 2

    const-class v0, Lcom/lenovo/channel/base/IUserListener$UserEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/channel/base/IUserListener$UserEventType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/channel/base/IUserListener$UserEventType;
    .registers 1

    sget-object v0, Lcom/lenovo/channel/base/IUserListener$UserEventType;->a:[Lcom/lenovo/channel/base/IUserListener$UserEventType;

    invoke-virtual {v0}, [Lcom/lenovo/channel/base/IUserListener$UserEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/channel/base/IUserListener$UserEventType;

    return-object v0
.end method
