.class public Lco/vine/android/recorder/CameraSetting;
.super Ljava/lang/Object;
.source "CameraSetting.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x773635a4cd84a345L


# instance fields
.field public backFacingAspectRatio:F

.field public degrees:I

.field public frameRate:I

.field public frontFacing:Z

.field public frontFacingAspectRatio:F

.field public imageFormat:I

.field public originalFrameRate:I

.field public originalH:I

.field public originalW:I

.field public tpf:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIZFF)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lco/vine/android/recorder/CameraSetting;->originalW:I

    iput p2, p0, Lco/vine/android/recorder/CameraSetting;->originalH:I

    iput p3, p0, Lco/vine/android/recorder/CameraSetting;->degrees:I

    iput p4, p0, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    iput p4, p0, Lco/vine/android/recorder/CameraSetting;->originalFrameRate:I

    const/16 v0, 0x3e8

    div-int/2addr v0, p4

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->tpf:I

    iput p5, p0, Lco/vine/android/recorder/CameraSetting;->imageFormat:I

    iput-boolean p6, p0, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z

    iput p7, p0, Lco/vine/android/recorder/CameraSetting;->frontFacingAspectRatio:F

    iput p8, p0, Lco/vine/android/recorder/CameraSetting;->backFacingAspectRatio:F

    return-void
.end method

.method public constructor <init>(Lco/vine/android/recorder/CameraSetting;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lco/vine/android/recorder/CameraSetting;->originalW:I

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->originalW:I

    iget v0, p1, Lco/vine/android/recorder/CameraSetting;->originalH:I

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->originalH:I

    iget v0, p1, Lco/vine/android/recorder/CameraSetting;->degrees:I

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->degrees:I

    iget v0, p1, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    iget v0, p1, Lco/vine/android/recorder/CameraSetting;->originalFrameRate:I

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->originalFrameRate:I

    iget v0, p1, Lco/vine/android/recorder/CameraSetting;->tpf:I

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->tpf:I

    iget v0, p1, Lco/vine/android/recorder/CameraSetting;->imageFormat:I

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->imageFormat:I

    iget-boolean v0, p1, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z

    iget v0, p1, Lco/vine/android/recorder/CameraSetting;->frontFacingAspectRatio:F

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->frontFacingAspectRatio:F

    iget v0, p1, Lco/vine/android/recorder/CameraSetting;->backFacingAspectRatio:F

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->backFacingAspectRatio:F

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->originalW:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->originalH:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->degrees:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->tpf:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->imageFormat:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z

    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->frontFacingAspectRatio:F

    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->backFacingAspectRatio:F

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/CameraSetting;->originalFrameRate:I

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lco/vine/android/recorder/CameraSetting;->originalW:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lco/vine/android/recorder/CameraSetting;->originalH:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lco/vine/android/recorder/CameraSetting;->degrees:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lco/vine/android/recorder/CameraSetting;->tpf:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lco/vine/android/recorder/CameraSetting;->imageFormat:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-boolean v0, p0, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget v0, p0, Lco/vine/android/recorder/CameraSetting;->frontFacingAspectRatio:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    iget v0, p0, Lco/vine/android/recorder/CameraSetting;->backFacingAspectRatio:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    iget v0, p0, Lco/vine/android/recorder/CameraSetting;->originalFrameRate:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    return-void
.end method
