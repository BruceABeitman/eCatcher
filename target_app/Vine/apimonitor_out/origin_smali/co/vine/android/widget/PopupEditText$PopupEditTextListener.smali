.class public interface abstract Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
.super Ljava/lang/Object;
.source "PopupEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/PopupEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PopupEditTextListener"
.end annotation


# virtual methods
.method public abstract getPopupAdapter()Landroid/support/v4/widget/CursorAdapter;
.end method

.method public abstract onFiltering(Ljava/lang/CharSequence;)V
.end method

.method public abstract onPopupItemSelected(IILjava/lang/CharSequence;J)V
.end method

.method public abstract onPopupShown()V
.end method

.method public abstract setPopupAdapter(Ljava/lang/String;)V
.end method
