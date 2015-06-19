.class public Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
.super Ljava/lang/Object;
.source "PGEditMenusBean.java"
.implements Ljava/lang/Cloneable;
.field protected childList:Ljava/util/List;
.field protected effect:Ljava/lang/Enum;
.field protected effectValue:Ljava/lang/String;
.field protected icon:Ljava/lang/String;
.field protected mContext:Landroid/content/Context;
.field protected name:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->mContext:Landroid/content/Context;
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 3
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
:try_end_3
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const/4 v1, 0x0
goto :goto_4
.end method
.method public getChildList()Ljava/util/List;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->childList:Ljava/util/List;
return-object v0
.end method
.method public getEffect()Ljava/lang/Enum;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->effect:Ljava/lang/Enum;
return-object v0
.end method
.method public getEffectValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->effectValue:Ljava/lang/String;
return-object v0
.end method
.method public getIcon()Landroid/graphics/drawable/Drawable;
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->mContext:Landroid/content/Context;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->icon:Ljava/lang/String;
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->name:Ljava/lang/String;
return-object v0
.end method
.method public setChildList(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->childList:Ljava/util/List;
return-void
.end method
.method public setEffect(Ljava/lang/Enum;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->effect:Ljava/lang/Enum;
return-void
.end method
.method public setEffectValue(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "Effect="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->effectValue:Ljava/lang/String;
return-void
.end method
.method public setIcon(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->icon:Ljava/lang/String;
return-void
.end method
.method public setName(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->mContext:Landroid/content/Context;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->mContext:Landroid/content/Context;
invoke-static {v1, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->name:Ljava/lang/String;
return-void
.end method