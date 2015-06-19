.class Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$1;
.super Ljava/lang/Object;
.source "OptionsAlbum.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;

.field private final synthetic val$selectID:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;I)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$1;->this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;

    iput p2, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$1;->val$selectID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$1;->this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;

    iget v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter$1;->val$selectID:I

    #calls: Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->checkedChange(I)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;I)V

    return-void
.end method
