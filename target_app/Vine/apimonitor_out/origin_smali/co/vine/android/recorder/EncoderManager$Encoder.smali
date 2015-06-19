.class public interface abstract Lco/vine/android/recorder/EncoderManager$Encoder;
.super Ljava/lang/Object;
.source "EncoderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/EncoderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Encoder"
.end annotation


# virtual methods
.method public abstract transcode(Lco/vine/android/recorder/EncoderManager$EncoderBoss;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/recorder/EncoderManager$EncoderBoss;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/vine/android/recorder/EncoderManager$EncodingException;
        }
    .end annotation
.end method
