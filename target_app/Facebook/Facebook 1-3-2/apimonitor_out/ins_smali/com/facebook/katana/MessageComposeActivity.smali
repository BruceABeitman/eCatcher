.class public Lcom/facebook/katana/MessageComposeActivity;
.super Lcom/facebook/katana/FacebookActivity;
.source "MessageComposeActivity.java"
.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "extra_subject"
.field private static final PROGRESS_SEND_DIALOG:I = 0x1
.field private static final QUIT_DIALOG:I = 0x2
.field private static final REQUEST_CODE_PICK_FRIEND:I = 0x1
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mDropdownAdapter:Lcom/facebook/katana/DropdownFriendsAdapter;
.field private final mRecipients:Ljava/util/ArrayList;
.field private mRecipientsContainer:Landroid/view/ViewGroup;
.field private mRemoveButtonListener:Landroid/view/View$OnClickListener;
.field private mSendReqId:Ljava/lang/String;
.field private final mViewHolders:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/FacebookActivity;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipients:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mViewHolders:Ljava/util/List;
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/MessageComposeActivity;)Lcom/facebook/katana/DropdownFriendsAdapter;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mDropdownAdapter:Lcom/facebook/katana/DropdownFriendsAdapter;
return-object v0
.end method
.method static synthetic access$11(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/binding/UserImage;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/MessageComposeActivity;->updateUserViewImage(Lcom/facebook/katana/binding/UserImage;)V
return-void
.end method
.method static synthetic access$12(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/service/api/FacebookUser;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/MessageComposeActivity;->addRecipient(Lcom/facebook/katana/service/api/FacebookUser;)V
return-void
.end method
.method static synthetic access$13(Lcom/facebook/katana/MessageComposeActivity;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/MessageComposeActivity;->send()V
return-void
.end method
.method static synthetic access$14(Lcom/facebook/katana/MessageComposeActivity;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipients:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic access$15(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/service/api/FacebookUser;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/MessageComposeActivity;->removeRecipient(Lcom/facebook/katana/service/api/FacebookUser;)V
return-void
.end method
.method static synthetic access$9(Lcom/facebook/katana/MessageComposeActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MessageComposeActivity;->mSendReqId:Ljava/lang/String;
return-void
.end method
.method private addRecipient(Lcom/facebook/katana/service/api/FacebookUser;)V
.registers 16
const v13, 0x7f0200b3
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v6
iget-object v10, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_d
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-nez v11, :cond_85
iget-object v10, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const-string v10, "layout_inflater"
invoke-virtual {p0, v10}, Lcom/facebook/katana/MessageComposeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/view/LayoutInflater;
const v10, 0x7f030049
const/4 v11, 0x0
invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
new-instance v8, Lcom/facebook/katana/ViewHolder;
const v10, 0x7f0b002e
invoke-direct {v8, v3, v10}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v10
invoke-virtual {v8, v10}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V
iget-object v10, p0, Lcom/facebook/katana/MessageComposeActivity;->mViewHolders:Ljava/util/List;
invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_9a
iget-object v10, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v10}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v10
invoke-virtual {v10, p0, v6, v7, v5}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_94
iget-object v10, v8, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_56
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_63
const v10, 0x7f080053
invoke-virtual {p0, v10}, Lcom/facebook/katana/MessageComposeActivity;->getString(I)Ljava/lang/String;
move-result-object v1
:cond_63
const v10, 0x7f0b002f
invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v10
check-cast v10, Landroid/widget/TextView;
invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v10, 0x7f0b00b5
invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
iget-object v10, p0, Lcom/facebook/katana/MessageComposeActivity;->mRemoveButtonListener:Landroid/view/View$OnClickListener;
invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v10, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipientsContainer:Landroid/view/ViewGroup;
const/4 v11, 0x0
invoke-virtual {v10, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
:goto_84
return-void
:cond_85
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v11
cmp-long v11, v11, v6
if-nez v11, :cond_d
goto :goto_84
:cond_94
iget-object v10, v8, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_56
:cond_9a
iget-object v10, v8, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_56
.end method
.method private removeRecipient(Lcom/facebook/katana/service/api/FacebookUser;)V
.registers 8
iget-object v3, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipientsContainer:Landroid/view/ViewGroup;
invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
iget-object v3, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipientsContainer:Landroid/view/ViewGroup;
invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
iget-object v3, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
iget-object v3, p0, Lcom/facebook/katana/MessageComposeActivity;->mViewHolders:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_16
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_22
:goto_1c
iget-object v3, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipientsContainer:Landroid/view/ViewGroup;
invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V
return-void
:cond_22
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/facebook/katana/ViewHolder;
invoke-virtual {v2}, Lcom/facebook/katana/ViewHolder;->getItemId()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-eqz v0, :cond_16
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_16
iget-object v3, p0, Lcom/facebook/katana/MessageComposeActivity;->mViewHolders:Ljava/util/List;
invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
goto :goto_1c
.end method
.method private send()V
.registers 9
const/4 v7, 0x1
iget-object v3, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-nez v3, :cond_18
const v3, 0x7f0800a6
invoke-virtual {p0, v3}, Lcom/facebook/katana/MessageComposeActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v3
invoke-virtual {v3}, Landroid/widget/Toast;->show()V
:cond_17
:goto_17
return-void
:cond_18
const v3, 0x7f0b0072
invoke-virtual {p0, v3}, Lcom/facebook/katana/MessageComposeActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
const v3, 0x7f0b0073
invoke-virtual {p0, v3}, Lcom/facebook/katana/MessageComposeActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v3
if-lez v3, :cond_17
iget-object v3, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v4, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipients:Ljava/util/ArrayList;
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, p0, v4, v5, v6}, Lcom/facebook/katana/binding/AppSession;->mailboxSend(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/facebook/katana/MessageComposeActivity;->mSendReqId:Ljava/lang/String;
invoke-virtual {p0, v7}, Lcom/facebook/katana/MessageComposeActivity;->showDialog(I)V
goto :goto_17
.end method
.method private updateUserViewImage(Lcom/facebook/katana/binding/UserImage;)V
.registers 7
iget-object v2, p0, Lcom/facebook/katana/MessageComposeActivity;->mViewHolders:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_d
:goto_c
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
iget-object v2, v1, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {p1}, Lcom/facebook/katana/binding/UserImage;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_c
.end method
.method public facebookOnBackPressed()Z
.registers 6
const/4 v4, 0x2
const v3, 0x7f0b0070
invoke-virtual {p0, v3}, Lcom/facebook/katana/MessageComposeActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v2
invoke-interface {v2}, Ljava/lang/CharSequence;->length()I
move-result v3
if-lez v3, :cond_19
invoke-virtual {p0, v4}, Lcom/facebook/katana/MessageComposeActivity;->showDialog(I)V
:goto_17
const/4 v3, 0x1
return v3
:cond_19
const v3, 0x7f0b0072
invoke-virtual {p0, v3}, Lcom/facebook/katana/MessageComposeActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
move-result v3
if-lez v3, :cond_30
invoke-virtual {p0, v4}, Lcom/facebook/katana/MessageComposeActivity;->showDialog(I)V
goto :goto_17
:cond_30
const v3, 0x7f0b0073
invoke-virtual {p0, v3}, Lcom/facebook/katana/MessageComposeActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v3
if-lez v3, :cond_47
invoke-virtual {p0, v4}, Lcom/facebook/katana/MessageComposeActivity;->showDialog(I)V
goto :goto_17
:cond_47
invoke-virtual {p0}, Lcom/facebook/katana/MessageComposeActivity;->finish()V
goto :goto_17
.end method
.method public bridge synthetic finish()V
.registers 1
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->finish()V
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 9
invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/FacebookActivity;->onActivityResult(IILandroid/content/Intent;)V
if-nez p2, :cond_6
:goto_5
:cond_5
return-void
:cond_6
packed-switch p1, :pswitch_data_44
goto :goto_5
:pswitch_a
new-instance v2, Ljava/util/ArrayList;
iget-object v3, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipients:Ljava/util/ArrayList;
invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_15
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_3a
iget-object v3, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipients:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
const-string v3, "com.facebook.katana.PickFriendsActivity.result_friends"
invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_2a
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_5
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/FacebookUser;
invoke-direct {p0, v1}, Lcom/facebook/katana/MessageComposeActivity;->addRecipient(Lcom/facebook/katana/service/api/FacebookUser;)V
goto :goto_2a
:cond_3a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/FacebookUser;
invoke-direct {p0, v1}, Lcom/facebook/katana/MessageComposeActivity;->removeRecipient(Lcom/facebook/katana/service/api/FacebookUser;)V
goto :goto_15
:pswitch_data_44
.packed-switch 0x1
:pswitch_a
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/facebook/katana/MessageComposeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreate(Landroid/os/Bundle;)V
const v4, 0x7f030027
invoke-virtual {p0, v4}, Lcom/facebook/katana/MessageComposeActivity;->setContentView(I)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v4
iput-object v4, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v4, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v4, :cond_18
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_17
const-string v1, " - Lcom/facebook/katana/MessageComposeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_18
const v4, 0x7f0b0070
invoke-virtual {p0, v4}, Lcom/facebook/katana/MessageComposeActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Lcom/facebook/katana/MailAutoCompleteTextView;
new-instance v4, Lcom/facebook/katana/DropdownFriendsAdapter;
iget-object v5, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v5}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v5
invoke-direct {v4, p0, v6, v5}, Lcom/facebook/katana/DropdownFriendsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/UserImagesCache;)V
iput-object v4, p0, Lcom/facebook/katana/MessageComposeActivity;->mDropdownAdapter:Lcom/facebook/katana/DropdownFriendsAdapter;
iget-object v4, p0, Lcom/facebook/katana/MessageComposeActivity;->mDropdownAdapter:Lcom/facebook/katana/DropdownFriendsAdapter;
invoke-virtual {v3, v4}, Lcom/facebook/katana/MailAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V
new-instance v4, Lcom/facebook/katana/MessageComposeActivity$1;
invoke-direct {v4, p0, v3}, Lcom/facebook/katana/MessageComposeActivity$1;-><init>(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/MailAutoCompleteTextView;)V
invoke-virtual {v3, v4}, Lcom/facebook/katana/MailAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v4, Lcom/facebook/katana/MessageComposeActivity$2;
invoke-direct {v4, p0}, Lcom/facebook/katana/MessageComposeActivity$2;-><init>(Lcom/facebook/katana/MessageComposeActivity;)V
invoke-virtual {v3, v4}, Lcom/facebook/katana/MailAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
const v4, 0x7f0b0074
invoke-virtual {p0, v4}, Lcom/facebook/katana/MessageComposeActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
new-instance v5, Lcom/facebook/katana/MessageComposeActivity$3;
invoke-direct {v5, p0}, Lcom/facebook/katana/MessageComposeActivity$3;-><init>(Lcom/facebook/katana/MessageComposeActivity;)V
invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v4, 0x7f0b0075
invoke-virtual {p0, v4}, Lcom/facebook/katana/MessageComposeActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
new-instance v5, Lcom/facebook/katana/MessageComposeActivity$4;
invoke-direct {v5, p0}, Lcom/facebook/katana/MessageComposeActivity$4;-><init>(Lcom/facebook/katana/MessageComposeActivity;)V
invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/facebook/katana/MessageComposeActivity$5;
invoke-direct {v0, p0}, Lcom/facebook/katana/MessageComposeActivity$5;-><init>(Lcom/facebook/katana/MessageComposeActivity;)V
const v4, 0x7f0b006f
invoke-virtual {p0, v4}, Lcom/facebook/katana/MessageComposeActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v4, Lcom/facebook/katana/MessageComposeActivity$6;
invoke-direct {v4, p0}, Lcom/facebook/katana/MessageComposeActivity$6;-><init>(Lcom/facebook/katana/MessageComposeActivity;)V
iput-object v4, p0, Lcom/facebook/katana/MessageComposeActivity;->mRemoveButtonListener:Landroid/view/View$OnClickListener;
const v4, 0x7f0b0071
invoke-virtual {p0, v4}, Lcom/facebook/katana/MessageComposeActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/view/ViewGroup;
iput-object v4, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipientsContainer:Landroid/view/ViewGroup;
invoke-virtual {p0}, Lcom/facebook/katana/MessageComposeActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-eqz v1, :cond_94
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_8e
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_9d
:cond_94
new-instance v4, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;
invoke-direct {v4, p0, v6}, Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;-><init>(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/MessageComposeActivity$ComposeAppSessionListener;)V
iput-object v4, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
goto/16 :goto_17
:cond_9d
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/facebook/katana/service/api/FacebookUser;
invoke-direct {p0, v2}, Lcom/facebook/katana/MessageComposeActivity;->addRecipient(Lcom/facebook/katana/service/api/FacebookUser;)V
goto :goto_8e
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 13
const/4 v9, 0x1
const/4 v1, 0x0
const/4 v7, 0x0
packed-switch p1, :pswitch_data_4e
move-object v0, v7
:goto_7
return-object v0
:pswitch_8
new-instance v10, Landroid/app/ProgressDialog;
invoke-direct {v10, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v0, 0x7f08009f
invoke-virtual {p0, v0}, Lcom/facebook/katana/MessageComposeActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v10, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v0, v10
goto :goto_7
:pswitch_22
const v0, 0x7f0800a8
invoke-virtual {p0, v0}, Lcom/facebook/katana/MessageComposeActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const v2, 0x1080027
const v0, 0x7f0800a7
invoke-virtual {p0, v0}, Lcom/facebook/katana/MessageComposeActivity;->getString(I)Ljava/lang/String;
move-result-object v3
const v0, 0x7f0801a2
invoke-virtual {p0, v0}, Lcom/facebook/katana/MessageComposeActivity;->getString(I)Ljava/lang/String;
move-result-object v4
new-instance v5, Lcom/facebook/katana/MessageComposeActivity$7;
invoke-direct {v5, p0}, Lcom/facebook/katana/MessageComposeActivity$7;-><init>(Lcom/facebook/katana/MessageComposeActivity;)V
const v0, 0x7f0800b6
invoke-virtual {p0, v0}, Lcom/facebook/katana/MessageComposeActivity;->getString(I)Ljava/lang/String;
move-result-object v6
move-object v0, p0
move-object v8, v7
invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;
move-result-object v10
move-object v0, v10
goto :goto_7
:pswitch_data_4e
.packed-switch 0x1
:pswitch_8
:pswitch_22
.end packed-switch
.end method
.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/MessageComposeActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onPause()V
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/MessageComposeActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/facebook/katana/MessageComposeActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_11
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_10
const-string v1, " - Lcom/facebook/katana/MessageComposeActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_11
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mSendReqId:Ljava/lang/String;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/MessageComposeActivity;->mSendReqId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/facebook/katana/MessageComposeActivity;->removeDialog(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mSendReqId:Ljava/lang/String;
:cond_26
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/MessageComposeActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
goto :goto_10
.end method
.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity;->mRecipients:Ljava/util/ArrayList;
return-object v0
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public bridge synthetic startActivity(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarPrimaryActionClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarSearchClickHandler(Landroid/view/View;)V
return-void
.end method