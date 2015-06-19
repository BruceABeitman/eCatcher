.class public Lcom/alipay/android/app/widget/Loading;
.super Ljava/lang/Object;
.source "Loading.java"
.field private mContext:Landroid/app/Activity;
.field private mProgress:Landroid/app/ProgressDialog;
.method public constructor <init>(Landroid/app/Activity;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/alipay/android/app/widget/Loading;->mContext:Landroid/app/Activity;
return-void
.end method
.method static synthetic access$0(Lcom/alipay/android/app/widget/Loading;)Landroid/app/ProgressDialog;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
return-object v0
.end method
.method static synthetic access$1(Lcom/alipay/android/app/widget/Loading;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading;->mContext:Landroid/app/Activity;
return-object v0
.end method
.method static synthetic access$2(Lcom/alipay/android/app/widget/Loading;Landroid/app/ProgressDialog;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
return-void
.end method
.method private show(Ljava/lang/CharSequence;)V
.registers 4
new-instance v0, Lcom/alipay/android/app/widget/Loading$1;
invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/widget/Loading$1;-><init>(Lcom/alipay/android/app/widget/Loading;Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/alipay/android/app/widget/Loading;->mContext:Landroid/app/Activity;
invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public dismiss()V
.registers 3
new-instance v0, Lcom/alipay/android/app/widget/Loading$2;
invoke-direct {v0, p0}, Lcom/alipay/android/app/widget/Loading$2;-><init>(Lcom/alipay/android/app/widget/Loading;)V
iget-object v1, p0, Lcom/alipay/android/app/widget/Loading;->mContext:Landroid/app/Activity;
invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public isShowing()Z
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading;->mProgress:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public show()V
.registers 2
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_processing()I
move-result v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/Loading;->show(I)V
return-void
.end method
.method public show(I)V
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/widget/Loading;->mContext:Landroid/app/Activity;
invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-direct {p0, v0}, Lcom/alipay/android/app/widget/Loading;->show(Ljava/lang/CharSequence;)V
return-void
.end method