.class Lcom/pinguo/camera360/nearbytransfer/NbtfPreference$InstanceHolder;
.super Ljava/lang/Object;
.source "NbtfPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sInstence:Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;

    invoke-direct {v0}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference$InstanceHolder;->sInstence:Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference$InstanceHolder;->sInstence:Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;

    return-object v0
.end method