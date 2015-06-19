.class public abstract Landroid/support/v4/widget/m;
.super Landroid/support/v4/widget/b;
.source "SourceFile"


# instance fields
.field private j:I

.field private k:I

.field private l:Landroid/view/LayoutInflater;


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Landroid/support/v4/widget/m;->l:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v4/widget/m;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Landroid/support/v4/widget/m;->l:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v4/widget/m;->k:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
