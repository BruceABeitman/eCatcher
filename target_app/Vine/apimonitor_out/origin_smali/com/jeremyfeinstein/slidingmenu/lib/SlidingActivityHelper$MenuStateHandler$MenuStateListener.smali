.class public interface abstract Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;
.super Ljava/lang/Object;
.source "SlidingActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MenuStateListener"
.end annotation


# virtual methods
.method public abstract onMenuClick(Landroid/view/View;)V
.end method

.method public abstract onMenuClose()V
.end method

.method public abstract onMenuClosed()V
.end method

.method public abstract onMenuDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
.end method

.method public abstract onMenuOpen()V
.end method

.method public abstract onMenuOpened()V
.end method
