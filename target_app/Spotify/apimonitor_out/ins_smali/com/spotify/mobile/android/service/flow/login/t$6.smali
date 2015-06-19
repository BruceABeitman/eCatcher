.class final Lcom/spotify/mobile/android/service/flow/login/t$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$6;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/service/flow/login/t$6; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p2, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$6;->a:Lcom/spotify/mobile/android/service/flow/login/t;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$6;->a:Lcom/spotify/mobile/android/service/flow/login/t;
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$6;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->w(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/ae;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/spotify/mobile/android/service/flow/login/ae;)Lcom/spotify/mobile/android/service/flow/login/ad;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/spotify/mobile/android/service/flow/login/ad;)Lcom/spotify/mobile/android/service/flow/login/ad;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$6;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->m(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/AutoCompleteTextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V
:cond_1c
:goto_1c
const-string v1, " - Lcom/spotify/mobile/android/service/flow/login/t$6; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$6;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->m(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/AutoCompleteTextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-eqz v0, :cond_1c
invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I
move-result v0
if-lez v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$6;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->m(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/AutoCompleteTextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V
goto :goto_1c
.end method