.class public Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
.super Ljava/lang/Object;
.source "WebSiteInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/website/WebSiteInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SsoBean"
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private redirectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->appSecret:Ljava/lang/String;

    return-void
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->redirectUrl:Ljava/lang/String;

    return-void
.end method
