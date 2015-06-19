.class public Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;
.super Ljava/lang/Object;
.source "UmengStatistics.java"
.field private static final GALLERY_4_1:Ljava/lang/String; = "gallery_4_1"
.field private static final GALLERY_4_10:Ljava/lang/String; = "gallery_4_10"
.field private static final GALLERY_4_11:Ljava/lang/String; = "gallery_4_11"
.field private static final GALLERY_4_12:Ljava/lang/String; = "gallery_4_12"
.field private static final GALLERY_4_13:Ljava/lang/String; = "gallery_4_13"
.field private static final GALLERY_4_14:Ljava/lang/String; = "gallery_4_14"
.field private static final GALLERY_4_15:Ljava/lang/String; = "gallery_4_15"
.field private static final GALLERY_4_16:Ljava/lang/String; = "gallery_4_16"
.field private static final GALLERY_4_17:Ljava/lang/String; = "gallery_4_17"
.field private static final GALLERY_4_2:Ljava/lang/String; = "gallery_4_2"
.field private static final GALLERY_4_3:Ljava/lang/String; = "gallery_4_3"
.field private static final GALLERY_4_4:Ljava/lang/String; = "gallery_4_4"
.field private static final GALLERY_4_5:Ljava/lang/String; = "gallery_4_5"
.field private static final GALLERY_4_6:Ljava/lang/String; = "gallery_4_6"
.field private static final GALLERY_4_7:Ljava/lang/String; = "gallery_4_7"
.field private static final GALLERY_4_8:Ljava/lang/String; = "gallery_4_8"
.field private static final GALLERY_4_9:Ljava/lang/String; = "gallery_4_9"
.field private static final GALLERY_CAMERA:Ljava/lang/String; = "gallery_camera"
.field private static final GALLERY_CAMERA360:Ljava/lang/String; = "gallery_camera360"
.field private static final GALLERY_CLOUD:Ljava/lang/String; = "gallery_cloud"
.field private static final GALLERY_LAY_BTN_BACK:Ljava/lang/String; = "gallery_lay_btn_back"
.field private static final GALLERY_LAY_BTN_CANCEL:Ljava/lang/String; = "gallery_lay_btn_cancel"
.field private static final GALLERY_LAY_BTN_DELETE:Ljava/lang/String; = "gallery_lay_btn_delete"
.field private static final GALLERY_LAY_BTN_EDIT:Ljava/lang/String; = "gallery_lay_btn_edit"
.field private static final GALLERY_LAY_BTN_EFFECT:Ljava/lang/String; = "gallery_lay_btn_effect"
.field private static final GALLERY_LAY_BTN_REPLACE:Ljava/lang/String; = "gallery_lay_btn_replace"
.field private static final GALLERY_LAY_BTN_SAVE:Ljava/lang/String; = "gallery_lay_btn_save"
.field private static final GALLERY_LAY_BTN_SHARE:Ljava/lang/String; = "gallery_lay_btn_share"
.field private static final GALLERY_LAY_BTN_SPLICE:Ljava/lang/String; = "gallery_lay_btn_splice"
.field private static final GALLERY_LAY_BTN_SUPERPOSITION:Ljava/lang/String; = "gallery_lay_btn_superposition"
.field private static final GALLERY_LAY_BTN_TEMPLATE:Ljava/lang/String; = "gallery_lay_btn_template"
.field private static final GALLERY_LAY_BTN_TO_CAMERA:Ljava/lang/String; = "gallery_lay_btn_to_camera"
.field private static final GALLERY_OTHER:Ljava/lang/String; = "gallery_other"
.field private static final GALLERY_SELECT:Ljava/lang/String; = "gallery_select"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static galleryBatchLayBtnClick(I)V
.registers 8
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_70
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "gallery_4_5"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "gallery_4_5_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "gallery_lay_btn_splice"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$gallery;->image_stitching:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_12_1:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGallery(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:pswitch_40
const-string/jumbo v0, "gallery_lay_btn_template"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$gallery;->template_jigsaw:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_12_2:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGallery(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:pswitch_5c
const-string/jumbo v0, "gallery_lay_btn_delete"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$gallery;->batch_delete:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_19:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGallery(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Ljava/lang/String;)Ljava/lang/String;
goto :goto_6
nop
:pswitch_data_70
.packed-switch 0x7f0a0124
:pswitch_40
:pswitch_24
:pswitch_5c
.end packed-switch
.end method
.method public static galleryBathDeletePicSum(I)V
.registers 10
const-string/jumbo v6, ""
const/16 v0, 0xa
if-ge p0, v0, :cond_47
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
:goto_b
sget-object v7, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v8, "_c360-adr-5.4.5_"
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$gallery;->batch_delete:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->use:Lcom/pinguo/camera360/lib/feedback/F$action;
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_20:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v5
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGalleryActionString(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v7, v8, v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "gallery_4_8"
invoke-static {v0, v1, v6}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "gallery_4_8_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:cond_47
const-string/jumbo v6, ">9"
goto :goto_b
.end method
.method public static galleryBigPictureShow()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "gallery_4_2"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "gallery_4_2"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static galleryBigPictureShowLayBtnClick(I)V
.registers 8
const-string/jumbo v0, ""
sparse-switch p0, :sswitch_data_d0
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "gallery_4_3"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "gallery_4_3_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:sswitch_24
const-string/jumbo v0, "gallery_lay_btn_to_camera"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->big_picture_view:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->enter:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_7:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionActivity(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$activity;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_40
const-string/jumbo v0, "gallery_lay_btn_share"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->big_picture_view:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$share;->share:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_8_1:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShare(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_5c
const-string/jumbo v0, "gallery_lay_btn_edit"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->big_picture_view:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$gallery;->edit:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_8_8:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGallery(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_78
const-string/jumbo v0, "gallery_lay_btn_superposition"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->big_picture_view:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$gallery;->superimposed_effect:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_8_7:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGallery(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
:sswitch_95
const-string/jumbo v0, "gallery_lay_btn_delete"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->big_picture_view:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$other;->delete:Lcom/pinguo/camera360/lib/feedback/F$other;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_8_2:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionOther(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$other;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
:sswitch_b2
const-string/jumbo v0, "gallery_lay_btn_edit"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->big_picture_view:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$gallery;->edit:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_8_8:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGallery(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
nop
:sswitch_data_d0
.sparse-switch
0x0 -> :sswitch_b2
0x7f0a0120 -> :sswitch_40
0x7f0a0121 -> :sswitch_5c
0x7f0a0122 -> :sswitch_78
0x7f0a0123 -> :sswitch_95
0x7f0a013d -> :sswitch_24
.end sparse-switch
.end method
.method public static galleryBtnClick(I)V
.registers 8
const-string/jumbo v0, ""
sparse-switch p0, :sswitch_data_b2
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "gallery_4_1"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "gallery_4_1_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:sswitch_24
const-string/jumbo v0, "gallery_camera360"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$gallery;->my_photo:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_11_1:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGallery(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_40
const-string/jumbo v0, "gallery_other"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$gallery;->other_photo:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_11_2:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGallery(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_5c
const-string/jumbo v0, "gallery_cloud"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->enter:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$activity;->cloud_home:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_1:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionActivity(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$activity;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_78
const-string/jumbo v0, "gallery_lay_btn_to_camera"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->enter:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_9:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionActivity(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$activity;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
:sswitch_95
const-string/jumbo v0, "gallery_select"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$gallery;->select_button:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_25:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGallery(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
:sswitch_data_b2
.sparse-switch
0x7f0a011d -> :sswitch_24
0x7f0a011e -> :sswitch_40
0x7f0a011f -> :sswitch_5c
0x7f0a012c -> :sswitch_78
0x7f0a012e -> :sswitch_95
.end sparse-switch
.end method
.method public static galleryClickTips(I)V
.registers 4
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_30
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "gallery_4_11"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "gallery_4_11_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "album_tip_info_1"
goto :goto_6
:pswitch_28
const-string/jumbo v0, "album_tip_info_2"
goto :goto_6
:pswitch_2c
const-string/jumbo v0, "album_tip_info_3"
goto :goto_6
:pswitch_data_30
.packed-switch 0x7f0800b6
:pswitch_24
:pswitch_28
:pswitch_2c
.end packed-switch
.end method
.method public static galleryMyGallerySum(I)V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v0
const-string/jumbo v1, "key_picture_c360_sum"
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commit()Z
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "gallery_4_9_my"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static galleryNearByEnter(Ljava/lang/String;)V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "gallery_4_12"
invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "gallery_4_12_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static galleryNearByReceiverSuccess()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "gallery_4_14"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "gallery_4_14"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static galleryNearBySendSuccess()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "gallery_4_13"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "gallery_4_13"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static galleryNearBySendSum(I)V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "gallery_4_15"
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "gallery_4_15_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static galleryOtherGallerySum(I)V
.registers 5
const-string/jumbo v1, ""
const/16 v2, 0xa
if-ge p0, v2, :cond_3a
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
:goto_b
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "gallery_4_9"
invoke-static {v2, v3, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v0
const-string/jumbo v2, "key_picture_system_sum"
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commit()Z
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "gallery_4_9_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:cond_3a
const-string/jumbo v1, ">9"
goto :goto_b
.end method
.method public static galleryPhotoEditLayBtnClick(I)V
.registers 8
const-string/jumbo v0, ""
sparse-switch p0, :sswitch_data_96
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "gallery_4_4"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "gallery_4_4_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:sswitch_24
const-string/jumbo v0, "gallery_lay_btn_save"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$other;->save:Lcom/pinguo/camera360/lib/feedback/F$other;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_24_2:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionOther(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$other;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_40
const-string/jumbo v0, "gallery_lay_btn_share"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$share;->share:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_24_1:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShare(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_5c
const-string/jumbo v0, "gallery_lay_btn_cancel"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$other;->cancel:Lcom/pinguo/camera360/lib/feedback/F$other;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_24_3:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionOther(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$other;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_78
const-string/jumbo v0, "gallery_lay_btn_effect"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$other;->change_effect:Lcom/pinguo/camera360/lib/feedback/F$other;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_24_4:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionOther(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$other;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
nop
:sswitch_data_96
.sparse-switch
0x7f0a00c4 -> :sswitch_40
0x7f0a03ba -> :sswitch_78
0x7f0a03bb -> :sswitch_24
0x7f0a03bc -> :sswitch_5c
.end sparse-switch
.end method
.method public static galleryPicDetailsEdit()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "gallery_4_17"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "gallery_4_17"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static galleryPicDetailsShow()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "gallery_4_16"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "gallery_4_16"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static galleryShowTips(I)V
.registers 4
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_30
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "gallery_4_10"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "gallery_4_10_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "album_tip_info_1"
goto :goto_6
:pswitch_28
const-string/jumbo v0, "album_tip_info_2"
goto :goto_6
:pswitch_2c
const-string/jumbo v0, "album_tip_info_3"
goto :goto_6
:pswitch_data_30
.packed-switch 0x7f0800b6
:pswitch_24
:pswitch_28
:pswitch_2c
.end packed-switch
.end method
.method public static gallerySpliceSavePicSum(I)V
.registers 9
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "gallery_4_6"
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v7, "_c360-adr-5.4.5_"
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$gallery;->image_stitching:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->use:Lcom/pinguo/camera360/lib/feedback/F$action;
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_16:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v5
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGalleryActionString(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v6, v7, v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "gallery_4_6_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static galleryTemplateSavePicSum(I)V
.registers 9
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "gallery_4_7"
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/lib/feedback/F$key;->gallery:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v7, "_c360-adr-5.4.5_"
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$gallery;->template_jigsaw:Lcom/pinguo/camera360/lib/feedback/F$gallery;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->use:Lcom/pinguo/camera360/lib/feedback/F$action;
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->id_4_18:Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$gallery;->name()Ljava/lang/String;
move-result-object v5
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionGalleryActionString(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$gallery;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v6, v7, v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "gallery_4_7_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method