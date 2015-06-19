.class final Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;
.super Ljava/lang/Object;
.source "OptionsAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListItemView"
.end annotation


# instance fields
.field public check:Landroid/widget/CheckBox;

.field public count:Landroid/widget/TextView;

.field public image:Landroid/widget/ImageView;

.field public info:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;->this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$ListItemView;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;)V

    return-void
.end method
