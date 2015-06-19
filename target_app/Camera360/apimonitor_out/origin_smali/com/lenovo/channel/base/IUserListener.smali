.class public interface abstract Lcom/lenovo/channel/base/IUserListener;
.super Ljava/lang/Object;
.source "IUserListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/channel/base/IUserListener$UserEventType;
    }
.end annotation


# virtual methods
.method public abstract onLocalUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
.end method

.method public abstract onRemoteUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
.end method
