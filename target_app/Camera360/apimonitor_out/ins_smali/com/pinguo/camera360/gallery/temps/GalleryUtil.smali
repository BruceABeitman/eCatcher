.class public Lcom/pinguo/camera360/gallery/temps/GalleryUtil;
.super Ljava/lang/Object;
.source "GalleryUtil.java"
.field public static final NO_NAMES:Ljava/lang/String; = "getClass"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static deleteDICM(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Z)V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDestPath()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_14
new-instance v0, Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_14
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_14
if-eqz p1, :cond_2a
invoke-static {p0}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getOrgPhotoPath(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_2a
new-instance v0, Ljava/io/File;
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_2a
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_2a
return-void
.end method
.method public static deletePhotoProject(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Landroid/content/Context;Z)Z
.registers 11
const/4 v0, 0x0
:try_start_1
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v5
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v6
invoke-virtual {v5, v6, v7}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->delete(J)I
const/4 v0, 0x1
new-instance v4, Ljava/lang/StringBuilder;
sget-object v5, Lcom/pinguo/camera360/gallery/temps/SandBox;->SAND_B0X_ROOT:Ljava/lang/String;
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v5
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
new-instance v2, Ljava/io/File;
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v5
if-eqz v5, :cond_35
invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v6
array-length v7, v6
const/4 v5, 0x0
:goto_30
if-lt v5, v7, :cond_39
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:cond_35
invoke-static {p0, p2}, Lcom/pinguo/camera360/gallery/temps/GalleryUtil;->deleteDICM(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Z)V
:goto_38
return v0
:cond_39
aget-object v3, v6, v5
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:try_end_3e
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_41
add-int/lit8 v5, v5, 0x1
goto :goto_30
:catch_41
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_38
.end method
.method public static deleteProject(JLjava/lang/String;)V
.registers 4
invoke-static {p0, p1}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getSandBoxDir(J)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/util/FileTool;->delete(Ljava/lang/String;)Z
invoke-static {p0, p1, p2}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getOrgPhotoPath(JLjava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/util/FileTool;->delete(Ljava/lang/String;)Z
invoke-static {p2}, Lcom/pinguo/lib/util/FileTool;->delete(Ljava/lang/String;)Z
return-void
.end method
.method public static deleteProject(Landroid/content/Context;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Z)V
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox;->SAND_B0X_ROOT:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/lib/util/FileTool;->delete(Ljava/lang/String;)Z
invoke-static {p1, p2}, Lcom/pinguo/camera360/gallery/temps/GalleryUtil;->deleteDICM(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Z)V
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v1
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->delete(J)I
return-void
.end method
.method public static deleteProjectForVideo(JLjava/lang/String;)V
.registers 4
invoke-static {p0, p1}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getSandBoxDir(J)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/util/FileTool;->delete(Ljava/lang/String;)Z
invoke-static {p2}, Lcom/pinguo/lib/util/FileTool;->delete(Ljava/lang/String;)Z
return-void
.end method
.method public static exists(Ljava/io/File;)Z
.registers 3
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string/jumbo v1, "this dir is not found"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_7
.end method
.method public static getMethods(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
.registers 8
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v0
const/4 v2, 0x0
:goto_e
array-length v5, v0
if-lt v2, v5, :cond_12
return-object v3
:cond_12
aget-object v5, v0, v2
invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "getClass"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_2a
const-string/jumbo v5, "getId"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_2d
:cond_2a
:goto_2a
add-int/lit8 v2, v2, 0x1
goto :goto_e
:cond_2d
invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v5
if-nez v5, :cond_2a
aget-object v5, v0, v2
invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_2a
.end method
.method public static getName(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const-string/jumbo v2, "."
invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v1
add-int/lit8 v2, v1, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, -0x2
invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "po"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_35
const/4 v2, 0x0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
add-int/lit8 v3, v3, -0x2
invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_35
return-object v0
.end method
.method public static getScreenWidth(Landroid/app/Activity;)I
.registers 4
const/4 v1, 0x0
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
return v1
.end method
.method public static isBaseClass(Ljava/lang/Object;)Z
.registers 2
instance-of v0, p0, Ljava/lang/Integer;
if-nez v0, :cond_24
instance-of v0, p0, Ljava/lang/String;
if-nez v0, :cond_24
instance-of v0, p0, Ljava/lang/Double;
if-nez v0, :cond_24
instance-of v0, p0, Ljava/lang/Long;
if-nez v0, :cond_24
instance-of v0, p0, Ljava/lang/Boolean;
if-nez v0, :cond_24
instance-of v0, p0, Ljava/lang/Float;
if-nez v0, :cond_24
instance-of v0, p0, Ljava/lang/Short;
if-nez v0, :cond_24
instance-of v0, p0, Ljava/lang/Byte;
if-nez v0, :cond_24
instance-of v0, p0, Ljava/lang/Character;
if-eqz v0, :cond_26
:cond_24
const/4 v0, 0x1
:goto_25
return v0
:cond_26
const/4 v0, 0x0
goto :goto_25
.end method
.method public static showCustomDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.registers 13
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
new-array v2, v5, [Ljava/lang/Object;
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f080291
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2, p4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f080292
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v1, p6, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
return-object v1
.end method
.method public static showProcessPhotosDialog(Landroid/content/Context;IZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnKeyListener;III)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.registers 14
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
const/4 v1, -0x2
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f080292
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2, p3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
invoke-virtual {v0, p4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
invoke-virtual {v0, p5}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
invoke-virtual {v0, p6}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
invoke-virtual {v0, p7}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMax(I)V
invoke-virtual {v0, p8}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgress(I)V
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
const/4 v1, 0x0
invoke-virtual {v0, p9, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOrientation(IZ)V
return-object v0
.end method
.method public static toUpFirst(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v2, 0x1
new-instance v0, Ljava/lang/StringBuilder;
const/4 v1, 0x0
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method