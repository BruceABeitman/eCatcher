.class public interface abstract Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
.super Ljava/lang/Object;
.source "AbsVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/video/view/AbsVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoViewActionListener"
.end annotation


# static fields
.field public static final ACTION_ADVANCE_SETTING:I = 0xb

.field public static final ACTION_CLOUD:I = 0x0

.field public static final ACTION_ENTER_GALLERY:I = 0x4

.field public static final ACTION_FLASH:I = 0x2

.field public static final ACTION_MODE:I = 0x8

.field public static final ACTION_OTHER_SETTING:I = 0x3

.field public static final ACTION_PAUSE_VIDEO_RECORDING:I = 0x5

.field public static final ACTION_SHUTTER_BTN:I = 0x6

.field public static final ACTION_SWITCH_CAMERA:I = 0x1

.field public static final ACTION_TAKE_PICTURE:I = 0x7

.field public static final ACTION_TIMER:I = 0x9

.field public static final ACTION_TOP_MENU_CLICK:I = -0x1

.field public static final ACTION_VIDEO_QUALITY:I = 0xa


# virtual methods
.method public abstract onActionPerformed(ILjava/lang/Object;)V
.end method
