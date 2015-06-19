.class public Lco/vine/android/ComposeFilter;
.super Landroid/widget/Filter;
.source "ComposeFilter.java"
.field private mActivity:Landroid/app/Activity;
.field private mCallback:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
.field private mUserId:J
.method public constructor <init>(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;J)V
.registers 5
invoke-direct {p0}, Landroid/widget/Filter;-><init>()V
move-object v0, p1
check-cast v0, Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iput-object v0, p0, Lco/vine/android/ComposeFilter;->mActivity:Landroid/app/Activity;
iput-object p1, p0, Lco/vine/android/ComposeFilter;->mCallback:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
iput-wide p2, p0, Lco/vine/android/ComposeFilter;->mUserId:J
return-void
.end method
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.registers 11
const/4 v2, 0x0
new-instance v7, Landroid/widget/Filter$FilterResults;
invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_4b
const/4 v0, 0x1
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v4
invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v8
invoke-interface {v8}, Ljava/lang/CharSequence;->length()I
move-result v0
if-lez v0, :cond_4c
invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v3
:goto_1f
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
const-string v4, "@"
invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4e
sget-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->USERS_URI:Landroid/net/Uri;
iget-wide v4, p0, Lco/vine/android/ComposeFilter;->mUserId:J
invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v1
:goto_33
if-eqz v1, :cond_4b
iget-object v0, p0, Lco/vine/android/ComposeFilter;->mActivity:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
move-object v4, v2
move-object v5, v2
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_4b
invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
move-result v0
iput v0, v7, Landroid/widget/Filter$FilterResults;->count:I
iput-object v6, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
:cond_4b
return-object v7
:cond_4c
const/4 v3, 0x0
goto :goto_1f
:cond_4e
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
const-string v4, "#"
invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_5d
sget-object v1, Lco/vine/android/provider/VineSuggestionsProvider;->TAGS_URI:Landroid/net/Uri;
goto :goto_33
:cond_5d
const/4 v1, 0x0
goto :goto_33
.end method
.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.registers 7
iget-object v3, p0, Lco/vine/android/ComposeFilter;->mCallback:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
invoke-interface {v3}, Lco/vine/android/widget/PopupEditText$PopupEditTextListener;->getPopupAdapter()Landroid/support/v4/widget/CursorAdapter;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v1
if-eqz v1, :cond_11
iget-object v3, p0, Lco/vine/android/ComposeFilter;->mActivity:Landroid/app/Activity;
invoke-virtual {v3, v1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V
:cond_11
iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
check-cast v0, Landroid/database/Cursor;
if-eqz v0, :cond_1c
iget-object v3, p0, Lco/vine/android/ComposeFilter;->mActivity:Landroid/app/Activity;
invoke-virtual {v3, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V
:cond_1c
invoke-virtual {v2, v0}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V
return-void
.end method