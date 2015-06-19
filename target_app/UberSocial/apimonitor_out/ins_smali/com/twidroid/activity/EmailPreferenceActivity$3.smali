.class  Lcom/twidroid/activity/EmailPreferenceActivity$3;
.super Ljava/lang/Thread;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/EmailPreferenceActivity;
.method constructor <init>(Lcom/twidroid/activity/EmailPreferenceActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/EmailPreferenceActivity$3;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity$3;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
iget-object v0, v0, Lcom/twidroid/activity/EmailPreferenceActivity;->a:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->bU()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/EmailPreferenceActivity$3;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
iget-object v1, v1, Lcom/twidroid/activity/EmailPreferenceActivity;->a:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bT()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/EmailPreferenceActivity$3;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
iget-object v2, v2, Lcom/twidroid/activity/EmailPreferenceActivity;->a:Lcom/twidroid/d/v;
invoke-virtual {v2}, Lcom/twidroid/d/v;->bV()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/activity/EmailPreferenceActivity$3;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
iget-object v3, v3, Lcom/twidroid/activity/EmailPreferenceActivity;->a:Lcom/twidroid/d/v;
invoke-virtual {v3}, Lcom/twidroid/d/v;->bW()I
move-result v3
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
move-result v0
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity$3;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
invoke-static {v0}, Lcom/twidroid/activity/EmailPreferenceActivity;->b(Lcom/twidroid/activity/EmailPreferenceActivity;)V
:goto_2b
return-void
:cond_2c
iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity$3;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
invoke-static {v0}, Lcom/twidroid/activity/EmailPreferenceActivity;->c(Lcom/twidroid/activity/EmailPreferenceActivity;)V
goto :goto_2b
.end method