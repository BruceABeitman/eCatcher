.class public Lorg/pinguo/richpicture/RichPictureInterface;
.super Ljava/lang/Object;
.source "RichPictureInterface.java"


# static fields
.field public static final CHANNEL_IN_MONO:I = 0x10

.field public static final CHANNEL_IN_STEREO:I = 0xc

.field public static final ENCODING_NONE:I = 0x0

.field public static final ENCODING_PCM_16BIT:I = 0x2

.field public static final ENCODING_PCM_8BIT:I = 0x3

.field public static final PGSOUND_AUDIO_TYPE_ACCESSORIAL:I = 0x2

.field public static final PGSOUND_AUDIO_TYPE_MP3:I = 0x1

.field public static final PGSOUND_AUDIO_TYPE_PCM:I = 0x2

.field public static final PGSOUND_AUDIO_TYPE_PRIMARY:I = 0x1

.field public static final RATE_IN_HZ_11025:I = 0x2b11

.field public static final RATE_IN_HZ_16000:I = 0x3e80

.field public static final RATE_IN_HZ_22050:I = 0x5622

.field public static final RATE_IN_HZ_44100:I = 0xac44

.field public static final RATE_IN_HZ_8000:I = 0x1f40


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "richpicture"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native cleanAllAudios(Ljava/lang/String;)Z
.end method

.method public native cleanAudioInfo([B)Z
.end method

.method public native getAudioInfosFromData([B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lorg/pinguo/richpicture/AudioInfo;",
            ">;"
        }
    .end annotation
.end method

.method public native getAudioInfosFromFile(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/pinguo/richpicture/AudioInfo;",
            ">;"
        }
    .end annotation
.end method

.method public native setAudioInfoToData([BLorg/pinguo/richpicture/AudioInfo;)Z
.end method

.method public native setAudioInfoToFile(Ljava/lang/String;Lorg/pinguo/richpicture/AudioInfo;)Z
.end method
