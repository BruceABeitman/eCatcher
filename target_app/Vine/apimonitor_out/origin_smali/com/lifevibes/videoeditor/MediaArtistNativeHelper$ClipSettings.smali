.class public Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClipSettings"
.end annotation


# instance fields
.field public arrayBeginCutTime:[I

.field public arrayEndCutTime:[I

.field public beginCutPercent:I

.field public beginCutTime:I

.field public clipDecodedPath:Ljava/lang/String;

.field public clipOriginalPath:Ljava/lang/String;

.field public clipPath:Ljava/lang/String;

.field public clipVolumePercentage:I

.field public endCutPercent:I

.field public endCutTime:I

.field public fileType:I

.field public mNumCuts:I

.field public mediaRendering:I

.field public panZoomEnabled:Z

.field public panZoomPercentEnd:I

.field public panZoomPercentStart:I

.field public panZoomTopLeftXEnd:I

.field public panZoomTopLeftXStart:I

.field public panZoomTopLeftYEnd:I

.field public panZoomTopLeftYStart:I

.field public rgbHeight:I

.field public rgbWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
