.class public Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioSettings;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioSettings"
.end annotation


# instance fields
.field ExtendedFs:I

.field Fs:I

.field Id:Ljava/lang/String;

.field bInDucking_enable:Z

.field bRemoveOriginal:Z

.field beginCutTime:J

.field channels:I

.field ducking_lowVolume:I

.field ducking_threshold:I

.field endCutTime:J

.field fileType:I

.field loop:Z

.field pFile:Ljava/lang/String;

.field pcmFilePath:Ljava/lang/String;

.field startMs:J

.field volume:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
