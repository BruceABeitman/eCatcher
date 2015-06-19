.class public final Lcom/spotify/mobile/android/ui/adapter/d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/adapter/b;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/adapter/b;Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v4, -0x1

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/d;->a:Lcom/spotify/mobile/android/ui/adapter/b;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/adapter/d;->setEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/adapter/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_e
    iget v1, p1, Lcom/spotify/mobile/android/ui/adapter/b;->j:I

    if-ge v0, v1, :cond_23

    invoke-virtual {p1, p0}, Lcom/spotify/mobile/android/ui/adapter/b;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/spotify/mobile/android/ui/adapter/d;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_23
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;I)V
    .registers 8

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/d;->a:Lcom/spotify/mobile/android/ui/adapter/b;

    iget v2, v2, Lcom/spotify/mobile/android/ui/adapter/b;->j:I

    if-ge v0, v2, :cond_40

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/adapter/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/d;->a:Lcom/spotify/mobile/android/ui/adapter/b;

    invoke-virtual {v3, v2, p1}, Lcom/spotify/mobile/android/ui/adapter/b;->a(Landroid/view/View;Landroid/database/Cursor;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/d;->a:Lcom/spotify/mobile/android/ui/adapter/b;

    iget-object v3, v3, Lcom/spotify/mobile/android/ui/adapter/b;->k:Lcom/spotify/mobile/android/ui/adapter/c;

    if-eqz v3, :cond_38

    add-int v3, p2, v0

    new-instance v4, Lcom/spotify/mobile/android/ui/adapter/d$1;

    invoke-direct {v4, p0, v3}, Lcom/spotify/mobile/android/ui/adapter/d$1;-><init>(Lcom/spotify/mobile/android/ui/adapter/d;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/spotify/mobile/android/ui/adapter/d$2;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/adapter/d$2;-><init>(Lcom/spotify/mobile/android/ui/adapter/d;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_38
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3b
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_38

    :cond_40
    return-void
.end method
