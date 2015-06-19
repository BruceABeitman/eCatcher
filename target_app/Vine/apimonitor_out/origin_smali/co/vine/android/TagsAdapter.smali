.class public Lco/vine/android/TagsAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "TagsAdapter.java"


# instance fields
.field protected final mAppController:Lco/vine/android/client/AppController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p2, p0, Lco/vine/android/TagsAdapter;->mAppController:Lco/vine/android/client/AppController;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/widget/TagViewHolder;

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090086

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v5, "#"

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-static {v3, v0, v5, v6, v7}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v5, v2, Lco/vine/android/widget/TagViewHolder;->tagTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v4, v2, Lco/vine/android/widget/TagViewHolder;->tagName:Ljava/lang/String;

    :cond_3c
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f03009b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lco/vine/android/widget/TagViewHolder;

    invoke-direct {v0, v2}, Lco/vine/android/widget/TagViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method
