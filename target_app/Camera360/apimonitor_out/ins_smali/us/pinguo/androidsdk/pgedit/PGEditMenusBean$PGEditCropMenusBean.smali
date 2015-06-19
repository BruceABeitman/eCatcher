.class public Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
.source "PGEditMenusBean.java"
.field private flipIcon:I
.field private flipName:I
.field private isFlip:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, -0x1
invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;-><init>(Landroid/content/Context;)V
iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->flipIcon:I
iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->flipName:I
return-void
.end method
.method public flip()V
.registers 2
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->isFlip:Z
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_5
iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->isFlip:Z
return-void
:cond_8
const/4 v0, 0x1
goto :goto_5
.end method
.method public getFlipIcon()I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->flipIcon:I
return v0
.end method
.method public getFlipName()I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->flipName:I
return v0
.end method
.method public isFlip()Z
.registers 2
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->isFlip:Z
return v0
.end method
.method public isNeedFlip()Z
.registers 3
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->flipIcon:I
const/4 v1, -0x1
if-ne v0, v1, :cond_7
const/4 v0, 0x0
:goto_6
return v0
:cond_7
const/4 v0, 0x1
goto :goto_6
.end method
.method public setFlipIcon(I)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->flipIcon:I
return-void
.end method
.method public setFlipName(I)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->flipName:I
return-void
.end method