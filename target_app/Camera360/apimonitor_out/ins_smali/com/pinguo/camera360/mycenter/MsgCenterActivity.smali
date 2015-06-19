.class public Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
.super Landroid/app/Activity;
.source "MsgCenterActivity.java"
.implements Landroid/view/View$OnClickListener;
.field public static final EXTRA_KEY_REFRESH_AT_START:Ljava/lang/String; = "extra_key_refresh_at_start"
.field public static final IF_FINISH_SELF:I = 0x64
.field private static final REQUEST_CODE_LOGIN_CLOUD:I = 0x3ea
.field private static final TAG:Ljava/lang/String;
.field private mClickedPos:I
.field private mHederRightView:Landroid/view/View;
.field private mMessageList:Ljava/util/List;
.field private mMsgAdapter:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
.field private mNoMsgTipView:Landroid/view/View;
.field private mPb:Landroid/widget/ProgressBar;
.field private mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mRefreshAtStart:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mClickedPos:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mRefreshAtStart:Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->cancelProgressDialog()V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->onMsgListDataOk()V
return-void
.end method
.method static synthetic access$3()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMsgAdapter:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mClickedPos:I
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mHederRightView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mNoMsgTipView:Landroid/view/View;
return-object v0
.end method
.method private cancelProgressDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
:cond_14
return-void
.end method
.method private initView()V
.registers 5
const v2, 0x7f0a034d
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mNoMsgTipView:Landroid/view/View;
const v2, 0x7f0a02de
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0a02e0
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
const v2, 0x7f0a02e1
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f0801dd
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iput-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mHederRightView:Landroid/view/View;
const v2, 0x7f0a02df
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
const v3, 0x7f0801dc
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
const v2, 0x7f0a034c
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
new-instance v2, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;-><init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
iput-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMsgAdapter:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
new-instance v2, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$2;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$2;-><init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v2, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;-><init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
return-void
.end method
.method private onMsgListDataOk()V
.registers 7
const/4 v5, 0x0
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getMsgList()Ljava/util/List;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMsgAdapter:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
invoke-virtual {v2}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->notifyDataSetChanged()V
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_16
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_33
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
if-eqz v2, :cond_28
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-gtz v2, :cond_5d
:cond_28
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mNoMsgTipView:Landroid/view/View;
invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mHederRightView:Landroid/view/View;
invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V
:goto_32
return-void
:cond_33
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/mycenter/PGMessage;
:try_start_39
new-instance v3, Ljava/lang/StringBuilder;
iget-object v4, v1, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, v1, Lcom/pinguo/camera360/mycenter/PGMessage;->text:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v4, v1, Lcom/pinguo/camera360/mycenter/PGMessage;->text:Ljava/lang/String;
invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalMessageShow(Ljava/lang/String;Ljava/lang/String;)V
:try_end_57
.catch Ljava/lang/Exception; {:try_start_39 .. :try_end_57} :catch_58
goto :goto_16
:catch_58
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_16
:cond_5d
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mNoMsgTipView:Landroid/view/View;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mHederRightView:Landroid/view/View;
const/4 v3, 0x1
invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V
goto :goto_32
.end method
.method private showProgressDialog()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
goto :goto_d
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
const/16 v2, 0x3ea
if-ne p1, v2, :cond_10
const/4 v2, -0x1
if-ne p2, v2, :cond_10
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z
move-result v0
:goto_f
return-void
:cond_10
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_f
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/mycenter/MsgCenterActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_24
:goto_7
:pswitch_7
const-string v1, " - Lcom/pinguo/camera360/mycenter/MsgCenterActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->finish()V
goto :goto_7
:pswitch_c
const v1, 0x7f0801db
const v2, 0x7f0801d4
const v3, 0x7f0801d5
new-instance v4, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;-><init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
const/4 v5, 0x0
move-object v0, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
goto :goto_7
:pswitch_data_24
.packed-switch 0x7f0a02de
:pswitch_8
:pswitch_7
:pswitch_7
:pswitch_c
.end packed-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/pinguo/camera360/mycenter/MsgCenterActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v3, 0x7f030090
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->setContentView(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->initView()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v3
invoke-virtual {v3, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
const-string/jumbo v5, "extra_key_refresh_at_start"
invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_2d
const-string/jumbo v3, "true"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_75
move v3, v4
:goto_2b
iput-boolean v3, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mRefreshAtStart:Z
:cond_2d
iget-boolean v3, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mRefreshAtStart:Z
if-eqz v3, :cond_77
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->showProgressDialog()V
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v3
new-instance v5, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$1;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$1;-><init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->update(Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;)V
:goto_40
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v3
invoke-virtual {v3, p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->setContext(Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getMsgList()Ljava/util/List;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_57
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_7b
const-string/jumbo v3, "app://com.pinguo.camera360.mycenter.MsgCenterActivity"
invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v6, "app://com.pinguo.camera360.mycenter.MsgCenterActivity"
invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_74
invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushSimple(I)V
:cond_74
const-string v1, " - Lcom/pinguo/camera360/mycenter/MsgCenterActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_75
const/4 v3, 0x0
goto :goto_2b
:cond_77
invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->onMsgListDataOk()V
goto :goto_40
:cond_7b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/mycenter/PGMessage;
:try_start_81
iget-object v5, v2, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v5
iget-object v6, v2, Lcom/pinguo/camera360/mycenter/PGMessage;->text:Ljava/lang/String;
invoke-static {v5, v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalMessageShow(Ljava/lang/String;Ljava/lang/String;)V
:try_end_8c
.catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8c} :catch_8d
goto :goto_57
:catch_8d
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_57
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/mycenter/MsgCenterActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->setOnUpdateMsgResult(Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V
const-string v1, " - Lcom/pinguo/camera360/mycenter/MsgCenterActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/OpenCameraEvent;)V
.registers 4
const-string/jumbo v0, "PGM"
const-string/jumbo v1, "onEvent OpenCameraEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->finish()V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/mycenter/MsgCenterActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->updateLocalMsgs(Ljava/util/List;)V
const-string v1, " - Lcom/pinguo/camera360/mycenter/MsgCenterActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method