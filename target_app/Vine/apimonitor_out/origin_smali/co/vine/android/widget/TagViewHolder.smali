.class public Lco/vine/android/widget/TagViewHolder;
.super Ljava/lang/Object;
.source "TagViewHolder.java"


# instance fields
.field public tagName:Ljava/lang/String;

.field public tagTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/TagViewHolder;->tagTitle:Landroid/widget/TextView;

    return-void
.end method
