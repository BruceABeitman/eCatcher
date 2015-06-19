.class public Lco/vine/android/DraftCameraPreviewFragment;
.super Lco/vine/android/BaseFragment;
.source "DraftCameraPreviewFragment.java"
.implements Landroid/view/View$OnClickListener;
.field private mDimen:I
.field private mIcon:Landroid/widget/ImageView;
.field private mMasksAdjusted:Z
.field private mPreviewView:Landroid/view/View;
.field private mRes:Landroid/content/res/Resources;
.field private mScreenSize:Landroid/graphics/Point;
.field private final onMaskTouchListener:Landroid/view/View$OnTouchListener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V
new-instance v0, Lco/vine/android/DraftCameraPreviewFragment$1;
invoke-direct {v0, p0}, Lco/vine/android/DraftCameraPreviewFragment$1;-><init>(Lco/vine/android/DraftCameraPreviewFragment;)V
iput-object v0, p0, Lco/vine/android/DraftCameraPreviewFragment;->onMaskTouchListener:Landroid/view/View$OnTouchListener;
return-void
.end method
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V
new-instance v0, Lco/vine/android/DraftCameraPreviewFragment$1;
invoke-direct {v0, p0}, Lco/vine/android/DraftCameraPreviewFragment$1;-><init>(Lco/vine/android/DraftCameraPreviewFragment;)V
iput-object v0, p0, Lco/vine/android/DraftCameraPreviewFragment;->onMaskTouchListener:Landroid/view/View$OnTouchListener;
iput p1, p0, Lco/vine/android/DraftCameraPreviewFragment;->mDimen:I
return-void
.end method
.method public getIconView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/DraftCameraPreviewFragment;->mPreviewView:Landroid/view/View;
return-object v0
.end method
.method public declared-synchronized initMasks(Landroid/view/View;II)V
.registers 15
monitor-enter p0
:try_start_1
iget-boolean v9, p0, Lco/vine/android/DraftCameraPreviewFragment;->mMasksAdjusted:Z
if-nez v9, :cond_54
const/4 v9, 0x1
iput-boolean v9, p0, Lco/vine/android/DraftCameraPreviewFragment;->mMasksAdjusted:Z
const v9, 0x7f0a00d0
invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
const v9, 0x7f0a00d1
invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iget-object v9, p0, Lco/vine/android/DraftCameraPreviewFragment;->onMaskTouchListener:Landroid/view/View$OnTouchListener;
invoke-virtual {v7, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v9, p0, Lco/vine/android/DraftCameraPreviewFragment;->onMaskTouchListener:Landroid/view/View$OnTouchListener;
invoke-virtual {v1, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget v3, p0, Lco/vine/android/DraftCameraPreviewFragment;->mDimen:I
if-le p3, v3, :cond_54
iget-object v9, p0, Lco/vine/android/DraftCameraPreviewFragment;->mRes:Landroid/content/res/Resources;
const v10, 0x7f0b0033
invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v4
iget-object v9, p0, Lco/vine/android/DraftCameraPreviewFragment;->mRes:Landroid/content/res/Resources;
const v10, 0x7f0b006a
invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v5
mul-int/lit8 v9, v4, 0x3
add-int v6, v9, v5
sub-int v9, p3, v6
iget v10, p0, Lco/vine/android/DraftCameraPreviewFragment;->mDimen:I
sub-int v0, v9, v10
if-lez v0, :cond_54
invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v8
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I
iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_54
:try_end_54
.catchall {:try_start_1 .. :try_end_54} :catchall_56
monitor-exit p0
return-void
:catchall_56
move-exception v9
monitor-exit p0
throw v9
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/DraftCameraPreviewFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
packed-switch v1, :pswitch_data_16
:goto_7
const-string v1, " - Lco/vine/android/DraftCameraPreviewFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-virtual {p0}, Lco/vine/android/DraftCameraPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lco/vine/android/AbstractRecordingActivity;
iget-object v1, p0, Lco/vine/android/DraftCameraPreviewFragment;->mPreviewView:Landroid/view/View;
iget-object v2, p0, Lco/vine/android/DraftCameraPreviewFragment;->mIcon:Landroid/widget/ImageView;
invoke-virtual {v0, v1, v2}, Lco/vine/android/AbstractRecordingActivity;->cameraPreviewToRecorder(Landroid/view/View;Landroid/view/View;)V
goto :goto_7
:pswitch_data_16
.packed-switch 0x7f0a00cf
:pswitch_8
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/DraftCameraPreviewFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/DraftCameraPreviewFragment;->getResources()Landroid/content/res/Resources;
move-result-object v0
iput-object v0, p0, Lco/vine/android/DraftCameraPreviewFragment;->mRes:Landroid/content/res/Resources;
const-string v1, " - Lco/vine/android/DraftCameraPreviewFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 16
const v10, 0x7f030034
const/4 v11, 0x0
invoke-virtual {p1, v10, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v8
if-nez v8, :cond_c
const/4 v8, 0x0
:goto_b
return-object v8
:cond_c
iget-object v10, p0, Lco/vine/android/DraftCameraPreviewFragment;->mRes:Landroid/content/res/Resources;
const v11, 0x7f0b0033
invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v3
iget-object v10, p0, Lco/vine/android/DraftCameraPreviewFragment;->mRes:Landroid/content/res/Resources;
const v11, 0x7f0b006a
invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v7
iget-object v10, p0, Lco/vine/android/DraftCameraPreviewFragment;->mRes:Landroid/content/res/Resources;
const v11, 0x7f0b0036
invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v6
const v10, 0x7f0a00cf
invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout;
invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v10, 0x7f0a00d2
invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/RelativeLayout;
invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;
iget v10, p0, Lco/vine/android/DraftCameraPreviewFragment;->mDimen:I
iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I
iget v10, p0, Lco/vine/android/DraftCameraPreviewFragment;->mDimen:I
iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I
mul-int/lit8 v10, v3, 0x2
add-int/2addr v10, v7
iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iput-object v4, p0, Lco/vine/android/DraftCameraPreviewFragment;->mPreviewView:Landroid/view/View;
const v10, 0x7f0a00d3
invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v10
check-cast v10, Landroid/widget/ImageView;
iput-object v10, p0, Lco/vine/android/DraftCameraPreviewFragment;->mIcon:Landroid/widget/ImageView;
invoke-virtual {p0}, Lco/vine/android/DraftCameraPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v10
check-cast v10, Lco/vine/android/AbstractRecordingActivity;
invoke-virtual {v10}, Lco/vine/android/AbstractRecordingActivity;->getScreenSize()Landroid/graphics/Point;
move-result-object v9
iput-object v9, p0, Lco/vine/android/DraftCameraPreviewFragment;->mScreenSize:Landroid/graphics/Point;
iget-object v10, p0, Lco/vine/android/DraftCameraPreviewFragment;->mRes:Landroid/content/res/Resources;
const v11, 0x7f0b0030
invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v2
iget v10, v9, Landroid/graphics/Point;->x:I
add-int/2addr v10, v7
add-int v0, v10, v2
iget v10, v9, Landroid/graphics/Point;->x:I
invoke-virtual {p0, v8, v10, v0}, Lco/vine/android/DraftCameraPreviewFragment;->initMasks(Landroid/view/View;II)V
goto :goto_b
.end method