.class public interface abstract Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
.super Ljava/lang/Object;
.source "IDPhotoSelectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDPhotoSelectListItemAware"
.end annotation


# virtual methods
.method public abstract getFormat()Ljava/lang/String;
.end method

.method public abstract getFrag()Ljava/lang/String;
.end method

.method public abstract getIDPhoto()Landroid/graphics/Bitmap;
.end method

.method public abstract getImageUri()Ljava/lang/String;
.end method

.method public abstract getTypeName()Ljava/lang/String;
.end method

.method public abstract getTypeSize()Ljava/lang/String;
.end method

.method public abstract isChecked()Z
.end method

.method public abstract setCheck(Z)V
.end method
