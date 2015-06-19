.class final Lcom/bbm/ui/c/es;
.super Ljava/lang/Object;
.source "OwnProfileDetailsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/c/ej;
.method constructor <init>(Lcom/bbm/ui/c/ej;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/es;->a:Lcom/bbm/ui/c/ej;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/es; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "copyPinButton Clicked"
const-class v1, Lcom/bbm/ui/c/ej;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
const-string v0, "simple text"
iget-object v1, p0, Lcom/bbm/ui/c/es;->a:Lcom/bbm/ui/c/ej;
invoke-static {v1}, Lcom/bbm/ui/c/ej;->m(Lcom/bbm/ui/c/ej;)Ljava/lang/String;
move-result-object v1
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/es;->a:Lcom/bbm/ui/c/ej;
invoke-virtual {v1}, Lcom/bbm/ui/c/ej;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-static {v1, v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Landroid/content/ClipData;)V
iget-object v0, p0, Lcom/bbm/ui/c/es;->a:Lcom/bbm/ui/c/ej;
invoke-virtual {v0}, Lcom/bbm/ui/c/ej;->getActivity()Landroid/app/Activity;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/es;->a:Lcom/bbm/ui/c/ej;
const v2, 0x7f0e058d
invoke-virtual {v1, v2}, Lcom/bbm/ui/c/ej;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
const-string v1, " - Lcom/bbm/ui/c/es; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method