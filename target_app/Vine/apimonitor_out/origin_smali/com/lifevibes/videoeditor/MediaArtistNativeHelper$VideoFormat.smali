.class public final Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$VideoFormat;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoFormat"
.end annotation


# static fields
.field public static final H263:I = 0x1

.field public static final H264:I = 0x4

.field public static final H264_HP:I = 0x6

.field public static final H264_MP:I = 0x5

.field public static final MPEG4:I = 0x2

.field public static final MPEG4_EMP:I = 0x3

.field public static final NO_VIDEO:I = 0x0

.field public static final NULL_VIDEO:I = 0xfe

.field public static final UNSUPPORTED:I = 0xff


# instance fields
.field final synthetic this$0:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;


# direct methods
.method public constructor <init>(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$VideoFormat;->this$0:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
