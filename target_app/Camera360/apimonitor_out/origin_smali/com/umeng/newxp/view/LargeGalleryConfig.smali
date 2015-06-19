.class public Lcom/umeng/newxp/view/LargeGalleryConfig;
.super Ljava/lang/Object;
.source "LargeGalleryConfig.java"


# instance fields
.field private a:Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;

.field private b:Lcom/umeng/newxp/controller/XpListenersCenter$onPageChangedListener;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGalleryConfig;->c:Landroid/view/View;

    return-void
.end method

.method public getBindListener()Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGalleryConfig;->a:Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;

    return-object v0
.end method

.method public getPageChangedListener()Lcom/umeng/newxp/controller/XpListenersCenter$onPageChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGalleryConfig;->b:Lcom/umeng/newxp/controller/XpListenersCenter$onPageChangedListener;

    return-object v0
.end method

.method public getParent()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGalleryConfig;->c:Landroid/view/View;

    return-object v0
.end method

.method public setBindListener(Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;)Lcom/umeng/newxp/view/LargeGalleryConfig;
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGalleryConfig;->a:Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;

    return-object p0
.end method

.method public setPageChangedListener(Lcom/umeng/newxp/controller/XpListenersCenter$onPageChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGalleryConfig;->b:Lcom/umeng/newxp/controller/XpListenersCenter$onPageChangedListener;

    return-void
.end method
