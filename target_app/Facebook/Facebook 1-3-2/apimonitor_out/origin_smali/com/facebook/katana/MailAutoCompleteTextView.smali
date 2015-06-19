.class public Lcom/facebook/katana/MailAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "MailAutoCompleteTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 6

    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    move-object v1, v0

    const-string v3, "display_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x42

    if-ne v0, v2, :cond_2a

    invoke-virtual {p0}, Lcom/facebook/katana/MailAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_28

    invoke-virtual {p0}, Lcom/facebook/katana/MailAutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v2, v1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    invoke-virtual {p0, v1}, Lcom/facebook/katana/MailAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    move v0, v7

    :goto_29
    return v0

    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_29
.end method
