.class public Lcom/spotify/android/paste/widget/internal/PasteRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/android/paste/widget/internal/b;


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

    const v2, 0x10100a2

    aput v2, v0, v1

    sput-object v0, Lcom/spotify/android/paste/widget/internal/PasteRelativeLayout;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/internal/PasteRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/internal/PasteRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/android/paste/widget/internal/PasteRelativeLayout;->a:Z

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/internal/PasteRelativeLayout;->refreshDrawableState()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/android/paste/widget/internal/PasteRelativeLayout;->a:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/spotify/android/paste/widget/internal/PasteRelativeLayout;->b:[I

    invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/internal/PasteRelativeLayout;->mergeDrawableStates([I[I)[I

    :cond_f
    return-object v0
.end method
