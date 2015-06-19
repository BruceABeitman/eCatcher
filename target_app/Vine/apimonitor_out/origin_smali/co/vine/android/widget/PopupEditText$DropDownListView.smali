.class Lco/vine/android/widget/PopupEditText$DropDownListView;
.super Lco/vine/android/views/SdkListView;
.source "PopupEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/PopupEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/views/SdkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
