.class public final enum Lcom/instagram/creation/video/g/b/e;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/creation/video/g/b/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/creation/video/g/b/e;

.field public static final enum b:Lcom/instagram/creation/video/g/b/e;

.field public static final enum c:Lcom/instagram/creation/video/g/b/e;

.field public static final enum d:Lcom/instagram/creation/video/g/b/e;

.field public static final enum e:Lcom/instagram/creation/video/g/b/e;

.field public static final enum f:Lcom/instagram/creation/video/g/b/e;

.field public static final enum g:Lcom/instagram/creation/video/g/b/e;

.field public static final enum h:Lcom/instagram/creation/video/g/b/e;

.field public static final enum i:Lcom/instagram/creation/video/g/b/e;

.field public static final enum j:Lcom/instagram/creation/video/g/b/e;

.field private static final synthetic l:[Lcom/instagram/creation/video/g/b/e;


# instance fields
.field public final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/instagram/creation/video/g/b/e;

    const-string v1, "CODEC_VIDEO_VP8"

    const-string v2, "video/x-vnd.on2.vp8"

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/creation/video/g/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/creation/video/g/b/e;->a:Lcom/instagram/creation/video/g/b/e;

    new-instance v0, Lcom/instagram/creation/video/g/b/e;

    const-string v1, "CODEC_VIDEO_VP9"

    const-string v2, "video/x-vnd.on2.vp9"

    invoke-direct {v0, v1, v5, v2}, Lcom/instagram/creation/video/g/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/creation/video/g/b/e;->b:Lcom/instagram/creation/video/g/b/e;

    new-instance v0, Lcom/instagram/creation/video/g/b/e;

    const-string v1, "CODEC_VIDEO_H264"

    const-string v2, "video/avc"

    invoke-direct {v0, v1, v6, v2}, Lcom/instagram/creation/video/g/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/creation/video/g/b/e;->c:Lcom/instagram/creation/video/g/b/e;

    new-instance v0, Lcom/instagram/creation/video/g/b/e;

    const-string v1, "CODEC_VIDEO_MPEG4"

    const-string v2, "video/mp4v-es"

    invoke-direct {v0, v1, v7, v2}, Lcom/instagram/creation/video/g/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/creation/video/g/b/e;->d:Lcom/instagram/creation/video/g/b/e;

    new-instance v0, Lcom/instagram/creation/video/g/b/e;

    const-string v1, "CODEC_VIDEO_H263"

    const-string v2, "video/3gpp"

    invoke-direct {v0, v1, v8, v2}, Lcom/instagram/creation/video/g/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/creation/video/g/b/e;->e:Lcom/instagram/creation/video/g/b/e;

    new-instance v0, Lcom/instagram/creation/video/g/b/e;

    const-string v1, "CODEC_AUDIO_AMR_NB"

    const/4 v2, 0x5

    const-string v3, "audio/3gpp"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/creation/video/g/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/creation/video/g/b/e;->f:Lcom/instagram/creation/video/g/b/e;

    new-instance v0, Lcom/instagram/creation/video/g/b/e;

    const-string v1, "CODEC_AUDIO_AMR_WB"

    const/4 v2, 0x6

    const-string v3, "audio/amr-wb"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/creation/video/g/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/creation/video/g/b/e;->g:Lcom/instagram/creation/video/g/b/e;

    new-instance v0, Lcom/instagram/creation/video/g/b/e;

    const-string v1, "CODEC_AUDIO_MP3"

    const/4 v2, 0x7

    const-string v3, "audio/mpeg"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/creation/video/g/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/creation/video/g/b/e;->h:Lcom/instagram/creation/video/g/b/e;

    new-instance v0, Lcom/instagram/creation/video/g/b/e;

    const-string v1, "CODEC_AUDIO_AAC"

    const/16 v2, 0x8

    const-string v3, "audio/mp4a-latm"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/creation/video/g/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/creation/video/g/b/e;->i:Lcom/instagram/creation/video/g/b/e;

    new-instance v0, Lcom/instagram/creation/video/g/b/e;

    const-string v1, "CODEC_AUDIO_VORBIS"

    const/16 v2, 0x9

    const-string v3, "audio/vorbis"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/creation/video/g/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/creation/video/g/b/e;->j:Lcom/instagram/creation/video/g/b/e;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/instagram/creation/video/g/b/e;

    sget-object v1, Lcom/instagram/creation/video/g/b/e;->a:Lcom/instagram/creation/video/g/b/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/creation/video/g/b/e;->b:Lcom/instagram/creation/video/g/b/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/creation/video/g/b/e;->c:Lcom/instagram/creation/video/g/b/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/instagram/creation/video/g/b/e;->d:Lcom/instagram/creation/video/g/b/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/instagram/creation/video/g/b/e;->e:Lcom/instagram/creation/video/g/b/e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/instagram/creation/video/g/b/e;->f:Lcom/instagram/creation/video/g/b/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/instagram/creation/video/g/b/e;->g:Lcom/instagram/creation/video/g/b/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/instagram/creation/video/g/b/e;->h:Lcom/instagram/creation/video/g/b/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/instagram/creation/video/g/b/e;->i:Lcom/instagram/creation/video/g/b/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/instagram/creation/video/g/b/e;->j:Lcom/instagram/creation/video/g/b/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/creation/video/g/b/e;->l:[Lcom/instagram/creation/video/g/b/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/instagram/creation/video/g/b/e;->k:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/creation/video/g/b/e;
    .registers 2

    const-class v0, Lcom/instagram/creation/video/g/b/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/g/b/e;

    return-object v0
.end method

.method public static values()[Lcom/instagram/creation/video/g/b/e;
    .registers 1

    sget-object v0, Lcom/instagram/creation/video/g/b/e;->l:[Lcom/instagram/creation/video/g/b/e;

    invoke-virtual {v0}, [Lcom/instagram/creation/video/g/b/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/creation/video/g/b/e;

    return-object v0
.end method
