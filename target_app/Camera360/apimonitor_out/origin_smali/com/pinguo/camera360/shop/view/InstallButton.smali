.class public interface abstract Lcom/pinguo/camera360/shop/view/InstallButton;
.super Ljava/lang/Object;
.source "InstallButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
    }
.end annotation


# static fields
.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_INSTALLED:I = 0x1

.field public static final STATE_INSTALLING:I = 0x3

.field public static final STATE_UNINSTALLED:I


# virtual methods
.method public abstract setOnInstallBtnClickListener(Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;)V
.end method

.method public abstract setState(I)V
.end method