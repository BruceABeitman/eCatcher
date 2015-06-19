.class public Lcom/bbm/setup/WhatsNewActivity;
.super Lcom/bbm/setup/r;
.source "WhatsNewActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/bbm/setup/r;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/bbm/setup/WhatsNewActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
invoke-super {p0, p1}, Lcom/bbm/setup/r;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03005d
invoke-virtual {p0, v0}, Lcom/bbm/setup/WhatsNewActivity;->setContentView(I)V
const v0, 0x7f0a02f9
invoke-virtual {p0, v0}, Lcom/bbm/setup/WhatsNewActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0a02fa
invoke-virtual {p0, v1}, Lcom/bbm/setup/WhatsNewActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f0a02fc
invoke-virtual {p0, v2}, Lcom/bbm/setup/WhatsNewActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
const v3, 0x7f0a02fb
invoke-virtual {p0, v3}, Lcom/bbm/setup/WhatsNewActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
const-string v4, "sans-serif-condensed"
invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
move-result-object v4
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
const-string v0, "sans-serif-thin"
invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
const v0, 0x7f0e0374
invoke-virtual {p0, v0}, Lcom/bbm/setup/WhatsNewActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v0, 0x1
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLinksClickable(Z)V
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v0
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
invoke-static {v3}, Lcom/bbm/util/LinkifyUtil;->a(Landroid/widget/TextView;)V
new-instance v0, Lcom/bbm/setup/am;
invoke-direct {v0, p0}, Lcom/bbm/setup/am;-><init>(Lcom/bbm/setup/WhatsNewActivity;)V
invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/bbm/setup/WhatsNewActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 4
const-string v1, " + Lcom/bbm/setup/WhatsNewActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/setup/r;->onResume()V
invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "whats_new_version"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string v1, " - Lcom/bbm/setup/WhatsNewActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method