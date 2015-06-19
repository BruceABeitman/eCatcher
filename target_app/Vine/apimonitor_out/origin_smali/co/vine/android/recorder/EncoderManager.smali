.class public Lco/vine/android/recorder/EncoderManager;
.super Ljava/lang/Object;
.source "EncoderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/EncoderManager$Encoder;,
        Lco/vine/android/recorder/EncoderManager$EncoderBoss;,
        Lco/vine/android/recorder/EncoderManager$EncodingException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transcode(Lco/vine/android/recorder/EncoderManager$EncoderBoss;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/vine/android/recorder/EncoderManager$EncodingException;
        }
    .end annotation

    const-string v0, "Start transcoding from {} to {}."

    invoke-static {v0, p1, p2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lco/vine/android/lifevibes/LifeVibesTranscoder;

    invoke-direct {v0}, Lco/vine/android/lifevibes/LifeVibesTranscoder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lco/vine/android/lifevibes/LifeVibesTranscoder;->transcode(Lco/vine/android/recorder/EncoderManager$EncoderBoss;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static tryLoad()V
    .registers 1

    new-instance v0, Lco/vine/android/lifevibes/LifeVibesTranscoder;

    invoke-direct {v0}, Lco/vine/android/lifevibes/LifeVibesTranscoder;-><init>()V

    return-void
.end method
