.class public Lcom/spotify/android/paste/widget/CheckableImageButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final b:[I


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/spotify/android/paste/widget/CheckableImageButton;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/android/paste/widget/CheckableImageButton;->a:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CheckableImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/spotify/android/paste/widget/CheckableImageButton;->b:[I

    invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/CheckableImageButton;->mergeDrawableStates([I[I)[I

    :cond_11
    return-object v0
.end method

.method public performClick()Z
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CheckableImageButton;->toggle()V

    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/android/paste/widget/CheckableImageButton;->a:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/spotify/android/paste/widget/CheckableImageButton;->a:Z

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CheckableImageButton;->refreshDrawableState()V

    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CheckableImageButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/CheckableImageButton;->setChecked(Z)V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
