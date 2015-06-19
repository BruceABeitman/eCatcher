.class public interface abstract Lcom/lenovo/channel/base/IShareHistory;
.super Ljava/lang/Object;
.source "IShareHistory.java"


# virtual methods
.method public abstract addSharedTotalSize(Lcom/lenovo/channel/base/ShareRecord$ShareType;J)V
.end method

.method public abstract getSharedItemCount(Lcom/lenovo/channel/base/ShareRecord$ShareType;)I
.end method

.method public abstract getSharedTotalSize(Lcom/lenovo/channel/base/ShareRecord$ShareType;)J
.end method

.method public abstract getThumbnailKnownStatus(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Z
.end method

.method public abstract increaseSharedItemCount(Lcom/lenovo/channel/base/ShareRecord$ShareType;)V
.end method

.method public abstract insertCollectionShareRecord(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;)V
.end method

.method public abstract insertItemShareRecord(Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;)V
.end method

.method public abstract insertItemShareRecords(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertUser(Lcom/lenovo/channel/base/UserInfo;)V
.end method

.method public abstract isExistShareRecord()Z
.end method

.method public abstract isShareRecordExist(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract listShareRecords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract listShareRecords(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract listUsers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryCollection(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareCollection;
.end method

.method public abstract queryContentItem(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
.end method

.method public abstract queryShareRecord(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord;
.end method

.method public abstract removeAllShareRecords(Z)V
.end method

.method public abstract removeShareRecord(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setThumbnailKnownStatus(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;Z)V
.end method

.method public abstract updateCollectionStatus(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)V
.end method

.method public abstract updateItemStatus(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)V
.end method

.method public abstract updateShareRecordStatus()V
.end method

.method public abstract updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V
.end method
