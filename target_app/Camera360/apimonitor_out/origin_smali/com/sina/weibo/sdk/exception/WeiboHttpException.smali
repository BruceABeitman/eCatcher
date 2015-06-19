.class public Lcom/sina/weibo/sdk/exception/WeiboHttpException;
.super Lcom/sina/weibo/sdk/exception/WeiboException;
.source "WeiboHttpException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/sina/weibo/sdk/exception/WeiboHttpException;->mStatusCode:I

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/sina/weibo/sdk/exception/WeiboHttpException;->mStatusCode:I

    return v0
.end method
