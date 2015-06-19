.class public Lcom/facebook/katana/MailboxThreadsAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailboxThreadsAdapter.java"
.field private final mCheckBoxListener:Landroid/view/View$OnClickListener;
.field private final mContext:Landroid/content/Context;
.field private final mLocalUserId:J
.field private final mMarkedThreads:Ljava/util/Map;
.field private final mTouchDelegateRect:Landroid/graphics/Rect;
.field private final mUserImageClickListener:Landroid/view/View$OnClickListener;
.field private final mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
.field private final mUserSelectionListener:Lcom/facebook/katana/UserSelectionListener;
.field private final mViewHolders:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/CheckboxAdapterListener;Lcom/facebook/katana/UserSelectionListener;)V
.registers 11
const/16 v3, 0x28
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
iput-object p1, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mContext:Landroid/content/Context;
iput-object p4, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mViewHolders:Ljava/util/List;
iput-object p6, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mUserSelectionListener:Lcom/facebook/katana/UserSelectionListener;
invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v0
iput-wide v0, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mLocalUserId:J
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v0, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mTouchDelegateRect:Landroid/graphics/Rect;
new-instance v0, Lcom/facebook/katana/MailboxThreadsAdapter$1;
invoke-direct {v0, p0, p5}, Lcom/facebook/katana/MailboxThreadsAdapter$1;-><init>(Lcom/facebook/katana/MailboxThreadsAdapter;Lcom/facebook/katana/CheckboxAdapterListener;)V
iput-object v0, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mCheckBoxListener:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/facebook/katana/MailboxThreadsAdapter$2;
invoke-direct {v0, p0}, Lcom/facebook/katana/MailboxThreadsAdapter$2;-><init>(Lcom/facebook/katana/MailboxThreadsAdapter;)V
iput-object v0, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mUserImageClickListener:Landroid/view/View$OnClickListener;
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/MailboxThreadsAdapter;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
return-object v0
.end method
.method static synthetic access$1(Lcom/facebook/katana/MailboxThreadsAdapter;)Lcom/facebook/katana/UserSelectionListener;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mUserSelectionListener:Lcom/facebook/katana/UserSelectionListener;
return-object v0
.end method
.method public areAllThreadsChecked()Z
.registers 4
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/facebook/katana/MailboxThreadsAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {p0}, Lcom/facebook/katana/MailboxThreadsAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v0
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->size()I
move-result v1
if-ne v0, v1, :cond_19
const/4 v0, 0x1
:goto_18
return v0
:cond_19
move v0, v2
goto :goto_18
:cond_1b
move v0, v2
goto :goto_18
.end method
.method public areAnyThreadsChecked()Z
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 28
const/16 v18, 0x5
move-object/from16 v0, p3
move/from16 v1, v18
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v11
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v16
check-cast v16, Lcom/facebook/katana/ViewHolder;
invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v18
move-object/from16 v0, v16
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V
const/16 v18, 0x2
move-object/from16 v0, p3
move/from16 v1, v18
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
if-nez v7, :cond_29
const-string v7, ""
:cond_29
const v18, 0x7f0b005c
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p2
check-cast p2, Landroid/widget/TextView;
move-object/from16 v0, p2
move-object v1, v7
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v18, 0x9
move-object/from16 v0, p3
move/from16 v1, v18
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
if-eqz v10, :cond_199
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/MailboxThreadsAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/MailboxThreadsAdapter;->mContext:Landroid/content/Context;
move-object/from16 v19, v0
move-object/from16 v0, v18
move-object/from16 v1, v19
move-wide v2, v11
move-object v4, v10
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v5
if-eqz v5, :cond_18b
move-object/from16 v0, v16
iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
move-object/from16 v18, v0
move-object/from16 v0, v18
move-object v1, v5
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_6c
move-object/from16 v0, v16
iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
move-object/from16 v18, v0
invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
const v18, 0x7f0b005d
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p2
check-cast p2, Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/MailboxThreadsAdapter;->mContext:Landroid/content/Context;
move-object/from16 v18, v0
sget-object v19, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MAILBOX_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
const/16 v20, 0x8
move-object/from16 v0, p3
move/from16 v1, v20
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v20
const-wide/16 v22, 0x3e8
mul-long v20, v20, v22
invoke-static/range {v18 .. v21}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, p2
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v18, 0x7f0b005e
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p2
check-cast p2, Landroid/widget/TextView;
const/16 v18, 0x4
move-object/from16 v0, p3
move/from16 v1, v18
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, p2
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v18, 0x7f0b005f
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v13
check-cast v13, Landroid/widget/TextView;
const/16 v18, 0x7
move-object/from16 v0, p3
move/from16 v1, v18
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v18
if-lez v18, :cond_1a7
sget-object v18, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
move-object v0, v13
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
const v18, 0x7f020030
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
:goto_f0
const/16 v18, 0x3
move-object/from16 v0, p3
move/from16 v1, v18
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v14
if-eqz v14, :cond_1ba
invoke-virtual {v14}, Ljava/lang/String;->length()I
move-result v18
if-lez v18, :cond_1ba
invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_105
const/16 v18, 0x1
move-object/from16 v0, p3
move/from16 v1, v18
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v18
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v15
const v18, 0x7f0b006b
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/CheckBox;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
move-object/from16 v18, v0
move-object/from16 v0, v18
move-object v1, v15
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v18
move-object v0, v6
move/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
invoke-virtual {v6, v15}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/MailboxThreadsAdapter;->mCheckBoxListener:Landroid/view/View$OnClickListener;
move-object/from16 v18, v0
move-object v0, v6
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;
move-result-object v18
if-nez v18, :cond_15f
new-instance v18, Landroid/view/TouchDelegate;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/MailboxThreadsAdapter;->mTouchDelegateRect:Landroid/graphics/Rect;
move-object/from16 v19, v0
move-object/from16 v0, v18
move-object/from16 v1, v19
move-object v2, v6
invoke-direct {v0, v1, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V
:cond_15f
const v18, 0x7f0b006c
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v9
const-wide/16 v18, -0x1
cmp-long v18, v18, v11
if-eqz v18, :cond_1cf
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/MailboxThreadsAdapter;->mLocalUserId:J
move-wide/from16 v18, v0
cmp-long v18, v11, v18
if-eqz v18, :cond_1cf
const/16 v18, 0x0
move/from16 v8, v18
:goto_17e
if-eqz v8, :cond_1d4
const/16 v18, 0x0
move/from16 v17, v18
:goto_184
move-object v0, v9
move/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_18b
move-object/from16 v0, v16
iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
move-object/from16 v18, v0
const v19, 0x7f0200b3
invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V
goto/16 :goto_6c
:cond_199
move-object/from16 v0, v16
iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
move-object/from16 v18, v0
const v19, 0x7f0200b3
invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V
goto/16 :goto_6c
:cond_1a7
sget-object v18, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
move-object v0, v13
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
const/16 v18, 0x0
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto/16 :goto_f0
:cond_1ba
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/MailboxThreadsAdapter;->mContext:Landroid/content/Context;
move-object/from16 v18, v0
const v19, 0x7f080094
invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v18
move-object v0, v13
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_105
:cond_1cf
const/16 v18, 0x1
move/from16 v8, v18
goto :goto_17e
:cond_1d4
const/16 v18, 0x8
move/from16 v17, v18
goto :goto_184
.end method
.method public checkAll()V
.registers 6
invoke-virtual {p0}, Lcom/facebook/katana/MailboxThreadsAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_37
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->size()I
move-result v2
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v3
if-ge v2, v3, :cond_37
invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I
move-result v1
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_37
:cond_1c
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
const/4 v3, 0x1
invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
const/4 v4, 0x0
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v2
if-nez v2, :cond_1c
invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z
invoke-virtual {p0}, Lcom/facebook/katana/MailboxThreadsAdapter;->notifyDataSetChanged()V
:cond_37
return-void
.end method
.method public getMarkedThreads()[J
.registers 7
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
invoke-interface {v3}, Ljava/util/Map;->size()I
move-result v3
new-array v1, v3, [J
const/4 v0, 0x0
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_13
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_1a
return-object v1
:cond_1a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Long;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v4
aput-wide v4, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_13
.end method
.method public isEmpty()Z
.registers 3
invoke-virtual {p0}, Lcom/facebook/katana/MailboxThreadsAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v1
if-nez v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
invoke-super {p0}, Landroid/widget/CursorAdapter;->isEmpty()Z
move-result v0
goto :goto_7
.end method
.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mContext:Landroid/content/Context;
const-string v4, "layout_inflater"
invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/LayoutInflater;
const v3, 0x7f030025
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/facebook/katana/ViewHolder;
const v3, 0x7f0b005b
invoke-direct {v1, v0, v3}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v3, v1, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
iget-object v4, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mUserImageClickListener:Landroid/view/View$OnClickListener;
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object v0
.end method
.method public uncheckAll()V
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_10
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
invoke-virtual {p0}, Lcom/facebook/katana/MailboxThreadsAdapter;->notifyDataSetChanged()V
:cond_10
return-void
.end method
.method public updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
.registers 7
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_6
:cond_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_d
return-void
:cond_d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/ViewHolder;
invoke-virtual {v1}, Lcom/facebook/katana/ViewHolder;->getItemId()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-eqz v0, :cond_6
invoke-virtual {p1}, Lcom/facebook/katana/binding/UserImage;->getFriendId()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_6
iget-object v3, v1, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {p1}, Lcom/facebook/katana/binding/UserImage;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_6
.end method