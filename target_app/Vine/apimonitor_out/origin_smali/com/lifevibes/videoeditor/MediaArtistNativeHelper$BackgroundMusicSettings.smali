.class public Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundMusicSettings"
.end annotation


# instance fields
.field public beginLoop:J

.field public duckingThreshold:I

.field public enableDucking:Z

.field public endLoop:J

.field public file:Ljava/lang/String;

.field public fileType:I

.field public insertionTime:J

.field public isLooping:Z

.field public lowVolume:I

.field public volumePercent:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
