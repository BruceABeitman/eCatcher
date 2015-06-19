.class public Lcom/facebook/katana/CreateEditAlbumActivity;
.super Lcom/facebook/katana/FacebookActivity;
.source "CreateEditAlbumActivity.java"
.implements Landroid/view/View$OnClickListener;
.field private static final PROGRESS_CREATE_DIALOG_ID:I = 0x1
.field private static final PROGRESS_EDIT_DIALOG_ID:I = 0x2
.field private static final QUIT_DIALOG_ID:I = 0x3
.field private mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mCreateReqId:Ljava/lang/String;
.field private mEditReqId:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/FacebookActivity;-><init>()V
return-void
.end method
.method static synthetic access$8(Lcom/facebook/katana/CreateEditAlbumActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mCreateReqId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$9(Lcom/facebook/katana/CreateEditAlbumActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mEditReqId:Ljava/lang/String;
return-void
.end method
.method private checkChanges()Z
.registers 3
invoke-virtual {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.intent.action.EDIT"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15
invoke-direct {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->checkEditChanges()Z
move-result v0
:goto_14
return v0
:cond_15
invoke-direct {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->checkCreateChanges()Z
move-result v0
goto :goto_14
.end method
.method private checkCreateChanges()Z
.registers 6
const/4 v4, 0x1
const v3, 0x7f0b0003
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v2
invoke-interface {v2}, Ljava/lang/CharSequence;->length()I
move-result v3
if-lez v3, :cond_16
move v3, v4
:goto_15
return v3
:cond_16
const v3, 0x7f0b0007
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v3
if-lez v3, :cond_2b
move v3, v4
goto :goto_15
:cond_2b
const v3, 0x7f0b0009
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
move-result v3
if-lez v3, :cond_40
move v3, v4
goto :goto_15
:cond_40
const/4 v3, 0x0
goto :goto_15
.end method
.method private checkEditChanges()Z
.registers 9
const/4 v6, 0x1
const-string v7, ""
const v5, 0x7f0b0003
invoke-virtual {p0, v5}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v5
invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
iget-object v5, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookAlbum;->getName()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_2a
iget-object v5, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookAlbum;->getName()Ljava/lang/String;
move-result-object v5
:goto_22
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_2e
move v5, v6
:goto_29
return v5
:cond_2a
const-string v5, ""
move-object v5, v7
goto :goto_22
:cond_2e
const v5, 0x7f0b0009
invoke-virtual {p0, v5}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v5
invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
iget-object v5, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookAlbum;->getLocation()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_55
iget-object v5, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookAlbum;->getLocation()Ljava/lang/String;
move-result-object v5
:goto_4d
invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_59
move v5, v6
goto :goto_29
:cond_55
const-string v5, ""
move-object v5, v7
goto :goto_4d
:cond_59
const v5, 0x7f0b0007
invoke-virtual {p0, v5}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v5
invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
iget-object v5, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookAlbum;->getDescription()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_80
iget-object v5, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookAlbum;->getDescription()Ljava/lang/String;
move-result-object v5
:goto_78
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_84
move v5, v6
goto :goto_29
:cond_80
const-string v5, ""
move-object v5, v7
goto :goto_78
:cond_84
const v5, 0x7f0b0010
invoke-virtual {p0, v5}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/Spinner;
invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v4
invoke-static {v4}, Lcom/facebook/katana/CreateEditAlbumActivity;->visibilityFromSpinnerPosition(I)Ljava/lang/String;
move-result-object v3
iget-object v5, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookAlbum;->getVisibility()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_a3
move v5, v6
goto :goto_29
:cond_a3
const/4 v5, 0x0
goto :goto_29
.end method
.method private createAlbum()V
.registers 9
const/4 v7, 0x1
const v0, 0x7f0b0003
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_2b
const v0, 0x7f080031
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_2a
return-void
:cond_2b
const v0, 0x7f0b0009
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_47
const/4 v3, 0x0
:cond_47
const v0, 0x7f0b0007
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_63
const/4 v4, 0x0
:cond_63
const v0, 0x7f0b0010
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Spinner;
invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v6
invoke-static {v6}, Lcom/facebook/katana/CreateEditAlbumActivity;->visibilityFromSpinnerPosition(I)Ljava/lang/String;
move-result-object v5
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
move-object v1, p0
invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->photoCreateAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mCreateReqId:Ljava/lang/String;
invoke-virtual {p0, v7}, Lcom/facebook/katana/CreateEditAlbumActivity;->showDialog(I)V
goto :goto_2a
.end method
.method private onBackKeyPressed()Z
.registers 3
const/4 v1, 0x1
invoke-direct {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->checkChanges()Z
move-result v0
if-eqz v0, :cond_d
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->showDialog(I)V
move v0, v1
:goto_c
return v0
:cond_d
invoke-virtual {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->finish()V
move v0, v1
goto :goto_c
.end method
.method private static spinnerPositionFromString(Ljava/lang/String;)I
.registers 4
const-string v0, "everyone"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const-string v0, "networks"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x1
goto :goto_9
:cond_14
const-string v0, "friends-of-friends"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
const/4 v0, 0x2
goto :goto_9
:cond_1e
const-string v0, "friends"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
const/4 v0, 0x3
goto :goto_9
:cond_28
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid visibility: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private updateAlbum()V
.registers 9
invoke-direct {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->checkEditChanges()Z
move-result v0
if-nez v0, :cond_12
const v0, 0x7f080033
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
:goto_11
return-void
:cond_12
const v0, 0x7f0b0003
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_3d
const v0, 0x7f080031
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_11
:cond_3d
const v0, 0x7f0b0009
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_59
const/4 v4, 0x0
:cond_59
const v0, 0x7f0b0007
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_75
const/4 v5, 0x0
:cond_75
const v0, 0x7f0b0010
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Spinner;
invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v7
invoke-static {v7}, Lcom/facebook/katana/CreateEditAlbumActivity;->visibilityFromSpinnerPosition(I)Ljava/lang/String;
move-result-object v6
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getAlbumId()Ljava/lang/String;
move-result-object v2
move-object v1, p0
invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->photoEditAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mEditReqId:Ljava/lang/String;
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->showDialog(I)V
goto/16 :goto_11
.end method
.method private static visibilityFromSpinnerPosition(I)Ljava/lang/String;
.registers 4
packed-switch p0, :pswitch_data_24
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid position: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_18
const-string v0, "everyone"
:goto_1a
return-object v0
:pswitch_1b
const-string v0, "networks"
goto :goto_1a
:pswitch_1e
const-string v0, "friends-of-friends"
goto :goto_1a
:pswitch_21
const-string v0, "friends"
goto :goto_1a
:pswitch_data_24
.packed-switch 0x0
:pswitch_18
:pswitch_1b
:pswitch_1e
:pswitch_21
.end packed-switch
.end method
.method public bridge synthetic facebookOnBackPressed()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->facebookOnBackPressed()Z
move-result v0
return v0
.end method
.method public bridge synthetic finish()V
.registers 1
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->finish()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/CreateEditAlbumActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_30
:goto_7
const-string v1, " - Lcom/facebook/katana/CreateEditAlbumActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-virtual {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.intent.action.EDIT"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
invoke-direct {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->updateAlbum()V
goto :goto_7
:cond_1c
invoke-direct {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->createAlbum()V
goto :goto_7
:pswitch_20
invoke-direct {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->checkChanges()Z
move-result v0
if-eqz v0, :cond_2b
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->showDialog(I)V
goto :goto_7
:cond_2b
invoke-virtual {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->finish()V
goto :goto_7
nop
:pswitch_data_30
.packed-switch 0x7f0b0011
:pswitch_8
:pswitch_20
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/facebook/katana/CreateEditAlbumActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v7, 0x7f0b0026
const v6, 0x7f0b0025
const v5, 0x7f0b0011
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreate(Landroid/os/Bundle;)V
const v3, 0x7f030004
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->setContentView(I)V
new-instance v0, Landroid/widget/ArrayAdapter;
const v3, 0x1090008
invoke-direct {v0, p0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V
const v3, 0x1090009
invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
const v3, 0x7f080036
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
const v3, 0x7f080038
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
const v3, 0x7f080037
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
const v3, 0x7f080039
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
const v3, 0x7f0b0010
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Spinner;
invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
const v3, 0x7f080034
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V
invoke-virtual {p0, v5}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v3, 0x7f0b0012
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v3
const-string v4, "android.intent.action.EDIT"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_108
invoke-virtual {p0, v6}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
const v4, 0x7f08002e
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {p0, v7}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
const v4, 0x7f08002c
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {p0, v5}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/Button;
const v4, 0x7f08002a
invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V
invoke-virtual {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v3
invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v3
const/4 v4, 0x2
invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {p0, v1}, Lcom/facebook/katana/service/api/FacebookAlbum;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookAlbum;
move-result-object v3
iput-object v3, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
const v3, 0x7f0b0003
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iget-object v4, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v3, 0x7f0b0009
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iget-object v4, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getLocation()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v3, 0x7f0b0007
invoke-virtual {p0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iget-object v4, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getDescription()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookAlbum;->getVisibility()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->spinnerPositionFromString(Ljava/lang/String;)I
move-result v3
invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V
:goto_ff
new-instance v3, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;
const/4 v4, 0x0
invoke-direct {v3, p0, v4}, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;-><init>(Lcom/facebook/katana/CreateEditAlbumActivity;Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;)V
iput-object v3, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
const-string v1, " - Lcom/facebook/katana/CreateEditAlbumActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_108
invoke-virtual {p0, v6}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
const v4, 0x7f080027
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {p0, v7}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
const v4, 0x7f080025
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {p0, v5}, Lcom/facebook/katana/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/Button;
const v4, 0x7f080023
invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V
goto :goto_ff
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 14
const/4 v7, 0x0
const/4 v9, 0x1
const/4 v1, 0x0
packed-switch p1, :pswitch_data_7c
move-object v0, v7
:goto_7
return-object v0
:pswitch_8
new-instance v10, Landroid/app/ProgressDialog;
invoke-direct {v10, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v0, 0x7f080028
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v10, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v0, v10
goto :goto_7
:pswitch_22
new-instance v10, Landroid/app/ProgressDialog;
invoke-direct {v10, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v0, 0x7f08002f
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v10, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v0, v10
goto :goto_7
:pswitch_3c
new-instance v5, Lcom/facebook/katana/CreateEditAlbumActivity$1;
invoke-direct {v5, p0}, Lcom/facebook/katana/CreateEditAlbumActivity$1;-><init>(Lcom/facebook/katana/CreateEditAlbumActivity;)V
invoke-virtual {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.intent.action.EDIT"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_78
const v11, 0x7f08000f
:goto_54
invoke-virtual {p0, v11}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const v2, 0x1080027
const v0, 0x7f080035
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v3
const v0, 0x7f08019c
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v4
const v0, 0x7f0800b1
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v6
move-object v0, p0
move-object v8, v7
invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;
move-result-object v10
move-object v0, v10
goto :goto_7
:cond_78
const v11, 0x7f080009
goto :goto_54
:pswitch_data_7c
.packed-switch 0x1
:pswitch_8
:pswitch_22
:pswitch_3c
.end packed-switch
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x4
if-ne p1, v0, :cond_1a
invoke-static {}, Lcom/facebook/katana/util/PlatformUtils;->isEclairOrLater()Z
move-result v0
if-eqz v0, :cond_12
invoke-static {p1, p2}, Lcom/facebook/katana/util/EclairKeyHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_1a
move v0, v1
:goto_11
return v0
:cond_12
invoke-direct {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->onBackKeyPressed()Z
move-result v0
if-eqz v0, :cond_1a
move v0, v1
goto :goto_11
:cond_1a
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_11
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x4
if-ne p1, v0, :cond_17
invoke-static {}, Lcom/facebook/katana/util/PlatformUtils;->isEclairOrLater()Z
move-result v0
if-eqz v0, :cond_17
invoke-static {p1, p2}, Lcom/facebook/katana/util/EclairKeyHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_17
invoke-direct {p0}, Lcom/facebook/katana/CreateEditAlbumActivity;->onBackKeyPressed()Z
move-result v0
if-eqz v0, :cond_17
const/4 v0, 0x1
:goto_16
return v0
:cond_17
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_16
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/CreateEditAlbumActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onPause()V
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/CreateEditAlbumActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 4
const-string v1, " + Lcom/facebook/katana/CreateEditAlbumActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_12
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_11
const-string v1, " - Lcom/facebook/katana/CreateEditAlbumActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_12
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mCreateReqId:Ljava/lang/String;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mCreateReqId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->removeDialog(I)V
iput-object v2, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mCreateReqId:Ljava/lang/String;
:cond_26
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mEditReqId:Ljava/lang/String;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mEditReqId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3a
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->removeDialog(I)V
iput-object v2, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mEditReqId:Ljava/lang/String;
:cond_3a
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/CreateEditAlbumActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
goto :goto_11
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