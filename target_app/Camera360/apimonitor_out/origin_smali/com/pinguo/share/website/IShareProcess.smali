.class public interface abstract Lcom/pinguo/share/website/IShareProcess;
.super Ljava/lang/Object;
.source "IShareProcess.java"


# virtual methods
.method public abstract finish(Ljava/util/Map;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/share/website/ShareResultBean;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract noActive()V
.end method

.method public abstract noBind()V
.end method

.method public abstract noLocationIdForJiepang()V
.end method

.method public abstract noNet()V
.end method

.method public abstract processBefore(Lcom/pinguo/share/website/WebShareBean;)V
.end method

.method public abstract rate(I)V
.end method

.method public abstract reBind(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showDialog(Lcom/pinguo/share/website/WebShareBean;)V
.end method
