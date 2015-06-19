.class public Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfException;
.super Ljava/lang/Exception;
.source "INearbyTransferWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NbtfException"
.end annotation


# static fields
.field public static final BadFile:I = 0x4

.field public static final Canceled:I = 0x8

.field public static final DownloadError:I = 0x2

.field public static final FileNotFound:I = 0x5

.field public static final GeneralError:I = 0x0

.field public static final NetworkError:I = 0x1

.field public static final NotEnoughSpace:I = 0x7

.field public static final PeerDisconnected:I = 0x6

.field public static final TargetNotSupportReceiveCollection:I = 0x9

.field public static final UploadError:I = 0x3


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfException;->mCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfException;->mCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfException;->mCode:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfException;->mCode:I

    return v0
.end method
