.class Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;
.super Ljava/lang/Object;
.source "LVMediaCoderWriterJNI.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native LVMediaCoderInitWriter(Ljava/lang/String;)I
.end method

.method public static final native LVMediaCoderWriterAddStreamAudio(I[BIIII)I
.end method

.method public static final native LVMediaCoderWriterAddStreamVideo(I[BIII)I
.end method

.method public static final native LVMediaCoderWriterClose(I)I
.end method

.method public static final native LVMediaCoderWriterProcess(IIDD[BI)I
.end method

.method public static final native RGB888toYUV420WithPlanar([B[BIII)C
.end method

.method public static final native RGB888toYUV420WithSemiPlanar([B[BIII)C
.end method

.method public static final native RGB888toYUV420WithStride512Aligned([B[BIIIII)C
.end method

.method public static final native RGB888toYUV420WithUVInterchanged([B[BIII)C
.end method

.method public static final native RGB888toYUV420WithUVStride2KAligned([B[BIII)C
.end method
