.class public Lcom/lenovo/channel/exception/TransmitException;
.super Lcom/lenovo/anyshare/sdk/internal/au;
.source "TransmitException.java"
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
.method public constructor <init>(ILjava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/au;-><init>(ILjava/lang/String;)V
return-void
.end method
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/au;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method
.method public constructor <init>(ILjava/lang/Throwable;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/au;-><init>(ILjava/lang/Throwable;)V
return-void
.end method
.method public getCode()I
.registers 2
invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/au;->getCode()I
move-result v0
return v0
.end method