.class public Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClips;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewClips"
.end annotation


# instance fields
.field public beginPlayTime:J

.field public clipPath:Ljava/lang/String;

.field public endPlayTime:J

.field public fileType:I

.field public mediaRendering:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
