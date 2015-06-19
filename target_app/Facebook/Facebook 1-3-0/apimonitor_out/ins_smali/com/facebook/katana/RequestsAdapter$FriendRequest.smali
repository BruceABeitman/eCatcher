.class  Lcom/facebook/katana/RequestsAdapter$FriendRequest;
.super Ljava/lang/Object;
.source "RequestsAdapter.java"
.field private static synthetic $SWITCH_TABLE$com$facebook$katana$RequestsAdapter$RequestState:[I
.field  mMutualFriends:I
.field  mProfilePicture:Landroid/graphics/Bitmap;
.field  mRequestor:Lcom/facebook/katana/service/api/FacebookUser;
.field  mState:Lcom/facebook/katana/RequestsAdapter$RequestState;
.field  mView:Landroid/view/View;
.field final synthetic this$0:Lcom/facebook/katana/RequestsAdapter;
.method static synthetic $SWITCH_TABLE$com$facebook$katana$RequestsAdapter$RequestState()[I
.registers 3
sget-object v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->$SWITCH_TABLE$com$facebook$katana$RequestsAdapter$RequestState:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/facebook/katana/RequestsAdapter$RequestState;->values()[Lcom/facebook/katana/RequestsAdapter$RequestState;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;
invoke-virtual {v1}, Lcom/facebook/katana/RequestsAdapter$RequestState;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_15
:goto_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44
sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMED:Lcom/facebook/katana/RequestsAdapter$RequestState;
invoke-virtual {v1}, Lcom/facebook/katana/RequestsAdapter$RequestState;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42
:try_start_1e
:goto_1e
sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;
invoke-virtual {v1}, Lcom/facebook/katana/RequestsAdapter$RequestState;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40
:goto_27
:try_start_27
sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORED:Lcom/facebook/katana/RequestsAdapter$RequestState;
invoke-virtual {v1}, Lcom/facebook/katana/RequestsAdapter$RequestState;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e
sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORING:Lcom/facebook/katana/RequestsAdapter$RequestState;
invoke-virtual {v1}, Lcom/facebook/katana/RequestsAdapter$RequestState;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_39
:try_end_39
.catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c
sput-object v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->$SWITCH_TABLE$com$facebook$katana$RequestsAdapter$RequestState:[I
goto :goto_4
:catch_3c
move-exception v1
goto :goto_39
:catch_3e
move-exception v1
goto :goto_30
:catch_40
move-exception v1
goto :goto_27
:catch_42
move-exception v1
goto :goto_1e
:catch_44
move-exception v1
goto :goto_15
.end method
.method constructor <init>(Lcom/facebook/katana/RequestsAdapter;Lcom/facebook/katana/service/api/FacebookUser;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->this$0:Lcom/facebook/katana/RequestsAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;
iput-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mState:Lcom/facebook/katana/RequestsAdapter$RequestState;
const/4 v0, -0x1
iput v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mMutualFriends:I
iput-object p2, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mRequestor:Lcom/facebook/katana/service/api/FacebookUser;
return-void
.end method
.method static synthetic access$1(Lcom/facebook/katana/RequestsAdapter$FriendRequest;)Lcom/facebook/katana/RequestsAdapter;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->this$0:Lcom/facebook/katana/RequestsAdapter;
return-object v0
.end method
.method  getState()Lcom/facebook/katana/RequestsAdapter$RequestState;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mState:Lcom/facebook/katana/RequestsAdapter$RequestState;
return-object v0
.end method
.method  setMutualFriendCount(I)V
.registers 2
iput p1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mMutualFriends:I
invoke-virtual {p0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->updateView()V
return-void
.end method
.method  setProfilePicture(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mProfilePicture:Landroid/graphics/Bitmap;
invoke-virtual {p0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->updateView()V
return-void
.end method
.method  setState(Lcom/facebook/katana/RequestsAdapter$RequestState;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mState:Lcom/facebook/katana/RequestsAdapter$RequestState;
invoke-virtual {p0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->updateView()V
return-void
.end method
.method declared-synchronized updateView()V
.registers 13
monitor-enter p0
:try_start_1
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_98
if-nez v6, :cond_7
:goto_5
monitor-exit p0
return-void
:cond_7
:try_start_7
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
new-instance v7, Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;
invoke-direct {v7, p0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;-><init>(Lcom/facebook/katana/RequestsAdapter$FriendRequest;)V
invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
const v7, 0x7f0b009b
invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mRequestor:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
const v7, 0x7f0b009d
invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
const v7, 0x7f0b009e
invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
const v7, 0x7f0b009c
invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mState:Lcom/facebook/katana/RequestsAdapter$RequestState;
sget-object v7, Lcom/facebook/katana/RequestsAdapter$RequestState;->NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;
if-ne v6, v7, :cond_be
const/4 v6, 0x0
invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V
const/4 v6, 0x0
invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V
new-instance v6, Lcom/facebook/katana/RequestsAdapter$OnClick;
iget-object v7, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->this$0:Lcom/facebook/katana/RequestsAdapter;
const/4 v8, 0x1
invoke-direct {v6, v7, p0, v8}, Lcom/facebook/katana/RequestsAdapter$OnClick;-><init>(Lcom/facebook/katana/RequestsAdapter;Lcom/facebook/katana/RequestsAdapter$FriendRequest;Z)V
invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v6, Lcom/facebook/katana/RequestsAdapter$OnClick;
iget-object v7, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->this$0:Lcom/facebook/katana/RequestsAdapter;
const/4 v8, 0x0
invoke-direct {v6, v7, p0, v8}, Lcom/facebook/katana/RequestsAdapter$OnClick;-><init>(Lcom/facebook/katana/RequestsAdapter;Lcom/facebook/katana/RequestsAdapter$FriendRequest;Z)V
invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
const v7, 0x106000d
invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V
const v6, 0x7f070016
invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V
iget v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mMutualFriends:I
const/4 v7, -0x1
if-ne v6, v7, :cond_9b
const-string v6, ""
invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_82
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
const v7, 0x7f0b009a
invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/ImageView;
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mProfilePicture:Landroid/graphics/Bitmap;
if-eqz v6, :cond_100
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mProfilePicture:Landroid/graphics/Bitmap;
invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:try_end_96
.catchall {:try_start_7 .. :try_end_96} :catchall_98
goto/16 :goto_5
:catchall_98
move-exception v6
monitor-exit p0
throw v6
:cond_9b
:try_start_9b
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->this$0:Lcom/facebook/katana/RequestsAdapter;
#getter for: Lcom/facebook/katana/RequestsAdapter;->mContext:Landroid/content/Context;
invoke-static {v6}, Lcom/facebook/katana/RequestsAdapter;->access$2(Lcom/facebook/katana/RequestsAdapter;)Landroid/content/Context;
move-result-object v6
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f090001
iget v8, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mMutualFriends:I
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
iget v11, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mMutualFriends:I
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_82
:cond_be
const/4 v6, 0x4
invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V
const/4 v6, 0x4
invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V
const/4 v2, -0x1
invoke-static {}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->$SWITCH_TABLE$com$facebook$katana$RequestsAdapter$RequestState()[I
move-result-object v6
iget-object v7, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mState:Lcom/facebook/katana/RequestsAdapter$RequestState;
invoke-virtual {v7}, Lcom/facebook/katana/RequestsAdapter$RequestState;->ordinal()I
move-result v7
aget v6, v6, v7
packed-switch v6, :pswitch_data_108
:goto_d6
invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V
const v6, 0x7f070017
invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_82
:pswitch_e0
const v2, 0x7f080101
goto :goto_d6
:pswitch_e4
const v2, 0x7f080105
goto :goto_d6
:pswitch_e8
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
const v7, 0x7f070015
invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V
const v2, 0x7f080100
goto :goto_d6
:pswitch_f4
iget-object v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
const v7, 0x7f070015
invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V
const v2, 0x7f080104
goto :goto_d6
:cond_100
const v6, 0x7f0200b3
invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V
:try_end_106
.catchall {:try_start_9b .. :try_end_106} :catchall_98
goto/16 :goto_5
:pswitch_data_108
.packed-switch 0x2
:pswitch_e0
:pswitch_e4
:pswitch_e8
:pswitch_f4
.end packed-switch
.end method