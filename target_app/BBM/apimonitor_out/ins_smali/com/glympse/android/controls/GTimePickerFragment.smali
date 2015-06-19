.class public Lcom/glympse/android/controls/GTimePickerFragment;
.super Landroid/support/v4/app/d;
.source "GTimePickerFragment.java"
.field private _buttonConfirm:Landroid/widget/Button;
.field private _confirmed:Z
.field private _dismissOnConfirm:Z
.field private _dismissOnUserAction:Z
.field private _duration:I
.field private _durationModeValue:I
.field private _expireTime:J
.field private _modifyModeValue:J
.field private _onCancelledListener:Lcom/glympse/android/controls/GTimePickerFragment$OnCancelledListener;
.field private _onConfirmedListener:Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;
.field private _onDurationChangedListener:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
.field private _onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
.field private _onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
.field private _textViewExpires:Landroid/widget/TextView;
.field private _timeProvider:Lcom/glympse/android/controls/GTimerView$TimeProvider;
.field private _timerView:Lcom/glympse/android/controls/GTimerView;
.method public constructor <init>()V
.registers 5
const-wide/16 v2, -0x1
const/4 v1, 0x1
const/4 v0, -0x1
invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V
iput v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_durationModeValue:I
iput-wide v2, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_modifyModeValue:J
iput v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_duration:I
iput-wide v2, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_expireTime:J
sget v0, Lcom/glympse/android/controls/R$style;->Theme_Glympse_Dialog:I
invoke-virtual {p0, v1, v0}, Lcom/glympse/android/controls/GTimePickerFragment;->setStyle(II)V
invoke-virtual {p0, v1}, Lcom/glympse/android/controls/GTimePickerFragment;->setRetainInstance(Z)V
return-void
.end method
.method static synthetic access$000(Lcom/glympse/android/controls/GTimePickerFragment;)I
.registers 2
iget v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_durationModeValue:I
return v0
.end method
.method static synthetic access$002(Lcom/glympse/android/controls/GTimePickerFragment;I)I
.registers 2
iput p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_durationModeValue:I
return p1
.end method
.method static synthetic access$1000(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;
.registers 2
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onConfirmedListener:Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;
return-object v0
.end method
.method static synthetic access$102(Lcom/glympse/android/controls/GTimePickerFragment;I)I
.registers 2
iput p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_duration:I
return p1
.end method
.method static synthetic access$1100(Lcom/glympse/android/controls/GTimePickerFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_dismissOnConfirm:Z
return v0
.end method
.method static synthetic access$200(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
.registers 2
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onDurationChangedListener:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
return-object v0
.end method
.method static synthetic access$300(Lcom/glympse/android/controls/GTimePickerFragment;)J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_modifyModeValue:J
return-wide v0
.end method
.method static synthetic access$302(Lcom/glympse/android/controls/GTimePickerFragment;J)J
.registers 3
iput-wide p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_modifyModeValue:J
return-wide p1
.end method
.method static synthetic access$402(Lcom/glympse/android/controls/GTimePickerFragment;J)J
.registers 3
iput-wide p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_expireTime:J
return-wide p1
.end method
.method static synthetic access$500(Lcom/glympse/android/controls/GTimePickerFragment;)V
.registers 1
invoke-direct {p0}, Lcom/glympse/android/controls/GTimePickerFragment;->setExpireTimeText()V
return-void
.end method
.method static synthetic access$600(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
.registers 2
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
return-object v0
.end method
.method static synthetic access$700(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
.registers 2
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
return-object v0
.end method
.method static synthetic access$800(Lcom/glympse/android/controls/GTimePickerFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_dismissOnUserAction:Z
return v0
.end method
.method static synthetic access$902(Lcom/glympse/android/controls/GTimePickerFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_confirmed:Z
return p1
.end method
.method private setExpireTimeText()V
.registers 10
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_textViewExpires:Landroid/widget/TextView;
if-eqz v0, :cond_73
iget-wide v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_expireTime:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_7a
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimePickerFragment;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/glympse/android/controls/R$string;->glympse_time_picker_expires_at:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
const-string v1, "{0}"
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_74
iget-object v2, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_textViewExpires:Landroid/widget/TextView;
new-instance v3, Lcom/glympse/android/controls/FormattedTextBuilder;
invoke-direct {v3}, Lcom/glympse/android/controls/FormattedTextBuilder;-><init>()V
const/4 v4, 0x0
invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/glympse/android/controls/FormattedTextBuilder;->append(Ljava/lang/String;)Lcom/glympse/android/controls/FormattedTextBuilder;
move-result-object v3
invoke-virtual {v3}, Lcom/glympse/android/controls/FormattedTextBuilder;->beginBold()Lcom/glympse/android/controls/FormattedTextBuilder;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, " "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimePickerFragment;->getActivity()Landroid/support/v4/app/h;
move-result-object v5
invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
move-result-object v5
new-instance v6, Ljava/util/Date;
iget-wide v7, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_expireTime:J
invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/glympse/android/controls/FormattedTextBuilder;->append(Ljava/lang/String;)Lcom/glympse/android/controls/FormattedTextBuilder;
move-result-object v3
invoke-virtual {v3}, Lcom/glympse/android/controls/FormattedTextBuilder;->endBold()Lcom/glympse/android/controls/FormattedTextBuilder;
move-result-object v3
add-int/lit8 v1, v1, 0x3
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/glympse/android/controls/FormattedTextBuilder;->append(Ljava/lang/String;)Lcom/glympse/android/controls/FormattedTextBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/glympse/android/controls/FormattedTextBuilder;->toSpanned()Landroid/text/Spanned;
move-result-object v0
sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;
invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
:cond_73
:goto_73
return-void
:cond_74
iget-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_textViewExpires:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_73
:cond_7a
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_textViewExpires:Landroid/widget/TextView;
sget v1, Lcom/glympse/android/controls/R$string;->glympse_time_picker_no_expire_time:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
goto :goto_73
.end method
.method private updateConfirmButton()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_buttonConfirm:Landroid/widget/Button;
if-eqz v0, :cond_12
iget-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_buttonConfirm:Landroid/widget/Button;
iget-boolean v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_dismissOnConfirm:Z
if-nez v0, :cond_e
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onConfirmedListener:Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;
if-eqz v0, :cond_13
:cond_e
const/4 v0, 0x0
:goto_f
invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V
:cond_12
return-void
:cond_13
const/16 v0, 0x8
goto :goto_f
.end method
.method public getDuration()I
.registers 2
iget v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_duration:I
return v0
.end method
.method public getExpireTime()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_expireTime:J
return-wide v0
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 10
sget v0, Lcom/glympse/android/controls/R$layout;->glympse_time_picker_fragment:I
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
sget v0, Lcom/glympse/android/controls/R$id;->glympse_text_expires:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_textViewExpires:Landroid/widget/TextView;
sget v0, Lcom/glympse/android/controls/R$id;->glympse_timer:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView;
iput-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
sget v0, Lcom/glympse/android/controls/R$id;->glympse_button_confirm:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_buttonConfirm:Landroid/widget/Button;
invoke-direct {p0}, Lcom/glympse/android/controls/GTimePickerFragment;->updateConfirmButton()V
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
if-nez v0, :cond_34
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "GTimePickerFragment requires that glympse_time_picker_fragment layout contains glympse_timer."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_34
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
new-instance v2, Lcom/glympse/android/controls/GTimePickerFragment$1;
invoke-direct {v2, p0}, Lcom/glympse/android/controls/GTimePickerFragment$1;-><init>(Lcom/glympse/android/controls/GTimePickerFragment;)V
invoke-virtual {v0, v2}, Lcom/glympse/android/controls/GTimerView;->setOnDurationChangedListener(Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
new-instance v2, Lcom/glympse/android/controls/GTimePickerFragment$2;
invoke-direct {v2, p0}, Lcom/glympse/android/controls/GTimePickerFragment$2;-><init>(Lcom/glympse/android/controls/GTimePickerFragment;)V
invoke-virtual {v0, v2}, Lcom/glympse/android/controls/GTimerView;->setOnExpireTimeChangedListener(Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
new-instance v2, Lcom/glympse/android/controls/GTimePickerFragment$3;
invoke-direct {v2, p0}, Lcom/glympse/android/controls/GTimePickerFragment$3;-><init>(Lcom/glympse/android/controls/GTimePickerFragment;)V
invoke-virtual {v0, v2}, Lcom/glympse/android/controls/GTimerView;->setOnUserActionCompleteListener(Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timeProvider:Lcom/glympse/android/controls/GTimerView$TimeProvider;
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
iget-object v2, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timeProvider:Lcom/glympse/android/controls/GTimerView$TimeProvider;
invoke-virtual {v0, v2}, Lcom/glympse/android/controls/GTimerView;->setTimeProvider(Lcom/glympse/android/controls/GTimerView$TimeProvider;)V
:cond_5d
const/4 v0, -0x1
iget v2, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_durationModeValue:I
if-eq v0, v2, :cond_89
iget v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_durationModeValue:I
invoke-virtual {p0, v0}, Lcom/glympse/android/controls/GTimePickerFragment;->setDurationMode(I)V
:cond_67
:goto_67
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {v0}, Lcom/glympse/android/controls/GTimerView;->getDuration()I
move-result v0
iput v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_duration:I
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {v0}, Lcom/glympse/android/controls/GTimerView;->getExpireTime()J
move-result-wide v2
iput-wide v2, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_expireTime:J
invoke-direct {p0}, Lcom/glympse/android/controls/GTimePickerFragment;->setExpireTimeText()V
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_buttonConfirm:Landroid/widget/Button;
if-eqz v0, :cond_88
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_buttonConfirm:Landroid/widget/Button;
new-instance v2, Lcom/glympse/android/controls/GTimePickerFragment$4;
invoke-direct {v2, p0}, Lcom/glympse/android/controls/GTimePickerFragment$4;-><init>(Lcom/glympse/android/controls/GTimePickerFragment;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_88
return-object v1
:cond_89
const-wide/16 v2, -0x1
iget-wide v4, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_modifyModeValue:J
cmp-long v0, v2, v4
if-eqz v0, :cond_67
iget-wide v2, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_modifyModeValue:J
invoke-virtual {p0, v2, v3}, Lcom/glympse/android/controls/GTimePickerFragment;->setModifyMode(J)V
goto :goto_67
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/glympse/android/controls/GTimePickerFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-super {p0}, Landroid/support/v4/app/d;->onDestroy()V
iget-boolean v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_confirmed:Z
if-nez v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onCancelledListener:Lcom/glympse/android/controls/GTimePickerFragment$OnCancelledListener;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onCancelledListener:Lcom/glympse/android/controls/GTimePickerFragment$OnCancelledListener;
invoke-interface {v0, p0}, Lcom/glympse/android/controls/GTimePickerFragment$OnCancelledListener;->onCancelled(Lcom/glympse/android/controls/GTimePickerFragment;)V
:cond_11
iput-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onConfirmedListener:Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;
iput-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onCancelledListener:Lcom/glympse/android/controls/GTimePickerFragment$OnCancelledListener;
iput-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onDurationChangedListener:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
iput-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
iput-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
iput-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timeProvider:Lcom/glympse/android/controls/GTimerView$TimeProvider;
const-string v1, " - Lcom/glympse/android/controls/GTimePickerFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroyView()V
.registers 3
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimePickerFragment;->getDialog()Landroid/app/Dialog;
move-result-object v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimePickerFragment;->getRetainInstance()Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimePickerFragment;->getDialog()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V
:cond_14
invoke-super {p0}, Landroid/support/v4/app/d;->onDestroyView()V
iput-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
iput-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_textViewExpires:Landroid/widget/TextView;
iput-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_buttonConfirm:Landroid/widget/Button;
return-void
.end method
.method public setDismissOnConfirm(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_dismissOnConfirm:Z
invoke-direct {p0}, Lcom/glympse/android/controls/GTimePickerFragment;->updateConfirmButton()V
return-void
.end method
.method public setDismissOnUserAction(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_dismissOnUserAction:Z
return-void
.end method
.method public setDurationMode(I)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {v0, p1}, Lcom/glympse/android/controls/GTimerView;->setDurationMode(I)V
:cond_9
iput p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_durationModeValue:I
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_modifyModeValue:J
return-void
.end method
.method public setModifyMode(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/controls/GTimerView;->setModifyMode(J)V
:cond_9
iput-wide p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_modifyModeValue:J
const/4 v0, -0x1
iput v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_durationModeValue:I
return-void
.end method
.method public setOnCancelledListener(Lcom/glympse/android/controls/GTimePickerFragment$OnCancelledListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onCancelledListener:Lcom/glympse/android/controls/GTimePickerFragment$OnCancelledListener;
return-void
.end method
.method public setOnConfirmedListener(Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onConfirmedListener:Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;
invoke-direct {p0}, Lcom/glympse/android/controls/GTimePickerFragment;->updateConfirmButton()V
return-void
.end method
.method public setOnDurationChangedListener(Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onDurationChangedListener:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
return-void
.end method
.method public setOnExpireTimeChangedListener(Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
return-void
.end method
.method public setOnUserActionCompleteListener(Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
return-void
.end method
.method public setTimeProvider(Lcom/glympse/android/controls/GTimerView$TimeProvider;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timeProvider:Lcom/glympse/android/controls/GTimerView$TimeProvider;
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment;->_timerView:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {v0, p1}, Lcom/glympse/android/controls/GTimerView;->setTimeProvider(Lcom/glympse/android/controls/GTimerView$TimeProvider;)V
:cond_b
return-void
.end method