.class Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$1;
.super Landroid/widget/SimpleAdapter;
.source "CameraTopMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->initFlashMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .registers 13

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$1;->this$0:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const v7, 0x7f0a0170

    const v6, 0x7f0a016f

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v2

    const-string/jumbo v3, "key_camera_flashmode"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_32

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    :goto_31
    return-object p2

    :cond_32
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_31
.end method
