.class public Lcom/facebook/katana/util/TaskContext;
.super Ljava/lang/Object;
.source "TaskContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/katana/util/TaskContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public receivedResponse:Z

.field public sentRequest:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/katana/util/TaskContext$1;

    invoke-direct {v0}, Lcom/facebook/katana/util/TaskContext$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/TaskContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_18

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1a

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z

    return-void

    :cond_18
    move v0, v2

    goto :goto_c

    :cond_1a
    move v0, v2

    goto :goto_15
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/katana/util/TaskContext;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/util/TaskContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z

    iput-boolean v0, p0, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z

    :cond_b
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z

    if-eqz v0, :cond_15

    move v0, v2

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z

    if-eqz v0, :cond_17

    move v0, v2

    :goto_10
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_15
    move v0, v1

    goto :goto_7

    :cond_17
    move v0, v1

    goto :goto_10
.end method
